contract main {




// =====================  Runtime code  =====================


#
#  - reflect(uint256 arg1)
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#
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
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address _burnPoolAddress; offset 8
address fundAddress;
mapping of uint8 stor14;
uint256 _taxFee;
uint256 _burnFee;
uint256 _fundFee;

function name() payable {
    return name[0 len name.length]
}

function totalFees() payable {
    return totalFees
}

function totalSupply() payable {
    return totalSupply
}

function _burnPool() payable {
    return _burnPoolAddress
}

function decimals() payable {
    return decimals
}

function _taxFee() payable {
    return _taxFee
}

function totalBurn() payable {
    return totalBurn
}

function owner() payable {
    return owner
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function _burnFee() payable {
    return _burnFee
}

function isExcluded(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor4[address(arg1)])
}

function _fundFee() payable {
    return _fundFee
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function fundAddress() payable {
    return fundAddress
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

function setFundAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    fundAddress = arg1
}

function includeInFee(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor14[address(arg1)] = 0
}

function excludeFromFee(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor14[address(arg1)] = 1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
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
        revert with 0, 'Ownable: caller is not the owner'
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
                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
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
                    0x6e45524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                    mem[165 len 27],
                    mem[219 len 5]
    if not msg.sender:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not arg1:
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if allowance[address(msg.sender)][address(arg1)] + arg2 < allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function tokenFromReflection(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if arg1 > stor7:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x73416d6f756e74206d757374206265206c657373207468616e20746f74616c207265666c656374696f6e,
                    mem[206 len 22]
    idx = 0
    s = totalSupply
    t = stor7
    while idx < stor5.length:
        mem[0] = stor5[idx]
        mem[32] = 1
        if stor1[stor5[idx]] > t:
            _118 = mem[64]
            mem[64] = mem[64] + 64
            mem[_118] = 26
            mem[_118 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                _123 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_123 + idx + 68] = mem[_118 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_123 + 68] = mem[_123 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _123 + -mem[64] + 100
            require totalSupply
            _151 = mem[64]
            mem[64] = mem[64] + 64
            mem[_151] = 26
            mem[_151 + 32] = 'SafeMath: division by zero'
            if stor7 / totalSupply > 0:
                require stor7 / totalSupply
                return (arg1 / stor7 / totalSupply)
            _163 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_163 + idx + 68] = mem[_151 + idx + 32]
                idx = idx + 32
                continue 
            mem[_163 + 68] = mem[_163 + 74 len 26]
            revert with memory
              from mem[64]
               len _163 + -mem[64] + 100
        require idx < stor5.length
        mem[0] = stor5[idx]
        mem[32] = 2
        if stor2[stor5[idx]] > s:
            _126 = mem[64]
            mem[64] = mem[64] + 64
            mem[_126] = 26
            mem[_126 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                _133 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_133 + idx + 68] = mem[_126 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_133 + 68] = mem[_133 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _133 + -mem[64] + 100
            require totalSupply
            _169 = mem[64]
            mem[64] = mem[64] + 64
            mem[_169] = 26
            mem[_169 + 32] = 'SafeMath: division by zero'
            if stor7 / totalSupply > 0:
                require stor7 / totalSupply
                return (arg1 / stor7 / totalSupply)
            _176 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_176 + idx + 68] = mem[_169 + idx + 32]
                idx = idx + 32
                continue 
            mem[_176 + 68] = mem[_176 + 74 len 26]
            revert with memory
              from mem[64]
               len _176 + -mem[64] + 100
        require idx < stor5.length
        mem[0] = stor5[idx]
        mem[32] = 1
        _122 = mem[64]
        mem[64] = mem[64] + 64
        mem[_122] = 30
        mem[_122 + 32] = 'SafeMath: subtraction overflow'
        if stor1[stor5[idx]] > t:
            _127 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_127 + idx + 68] = mem[_122 + idx + 32]
                idx = idx + 32
                continue 
            mem[_127 + 68] = mem[_127 + 70 len 30]
            revert with memory
              from mem[64]
               len _127 + -mem[64] + 100
        require idx < stor5.length
        mem[0] = stor5[idx]
        mem[32] = 2
        _152 = mem[64]
        mem[64] = mem[64] + 64
        mem[_152] = 30
        mem[_152 + 32] = 'SafeMath: subtraction overflow'
        if stor2[stor5[idx]] <= s:
            idx = idx + 1
            s = s - stor2[stor5[idx]]
            t = t - stor1[stor5[idx]]
            continue 
        _166 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 30
        idx = 0
        while idx < 30:
            mem[_166 + idx + 68] = mem[_152 + idx + 32]
            idx = idx + 32
            continue 
        mem[_166 + 68] = mem[_166 + 70 len 30]
        revert with memory
          from mem[64]
           len _166 + -mem[64] + 100
    if totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero'
    if totalSupply:
        if t >= stor7 / totalSupply:
            if s <= 0:
                revert with 0, 'SafeMath: division by zero'
            if s:
                if t / s <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if t / s:
                    return (arg1 / t / s)
        else:
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            if totalSupply:
                if stor7 / totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if stor7 / totalSupply:
                    return (arg1 / stor7 / totalSupply)
    revert
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
                    42,
                    0x73416d6f756e74206d757374206265206c657373207468616e20746f74616c207265666c656374696f6e,
                    mem[206 len 22]
    idx = 0
    s = totalSupply
    t = stor7
    while idx < stor5.length:
        mem[0] = stor5[idx]
        mem[32] = 1
        if stor1[stor5[idx]] > t:
            _123 = mem[64]
            mem[64] = mem[64] + 64
            mem[_123] = 26
            mem[_123 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                _128 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_128 + idx + 68] = mem[_123 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_128 + 68] = mem[_128 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _128 + -mem[64] + 100
            require totalSupply
            _156 = mem[64]
            mem[64] = mem[64] + 64
            mem[_156] = 26
            mem[_156 + 32] = 'SafeMath: division by zero'
            if stor7 / totalSupply > 0:
                require stor7 / totalSupply
                return (stor1[address(arg1)] / stor7 / totalSupply)
            _168 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_168 + idx + 68] = mem[_156 + idx + 32]
                idx = idx + 32
                continue 
            mem[_168 + 68] = mem[_168 + 74 len 26]
            revert with memory
              from mem[64]
               len _168 + -mem[64] + 100
        require idx < stor5.length
        mem[0] = stor5[idx]
        mem[32] = 2
        if stor2[stor5[idx]] > s:
            _131 = mem[64]
            mem[64] = mem[64] + 64
            mem[_131] = 26
            mem[_131 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                _138 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_138 + idx + 68] = mem[_131 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_138 + 68] = mem[_138 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _138 + -mem[64] + 100
            require totalSupply
            _174 = mem[64]
            mem[64] = mem[64] + 64
            mem[_174] = 26
            mem[_174 + 32] = 'SafeMath: division by zero'
            if stor7 / totalSupply > 0:
                require stor7 / totalSupply
                return (stor1[address(arg1)] / stor7 / totalSupply)
            _181 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_181 + idx + 68] = mem[_174 + idx + 32]
                idx = idx + 32
                continue 
            mem[_181 + 68] = mem[_181 + 74 len 26]
            revert with memory
              from mem[64]
               len _181 + -mem[64] + 100
        require idx < stor5.length
        mem[0] = stor5[idx]
        mem[32] = 1
        _127 = mem[64]
        mem[64] = mem[64] + 64
        mem[_127] = 30
        mem[_127 + 32] = 'SafeMath: subtraction overflow'
        if stor1[stor5[idx]] > t:
            _132 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_132 + idx + 68] = mem[_127 + idx + 32]
                idx = idx + 32
                continue 
            mem[_132 + 68] = mem[_132 + 70 len 30]
            revert with memory
              from mem[64]
               len _132 + -mem[64] + 100
        require idx < stor5.length
        mem[0] = stor5[idx]
        mem[32] = 2
        _157 = mem[64]
        mem[64] = mem[64] + 64
        mem[_157] = 30
        mem[_157 + 32] = 'SafeMath: subtraction overflow'
        if stor2[stor5[idx]] <= s:
            idx = idx + 1
            s = s - stor2[stor5[idx]]
            t = t - stor1[stor5[idx]]
            continue 
        _171 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 30
        idx = 0
        while idx < 30:
            mem[_171 + idx + 68] = mem[_157 + idx + 32]
            idx = idx + 32
            continue 
        mem[_171 + 68] = mem[_171 + 70 len 30]
        revert with memory
          from mem[64]
           len _171 + -mem[64] + 100
    if totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero'
    if totalSupply:
        if t >= stor7 / totalSupply:
            if s <= 0:
                revert with 0, 'SafeMath: division by zero'
            if s:
                if t / s <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if t / s:
                    return (stor1[address(arg1)] / t / s)
        else:
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            if totalSupply:
                if stor7 / totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if stor7 / totalSupply:
                    return (stor1[address(arg1)] / stor7 / totalSupply)
    revert
}

function excludeAccount(address arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor4[address(arg1)]:
        revert with 0, 'Account is already excluded'
    if stor1[address(arg1)] > 0:
        mem[0] = arg1
        mem[32] = 1
        if stor1[address(arg1)] > stor7:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        42,
                        0x73416d6f756e74206d757374206265206c657373207468616e20746f74616c207265666c656374696f6e,
                        mem[206 len 22]
        idx = 0
        s = totalSupply
        t = stor7
        while idx < stor5.length:
            mem[0] = stor5[idx]
            mem[32] = 1
            if stor1[stor5[idx]] > t:
                _131 = mem[64]
                mem[64] = mem[64] + 64
                mem[_131] = 26
                mem[_131 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _136 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_136 + idx + 68] = mem[_131 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_136 + 68] = mem[_136 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _136 + -mem[64] + 100
                require totalSupply
                _164 = mem[64]
                mem[64] = mem[64] + 64
                mem[_164] = 26
                mem[_164 + 32] = 'SafeMath: division by zero'
                if stor7 / totalSupply > 0:
                    require stor7 / totalSupply
                    stor2[address(arg1)] = stor1[address(arg1)] / stor7 / totalSupply
                    stor4[address(arg1)] = 1
                    stor5.length++
                    stor5[stor5.length] = arg1
                _176 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_176 + idx + 68] = mem[_164 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_176 + 68] = mem[_176 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _176 + -mem[64] + 100
            require idx < stor5.length
            mem[0] = stor5[idx]
            mem[32] = 2
            if stor2[stor5[idx]] > s:
                _139 = mem[64]
                mem[64] = mem[64] + 64
                mem[_139] = 26
                mem[_139 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _146 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_146 + idx + 68] = mem[_139 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_146 + 68] = mem[_146 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _146 + -mem[64] + 100
                require totalSupply
                _182 = mem[64]
                mem[64] = mem[64] + 64
                mem[_182] = 26
                mem[_182 + 32] = 'SafeMath: division by zero'
                if stor7 / totalSupply > 0:
                    require stor7 / totalSupply
                    stor2[address(arg1)] = stor1[address(arg1)] / stor7 / totalSupply
                    stor4[address(arg1)] = 1
                    stor5.length++
                    stor5[stor5.length] = arg1
                _189 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_189 + idx + 68] = mem[_182 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_189 + 68] = mem[_189 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _189 + -mem[64] + 100
            require idx < stor5.length
            mem[0] = stor5[idx]
            mem[32] = 1
            _135 = mem[64]
            mem[64] = mem[64] + 64
            mem[_135] = 30
            mem[_135 + 32] = 'SafeMath: subtraction overflow'
            if stor1[stor5[idx]] > t:
                _140 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_140 + idx + 68] = mem[_135 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_140 + 68] = mem[_140 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _140 + -mem[64] + 100
            require idx < stor5.length
            mem[0] = stor5[idx]
            mem[32] = 2
            _165 = mem[64]
            mem[64] = mem[64] + 64
            mem[_165] = 30
            mem[_165 + 32] = 'SafeMath: subtraction overflow'
            if stor2[stor5[idx]] <= s:
                idx = idx + 1
                s = s - stor2[stor5[idx]]
                t = t - stor1[stor5[idx]]
                continue 
            _179 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_179 + idx + 68] = mem[_165 + idx + 32]
                idx = idx + 32
                continue 
            mem[_179 + 68] = mem[_179 + 70 len 30]
            revert with memory
              from mem[64]
               len _179 + -mem[64] + 100
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if t >= stor7 / totalSupply:
            if s <= 0:
                revert with 0, 'SafeMath: division by zero'
            require s
            if t / s <= 0:
                revert with 0, 'SafeMath: division by zero'
            require t / s
            stor2[address(arg1)] = stor1[address(arg1)] / t / s
        else:
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if stor7 / totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require stor7 / totalSupply
            stor2[address(arg1)] = stor1[address(arg1)] / stor7 / totalSupply
    stor4[address(arg1)] = 1
    stor5.length++
    stor5[stor5.length] = arg1
}

function reflectionFromToken(uint256 arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 > totalSupply:
        revert with 0, 'Amount must be less than supply'
    if arg2:
        if not arg1:
            mem[96] = 26
            mem[128] = 'SafeMath: division by zero'
            if not arg1:
                mem[160] = 26
                mem[192] = 'SafeMath: division by zero'
                if not arg1:
                    mem[224] = 26
                    mem[256] = 'SafeMath: division by zero'
                    mem[288] = 30
                    mem[320] = 'SafeMath: subtraction overflow'
                    if 0 > arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    mem[352] = 30
                    mem[384] = 'SafeMath: subtraction overflow'
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
                            _10024 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_10024] = 26
                            mem[_10024 + 32] = 'SafeMath: division by zero'
                            if totalSupply <= 0:
                                _10127 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[_10127 + idx + 68] = mem[_10024 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_10127 + 68] = mem[_10127 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _10127 + -mem[64] + 100
                            require totalSupply
                            if not arg1:
                                return 0
                            require arg1
                            if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _11405 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_11405] = 30
                            mem[_11405 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= arg1 * stor7 / totalSupply:
                                return (arg1 * stor7 / totalSupply)
                            _11621 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_11621 + idx + 68] = mem[_11405 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_11621 + 68] = mem[_11621 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _11621 + -mem[64] + 100
                        require idx < stor5.length
                        mem[0] = stor5[idx]
                        mem[32] = 2
                        if stor2[stor5[idx]] > s:
                            _10130 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_10130] = 26
                            mem[_10130 + 32] = 'SafeMath: division by zero'
                            if totalSupply <= 0:
                                _10256 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[_10256 + idx + 68] = mem[_10130 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_10256 + 68] = mem[_10256 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _10256 + -mem[64] + 100
                            require totalSupply
                            if not arg1:
                                return 0
                            require arg1
                            if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _11624 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_11624] = 30
                            mem[_11624 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= arg1 * stor7 / totalSupply:
                                return (arg1 * stor7 / totalSupply)
                            _11977 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_11977 + idx + 68] = mem[_11624 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_11977 + 68] = mem[_11977 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _11977 + -mem[64] + 100
                        require idx < stor5.length
                        mem[0] = stor5[idx]
                        mem[32] = 1
                        _10082 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_10082] = 30
                        mem[_10082 + 32] = 'SafeMath: subtraction overflow'
                        if stor1[stor5[idx]] > t:
                            _10184 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_10184 + idx + 68] = mem[_10082 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_10184 + 68] = mem[_10184 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _10184 + -mem[64] + 100
                        require idx < stor5.length
                        mem[0] = stor5[idx]
                        mem[32] = 2
                        _10575 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_10575] = 30
                        mem[_10575 + 32] = 'SafeMath: subtraction overflow'
                        if stor2[stor5[idx]] <= s:
                            idx = idx + 1
                            s = s - stor2[stor5[idx]]
                            t = t - stor1[stor5[idx]]
                            continue 
                        _10712 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_10712 + idx + 68] = mem[_10575 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_10712 + 68] = mem[_10712 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _10712 + -mem[64] + 100
                    _9782 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_9782] = 26
                    mem[_9782 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    if t >= stor7 / totalSupply:
                        _10253 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_10253] = 26
                        mem[_10253 + 32] = 'SafeMath: division by zero'
                        if s <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require s
                        if not arg1:
                            return 0
                        require arg1
                        if arg1 * t / s / arg1 != t / s:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return (arg1 * t / s)
                    _10254 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_10254] = 26
                    mem[_10254 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    if not arg1:
                        return 0
                    require arg1
                    if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if 0 > arg1 * stor7 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (arg1 * stor7 / totalSupply)
                require arg1
                if arg1 * _fundFee / arg1 != _fundFee:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                mem[224] = 26
                mem[256] = 'SafeMath: division by zero'
                mem[288] = 30
                mem[320] = 'SafeMath: subtraction overflow'
                if 0 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                mem[352] = 30
                mem[384] = 'SafeMath: subtraction overflow'
                mem[64] = 480
                mem[416] = 30
                mem[448] = 'SafeMath: subtraction overflow'
                if arg1 * _fundFee / 100 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                idx = 0
                s = totalSupply
                t = stor7
                while idx < stor5.length:
                    mem[0] = stor5[idx]
                    mem[32] = 1
                    if stor1[stor5[idx]] > t:
                        _10019 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_10019] = 26
                        mem[_10019 + 32] = 'SafeMath: division by zero'
                        if totalSupply <= 0:
                            _10123 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_10123 + idx + 68] = mem[_10019 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_10123 + 68] = mem[_10123 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _10123 + -mem[64] + 100
                        require totalSupply
                        if not arg1:
                            if not arg1 * _fundFee / 100:
                                return 0
                            require arg1 * _fundFee / 100
                            if arg1 * _fundFee / 100 * stor7 / totalSupply / arg1 * _fundFee / 100 != stor7 / totalSupply:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _11403 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_11403] = 30
                            mem[_11403 + 32] = 'SafeMath: subtraction overflow'
                            _12209 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12209] = 30
                            mem[_12209 + 32] = 'SafeMath: subtraction overflow'
                            _14088 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_14088] = 30
                            mem[_14088 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _fundFee / 100 * stor7 / totalSupply <= 0:
                                return (-1 * arg1 * _fundFee / 100 * stor7 / totalSupply)
                            _14978 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_14978 + idx + 68] = mem[_14088 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_14978 + 68] = mem[_14978 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _14978 + -mem[64] + 100
                        require arg1
                        if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not arg1 * _fundFee / 100:
                            _11402 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_11402] = 30
                            mem[_11402 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= arg1 * stor7 / totalSupply:
                                return (arg1 * stor7 / totalSupply)
                            _11614 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_11614 + idx + 68] = mem[_11402 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_11614 + 68] = mem[_11614 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _11614 + -mem[64] + 100
                        require arg1 * _fundFee / 100
                        if arg1 * _fundFee / 100 * stor7 / totalSupply / arg1 * _fundFee / 100 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _11613 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_11613] = 30
                        mem[_11613 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor7 / totalSupply:
                            _11966 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_11966 + idx + 68] = mem[_11613 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_11966 + 68] = mem[_11966 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _11966 + -mem[64] + 100
                        _12865 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12865] = 30
                        mem[_12865 + 32] = 'SafeMath: subtraction overflow'
                        _14977 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_14977] = 30
                        mem[_14977 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _fundFee / 100 * stor7 / totalSupply <= arg1 * stor7 / totalSupply:
                            return ((arg1 * stor7 / totalSupply) - (arg1 * _fundFee / 100 * stor7 / totalSupply))
                        _15813 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_15813 + idx + 68] = mem[_14977 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_15813 + 68] = mem[_15813 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _15813 + -mem[64] + 100
                    require idx < stor5.length
                    mem[0] = stor5[idx]
                    mem[32] = 2
                    if stor2[stor5[idx]] <= s:
                        require idx < stor5.length
                        mem[0] = stor5[idx]
                        mem[32] = 1
                        _10080 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_10080] = 30
                        mem[_10080 + 32] = 'SafeMath: subtraction overflow'
                        if stor1[stor5[idx]] > t:
                            _10181 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_10181 + idx + 68] = mem[_10080 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_10181 + 68] = mem[_10181 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _10181 + -mem[64] + 100
                        require idx < stor5.length
                        mem[0] = stor5[idx]
                        mem[32] = 2
                        _10571 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_10571] = 30
                        mem[_10571 + 32] = 'SafeMath: subtraction overflow'
                        if stor2[stor5[idx]] <= s:
                            idx = idx + 1
                            s = s - stor2[stor5[idx]]
                            t = t - stor1[stor5[idx]]
                            continue 
                        _10705 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_10705 + idx + 68] = mem[_10571 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_10705 + 68] = mem[_10705 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _10705 + -mem[64] + 100
                    _10126 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_10126] = 26
                    mem[_10126 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _10250 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_10250 + idx + 68] = mem[_10126 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_10250 + 68] = mem[_10250 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _10250 + -mem[64] + 100
                    require totalSupply
                    if not arg1:
                        if not arg1 * _fundFee / 100:
                            return 0
                        require arg1 * _fundFee / 100
                        if arg1 * _fundFee / 100 * stor7 / totalSupply / arg1 * _fundFee / 100 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _11618 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_11618] = 30
                        mem[_11618 + 32] = 'SafeMath: subtraction overflow'
                        _12871 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12871] = 30
                        mem[_12871 + 32] = 'SafeMath: subtraction overflow'
                        _14982 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_14982] = 30
                        mem[_14982 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _fundFee / 100 * stor7 / totalSupply <= 0:
                            return (-1 * arg1 * _fundFee / 100 * stor7 / totalSupply)
                        _15818 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_15818 + idx + 68] = mem[_14982 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_15818 + 68] = mem[_15818 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _15818 + -mem[64] + 100
                    require arg1
                    if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not arg1 * _fundFee / 100:
                        _11617 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_11617] = 30
                        mem[_11617 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor7 / totalSupply:
                            return (arg1 * stor7 / totalSupply)
                        _11971 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_11971 + idx + 68] = mem[_11617 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_11971 + 68] = mem[_11971 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _11971 + -mem[64] + 100
                    require arg1 * _fundFee / 100
                    if arg1 * _fundFee / 100 * stor7 / totalSupply / arg1 * _fundFee / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _11970 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_11970] = 30
                    mem[_11970 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor7 / totalSupply:
                        _12502 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_12502 + idx + 68] = mem[_11970 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_12502 + 68] = mem[_12502 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _12502 + -mem[64] + 100
                    _13675 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_13675] = 30
                    mem[_13675 + 32] = 'SafeMath: subtraction overflow'
                    _15817 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_15817] = 30
                    mem[_15817 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _fundFee / 100 * stor7 / totalSupply <= arg1 * stor7 / totalSupply:
                        return ((arg1 * stor7 / totalSupply) - (arg1 * _fundFee / 100 * stor7 / totalSupply))
                    _16602 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_16602 + idx + 68] = mem[_15817 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_16602 + 68] = mem[_16602 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _16602 + -mem[64] + 100
                _9775 = mem[64]
                mem[64] = mem[64] + 64
                mem[_9775] = 26
                mem[_9775 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                if t >= stor7 / totalSupply:
                    _10247 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_10247] = 26
                    mem[_10247 + 32] = 'SafeMath: division by zero'
                    if s <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require s
                    if not arg1:
                        if not arg1 * _fundFee / 100:
                            return 0
                        require arg1 * _fundFee / 100
                        if arg1 * _fundFee / 100 * t / s / arg1 * _fundFee / 100 != t / s:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if arg1 * _fundFee / 100 * t / s > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return (-1 * arg1 * _fundFee / 100 * t / s)
                    require arg1
                    if arg1 * t / s / arg1 != t / s:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not arg1 * _fundFee / 100:
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return (arg1 * t / s)
                    require arg1 * _fundFee / 100
                    if arg1 * _fundFee / 100 * t / s / arg1 * _fundFee / 100 != t / s:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg1 * _fundFee / 100 * t / s > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ((arg1 * t / s) - (arg1 * _fundFee / 100 * t / s))
                _10248 = mem[64]
                mem[64] = mem[64] + 64
                mem[_10248] = 26
                mem[_10248 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                if not arg1:
                    if not arg1 * _fundFee / 100:
                        return 0
                    require arg1 * _fundFee / 100
                    if arg1 * _fundFee / 100 * stor7 / totalSupply / arg1 * _fundFee / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if arg1 * _fundFee / 100 * stor7 / totalSupply > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (-1 * arg1 * _fundFee / 100 * stor7 / totalSupply)
                require arg1
                if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not arg1 * _fundFee / 100:
                    if 0 > arg1 * stor7 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (arg1 * stor7 / totalSupply)
                require arg1 * _fundFee / 100
                if arg1 * _fundFee / 100 * stor7 / totalSupply / arg1 * _fundFee / 100 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if 0 > arg1 * stor7 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg1 * _fundFee / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((arg1 * stor7 / totalSupply) - (arg1 * _fundFee / 100 * stor7 / totalSupply))
            require arg1
            if arg1 * _burnFee / arg1 != _burnFee:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            mem[160] = 26
            mem[192] = 'SafeMath: division by zero'
            if not arg1:
                mem[224] = 26
                mem[256] = 'SafeMath: division by zero'
                mem[288] = 30
                mem[320] = 'SafeMath: subtraction overflow'
                if 0 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                mem[352] = 30
                mem[384] = 'SafeMath: subtraction overflow'
                if arg1 * _burnFee / 100 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                mem[64] = 480
                mem[416] = 30
                mem[448] = 'SafeMath: subtraction overflow'
                if 0 > arg1 - (arg1 * _burnFee / 100):
                    revert with 0, 'SafeMath: subtraction overflow'
                idx = 0
                s = totalSupply
                t = stor7
                while idx < stor5.length:
                    mem[0] = stor5[idx]
                    mem[32] = 1
                    if stor1[stor5[idx]] > t:
                        _10014 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_10014] = 26
                        mem[_10014 + 32] = 'SafeMath: division by zero'
                        if totalSupply <= 0:
                            _10119 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_10119 + idx + 68] = mem[_10014 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_10119 + 68] = mem[_10119 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _10119 + -mem[64] + 100
                        require totalSupply
                        if not arg1:
                            if not arg1 * _burnFee / 100:
                                return 0
                            require arg1 * _burnFee / 100
                            if arg1 * _burnFee / 100 * stor7 / totalSupply / arg1 * _burnFee / 100 != stor7 / totalSupply:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _11400 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_11400] = 30
                            mem[_11400 + 32] = 'SafeMath: subtraction overflow'
                            _12204 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12204] = 30
                            mem[_12204 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _burnFee / 100 * stor7 / totalSupply > 0:
                                _12856 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_12856 + idx + 68] = mem[_12204 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_12856 + 68] = mem[_12856 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _12856 + -mem[64] + 100
                            _14078 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_14078] = 30
                            mem[_14078 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= -1 * arg1 * _burnFee / 100 * stor7 / totalSupply:
                                return (-1 * arg1 * _burnFee / 100 * stor7 / totalSupply)
                            _14966 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_14966 + idx + 68] = mem[_14078 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_14966 + 68] = mem[_14966 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _14966 + -mem[64] + 100
                        require arg1
                        if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not arg1 * _burnFee / 100:
                            _11399 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_11399] = 30
                            mem[_11399 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= arg1 * stor7 / totalSupply:
                                return (arg1 * stor7 / totalSupply)
                            _11606 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_11606 + idx + 68] = mem[_11399 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_11606 + 68] = mem[_11606 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _11606 + -mem[64] + 100
                        require arg1 * _burnFee / 100
                        if arg1 * _burnFee / 100 * stor7 / totalSupply / arg1 * _burnFee / 100 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _11605 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_11605] = 30
                        mem[_11605 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor7 / totalSupply:
                            _11954 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_11954 + idx + 68] = mem[_11605 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_11954 + 68] = mem[_11954 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _11954 + -mem[64] + 100
                        _12853 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12853] = 30
                        mem[_12853 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _burnFee / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                            _13657 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_13657 + idx + 68] = mem[_12853 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_13657 + 68] = mem[_13657 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _13657 + -mem[64] + 100
                        _14963 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_14963] = 30
                        mem[_14963 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= (arg1 * stor7 / totalSupply) - (arg1 * _burnFee / 100 * stor7 / totalSupply):
                            return ((arg1 * stor7 / totalSupply) - (arg1 * _burnFee / 100 * stor7 / totalSupply))
                        _15799 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_15799 + idx + 68] = mem[_14963 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_15799 + 68] = mem[_15799 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _15799 + -mem[64] + 100
                    require idx < stor5.length
                    mem[0] = stor5[idx]
                    mem[32] = 2
                    if stor2[stor5[idx]] <= s:
                        require idx < stor5.length
                        mem[0] = stor5[idx]
                        mem[32] = 1
                        _10078 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_10078] = 30
                        mem[_10078 + 32] = 'SafeMath: subtraction overflow'
                        if stor1[stor5[idx]] > t:
                            _10178 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_10178 + idx + 68] = mem[_10078 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_10178 + 68] = mem[_10178 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _10178 + -mem[64] + 100
                        require idx < stor5.length
                        mem[0] = stor5[idx]
                        mem[32] = 2
                        _10567 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_10567] = 30
                        mem[_10567 + 32] = 'SafeMath: subtraction overflow'
                        if stor2[stor5[idx]] <= s:
                            idx = idx + 1
                            s = s - stor2[stor5[idx]]
                            t = t - stor1[stor5[idx]]
                            continue 
                        _10698 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_10698 + idx + 68] = mem[_10567 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_10698 + 68] = mem[_10698 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _10698 + -mem[64] + 100
                    _10122 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_10122] = 26
                    mem[_10122 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _10244 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_10244 + idx + 68] = mem[_10122 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_10244 + 68] = mem[_10244 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _10244 + -mem[64] + 100
                    require totalSupply
                    if not arg1:
                        if not arg1 * _burnFee / 100:
                            return 0
                        require arg1 * _burnFee / 100
                        if arg1 * _burnFee / 100 * stor7 / totalSupply / arg1 * _burnFee / 100 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _11610 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_11610] = 30
                        mem[_11610 + 32] = 'SafeMath: subtraction overflow'
                        _12862 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12862] = 30
                        mem[_12862 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _burnFee / 100 * stor7 / totalSupply > 0:
                            _13664 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_13664 + idx + 68] = mem[_12862 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_13664 + 68] = mem[_13664 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _13664 + -mem[64] + 100
                        _14970 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_14970] = 30
                        mem[_14970 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -1 * arg1 * _burnFee / 100 * stor7 / totalSupply:
                            return (-1 * arg1 * _burnFee / 100 * stor7 / totalSupply)
                        _15806 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_15806 + idx + 68] = mem[_14970 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_15806 + 68] = mem[_15806 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _15806 + -mem[64] + 100
                    require arg1
                    if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not arg1 * _burnFee / 100:
                        _11609 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_11609] = 30
                        mem[_11609 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor7 / totalSupply:
                            return (arg1 * stor7 / totalSupply)
                        _11959 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_11959 + idx + 68] = mem[_11609 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_11959 + 68] = mem[_11959 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _11959 + -mem[64] + 100
                    require arg1 * _burnFee / 100
                    if arg1 * _burnFee / 100 * stor7 / totalSupply / arg1 * _burnFee / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _11958 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_11958] = 30
                    mem[_11958 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor7 / totalSupply:
                        _12488 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_12488 + idx + 68] = mem[_11958 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_12488 + 68] = mem[_12488 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _12488 + -mem[64] + 100
                    _13661 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_13661] = 30
                    mem[_13661 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _burnFee / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                        _14528 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_14528 + idx + 68] = mem[_13661 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_14528 + 68] = mem[_14528 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _14528 + -mem[64] + 100
                    _15803 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_15803] = 30
                    mem[_15803 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (arg1 * stor7 / totalSupply) - (arg1 * _burnFee / 100 * stor7 / totalSupply):
                        return ((arg1 * stor7 / totalSupply) - (arg1 * _burnFee / 100 * stor7 / totalSupply))
                    _16586 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_16586 + idx + 68] = mem[_15803 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_16586 + 68] = mem[_16586 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _16586 + -mem[64] + 100
                _9766 = mem[64]
                mem[64] = mem[64] + 64
                mem[_9766] = 26
                mem[_9766 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                if t >= stor7 / totalSupply:
                    _10241 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_10241] = 26
                    mem[_10241 + 32] = 'SafeMath: division by zero'
                    if s <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require s
                    if not arg1:
                        if not arg1 * _burnFee / 100:
                            return 0
                        require arg1 * _burnFee / 100
                        if arg1 * _burnFee / 100 * t / s / arg1 * _burnFee / 100 != t / s:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if arg1 * _burnFee / 100 * t / s > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 > -1 * arg1 * _burnFee / 100 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return (-1 * arg1 * _burnFee / 100 * t / s)
                    require arg1
                    if arg1 * t / s / arg1 != t / s:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not arg1 * _burnFee / 100:
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return (arg1 * t / s)
                    require arg1 * _burnFee / 100
                    if arg1 * _burnFee / 100 * t / s / arg1 * _burnFee / 100 != t / s:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg1 * _burnFee / 100 * t / s > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > (arg1 * t / s) - (arg1 * _burnFee / 100 * t / s):
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ((arg1 * t / s) - (arg1 * _burnFee / 100 * t / s))
                _10242 = mem[64]
                mem[64] = mem[64] + 64
                mem[_10242] = 26
                mem[_10242 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                if not arg1:
                    if not arg1 * _burnFee / 100:
                        return 0
                    require arg1 * _burnFee / 100
                    if arg1 * _burnFee / 100 * stor7 / totalSupply / arg1 * _burnFee / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if arg1 * _burnFee / 100 * stor7 / totalSupply > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > -1 * arg1 * _burnFee / 100 * stor7 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (-1 * arg1 * _burnFee / 100 * stor7 / totalSupply)
                require arg1
                if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not arg1 * _burnFee / 100:
                    if 0 > arg1 * stor7 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (arg1 * stor7 / totalSupply)
                require arg1 * _burnFee / 100
                if arg1 * _burnFee / 100 * stor7 / totalSupply / arg1 * _burnFee / 100 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if 0 > arg1 * stor7 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg1 * _burnFee / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > (arg1 * stor7 / totalSupply) - (arg1 * _burnFee / 100 * stor7 / totalSupply):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((arg1 * stor7 / totalSupply) - (arg1 * _burnFee / 100 * stor7 / totalSupply))
            require arg1
            if arg1 * _fundFee / arg1 != _fundFee:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            mem[224] = 26
            mem[256] = 'SafeMath: division by zero'
            mem[288] = 30
            mem[320] = 'SafeMath: subtraction overflow'
            if 0 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[352] = 30
            mem[384] = 'SafeMath: subtraction overflow'
            if arg1 * _burnFee / 100 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[64] = 480
            mem[416] = 30
            mem[448] = 'SafeMath: subtraction overflow'
            if arg1 * _fundFee / 100 > arg1 - (arg1 * _burnFee / 100):
                revert with 0, 'SafeMath: subtraction overflow'
            idx = 0
            s = totalSupply
            t = stor7
            while idx < stor5.length:
                mem[0] = stor5[idx]
                mem[32] = 1
                if stor1[stor5[idx]] > t:
                    _10009 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_10009] = 26
                    mem[_10009 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _10115 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_10115 + idx + 68] = mem[_10009 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_10115 + 68] = mem[_10115 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _10115 + -mem[64] + 100
                    require totalSupply
                    if not arg1:
                        if not arg1 * _burnFee / 100:
                            if not arg1 * _fundFee / 100:
                                return 0
                            require arg1 * _fundFee / 100
                            if arg1 * _fundFee / 100 * stor7 / totalSupply / arg1 * _fundFee / 100 != stor7 / totalSupply:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _11397 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_11397] = 30
                            mem[_11397 + 32] = 'SafeMath: subtraction overflow'
                            _12199 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12199] = 30
                            mem[_12199 + 32] = 'SafeMath: subtraction overflow'
                            _14068 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_14068] = 30
                            mem[_14068 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _fundFee / 100 * stor7 / totalSupply <= 0:
                                return (-1 * arg1 * _fundFee / 100 * stor7 / totalSupply)
                            _14950 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_14950 + idx + 68] = mem[_14068 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_14950 + 68] = mem[_14950 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _14950 + -mem[64] + 100
                        require arg1 * _burnFee / 100
                        if arg1 * _burnFee / 100 * stor7 / totalSupply / arg1 * _burnFee / 100 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not arg1 * _fundFee / 100:
                            _11396 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_11396] = 30
                            mem[_11396 + 32] = 'SafeMath: subtraction overflow'
                            _12198 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12198] = 30
                            mem[_12198 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _burnFee / 100 * stor7 / totalSupply > 0:
                                _12843 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_12843 + idx + 68] = mem[_12198 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_12843 + 68] = mem[_12843 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _12843 + -mem[64] + 100
                            _14065 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_14065] = 30
                            mem[_14065 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= -1 * arg1 * _burnFee / 100 * stor7 / totalSupply:
                                return (-1 * arg1 * _burnFee / 100 * stor7 / totalSupply)
                            _14947 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_14947 + idx + 68] = mem[_14065 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_14947 + 68] = mem[_14947 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _14947 + -mem[64] + 100
                        require arg1 * _fundFee / 100
                        if arg1 * _fundFee / 100 * stor7 / totalSupply / arg1 * _fundFee / 100 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _11599 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_11599] = 30
                        mem[_11599 + 32] = 'SafeMath: subtraction overflow'
                        _12842 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12842] = 30
                        mem[_12842 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _burnFee / 100 * stor7 / totalSupply > 0:
                            _13635 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_13635 + idx + 68] = mem[_12842 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_13635 + 68] = mem[_13635 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _13635 + -mem[64] + 100
                        _14944 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_14944] = 30
                        mem[_14944 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _fundFee / 100 * stor7 / totalSupply <= -1 * arg1 * _burnFee / 100 * stor7 / totalSupply:
                            return ((-1 * arg1 * _burnFee / 100 * stor7 / totalSupply) - (arg1 * _fundFee / 100 * stor7 / totalSupply))
                        _15773 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_15773 + idx + 68] = mem[_14944 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_15773 + 68] = mem[_15773 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _15773 + -mem[64] + 100
                    require arg1
                    if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not arg1 * _burnFee / 100:
                        if not arg1 * _fundFee / 100:
                            _11395 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_11395] = 30
                            mem[_11395 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= arg1 * stor7 / totalSupply:
                                return (arg1 * stor7 / totalSupply)
                            _11596 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_11596 + idx + 68] = mem[_11395 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_11596 + 68] = mem[_11596 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _11596 + -mem[64] + 100
                        require arg1 * _fundFee / 100
                        if arg1 * _fundFee / 100 * stor7 / totalSupply / arg1 * _fundFee / 100 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _11595 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_11595] = 30
                        mem[_11595 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor7 / totalSupply:
                            _11940 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_11940 + idx + 68] = mem[_11595 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_11940 + 68] = mem[_11940 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _11940 + -mem[64] + 100
                        _12839 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12839] = 30
                        mem[_12839 + 32] = 'SafeMath: subtraction overflow'
                        _14943 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_14943] = 30
                        mem[_14943 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _fundFee / 100 * stor7 / totalSupply <= arg1 * stor7 / totalSupply:
                            return ((arg1 * stor7 / totalSupply) - (arg1 * _fundFee / 100 * stor7 / totalSupply))
                        _15770 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_15770 + idx + 68] = mem[_14943 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_15770 + 68] = mem[_15770 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _15770 + -mem[64] + 100
                    require arg1 * _burnFee / 100
                    if arg1 * _burnFee / 100 * stor7 / totalSupply / arg1 * _burnFee / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not arg1 * _fundFee / 100:
                        _11594 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_11594] = 30
                        mem[_11594 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor7 / totalSupply:
                            _11937 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_11937 + idx + 68] = mem[_11594 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_11937 + 68] = mem[_11937 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _11937 + -mem[64] + 100
                        _12836 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12836] = 30
                        mem[_12836 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _burnFee / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                            _13632 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_13632 + idx + 68] = mem[_12836 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_13632 + 68] = mem[_13632 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _13632 + -mem[64] + 100
                        _14940 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_14940] = 30
                        mem[_14940 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= (arg1 * stor7 / totalSupply) - (arg1 * _burnFee / 100 * stor7 / totalSupply):
                            return ((arg1 * stor7 / totalSupply) - (arg1 * _burnFee / 100 * stor7 / totalSupply))
                        _15767 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_15767 + idx + 68] = mem[_14940 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_15767 + 68] = mem[_15767 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _15767 + -mem[64] + 100
                    require arg1 * _fundFee / 100
                    if arg1 * _fundFee / 100 * stor7 / totalSupply / arg1 * _fundFee / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _11936 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_11936] = 30
                    mem[_11936 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor7 / totalSupply:
                        _12464 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_12464 + idx + 68] = mem[_11936 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_12464 + 68] = mem[_12464 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _12464 + -mem[64] + 100
                    _13629 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_13629] = 30
                    mem[_13629 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _burnFee / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                        _14498 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_14498 + idx + 68] = mem[_13629 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_14498 + 68] = mem[_14498 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _14498 + -mem[64] + 100
                    _15764 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_15764] = 30
                    mem[_15764 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _fundFee / 100 * stor7 / totalSupply <= (arg1 * stor7 / totalSupply) - (arg1 * _burnFee / 100 * stor7 / totalSupply):
                        return ((arg1 * stor7 / totalSupply) - (arg1 * _burnFee / 100 * stor7 / totalSupply) - (arg1 * _fundFee / 100 * stor7 / totalSupply))
                    _16546 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_16546 + idx + 68] = mem[_15764 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_16546 + 68] = mem[_16546 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _16546 + -mem[64] + 100
                require idx < stor5.length
                mem[0] = stor5[idx]
                mem[32] = 2
                if stor2[stor5[idx]] <= s:
                    require idx < stor5.length
                    mem[0] = stor5[idx]
                    mem[32] = 1
                    _10076 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_10076] = 30
                    mem[_10076 + 32] = 'SafeMath: subtraction overflow'
                    if stor1[stor5[idx]] > t:
                        _10175 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_10175 + idx + 68] = mem[_10076 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_10175 + 68] = mem[_10175 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _10175 + -mem[64] + 100
                    require idx < stor5.length
                    mem[0] = stor5[idx]
                    mem[32] = 2
                    _10563 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_10563] = 30
                    mem[_10563 + 32] = 'SafeMath: subtraction overflow'
                    if stor2[stor5[idx]] <= s:
                        idx = idx + 1
                        s = s - stor2[stor5[idx]]
                        t = t - stor1[stor5[idx]]
                        continue 
                    _10691 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_10691 + idx + 68] = mem[_10563 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_10691 + 68] = mem[_10691 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _10691 + -mem[64] + 100
                _10118 = mem[64]
                mem[64] = mem[64] + 64
                mem[_10118] = 26
                mem[_10118 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _10238 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_10238 + idx + 68] = mem[_10118 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_10238 + 68] = mem[_10238 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _10238 + -mem[64] + 100
                require totalSupply
                if not arg1:
                    if not arg1 * _burnFee / 100:
                        if not arg1 * _fundFee / 100:
                            return 0
                        require arg1 * _fundFee / 100
                        if arg1 * _fundFee / 100 * stor7 / totalSupply / arg1 * _fundFee / 100 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _11602 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_11602] = 30
                        mem[_11602 + 32] = 'SafeMath: subtraction overflow'
                        _12850 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12850] = 30
                        mem[_12850 + 32] = 'SafeMath: subtraction overflow'
                        _14958 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_14958] = 30
                        mem[_14958 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _fundFee / 100 * stor7 / totalSupply <= 0:
                            return (-1 * arg1 * _fundFee / 100 * stor7 / totalSupply)
                        _15788 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_15788 + idx + 68] = mem[_14958 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_15788 + 68] = mem[_15788 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _15788 + -mem[64] + 100
                    require arg1 * _burnFee / 100
                    if arg1 * _burnFee / 100 * stor7 / totalSupply / arg1 * _burnFee / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not arg1 * _fundFee / 100:
                        _11601 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_11601] = 30
                        mem[_11601 + 32] = 'SafeMath: subtraction overflow'
                        _12849 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12849] = 30
                        mem[_12849 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _burnFee / 100 * stor7 / totalSupply > 0:
                            _13646 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_13646 + idx + 68] = mem[_12849 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_13646 + 68] = mem[_13646 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _13646 + -mem[64] + 100
                        _14955 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_14955] = 30
                        mem[_14955 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -1 * arg1 * _burnFee / 100 * stor7 / totalSupply:
                            return (-1 * arg1 * _burnFee / 100 * stor7 / totalSupply)
                        _15785 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_15785 + idx + 68] = mem[_14955 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_15785 + 68] = mem[_15785 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _15785 + -mem[64] + 100
                    require arg1 * _fundFee / 100
                    if arg1 * _fundFee / 100 * stor7 / totalSupply / arg1 * _fundFee / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _11949 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_11949] = 30
                    mem[_11949 + 32] = 'SafeMath: subtraction overflow'
                    _13645 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_13645] = 30
                    mem[_13645 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _burnFee / 100 * stor7 / totalSupply > 0:
                        _14510 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_14510 + idx + 68] = mem[_13645 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_14510 + 68] = mem[_14510 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _14510 + -mem[64] + 100
                    _15782 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_15782] = 30
                    mem[_15782 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _fundFee / 100 * stor7 / totalSupply <= -1 * arg1 * _burnFee / 100 * stor7 / totalSupply:
                        return ((-1 * arg1 * _burnFee / 100 * stor7 / totalSupply) - (arg1 * _fundFee / 100 * stor7 / totalSupply))
                    _16565 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_16565 + idx + 68] = mem[_15782 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_16565 + 68] = mem[_16565 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _16565 + -mem[64] + 100
                require arg1
                if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not arg1 * _burnFee / 100:
                    if not arg1 * _fundFee / 100:
                        _11600 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_11600] = 30
                        mem[_11600 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor7 / totalSupply:
                            return (arg1 * stor7 / totalSupply)
                        _11946 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_11946 + idx + 68] = mem[_11600 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_11946 + 68] = mem[_11946 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _11946 + -mem[64] + 100
                    require arg1 * _fundFee / 100
                    if arg1 * _fundFee / 100 * stor7 / totalSupply / arg1 * _fundFee / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _11945 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_11945] = 30
                    mem[_11945 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor7 / totalSupply:
                        _12474 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_12474 + idx + 68] = mem[_11945 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_12474 + 68] = mem[_12474 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _12474 + -mem[64] + 100
                    _13642 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_13642] = 30
                    mem[_13642 + 32] = 'SafeMath: subtraction overflow'
                    _15781 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_15781] = 30
                    mem[_15781 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _fundFee / 100 * stor7 / totalSupply <= arg1 * stor7 / totalSupply:
                        return ((arg1 * stor7 / totalSupply) - (arg1 * _fundFee / 100 * stor7 / totalSupply))
                    _16562 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_16562 + idx + 68] = mem[_15781 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_16562 + 68] = mem[_16562 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _16562 + -mem[64] + 100
                require arg1 * _burnFee / 100
                if arg1 * _burnFee / 100 * stor7 / totalSupply / arg1 * _burnFee / 100 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not arg1 * _fundFee / 100:
                    _11944 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_11944] = 30
                    mem[_11944 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor7 / totalSupply:
                        _12471 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_12471 + idx + 68] = mem[_11944 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_12471 + 68] = mem[_12471 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _12471 + -mem[64] + 100
                    _13639 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_13639] = 30
                    mem[_13639 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _burnFee / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                        _14507 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_14507 + idx + 68] = mem[_13639 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_14507 + 68] = mem[_14507 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _14507 + -mem[64] + 100
                    _15778 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_15778] = 30
                    mem[_15778 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (arg1 * stor7 / totalSupply) - (arg1 * _burnFee / 100 * stor7 / totalSupply):
                        return ((arg1 * stor7 / totalSupply) - (arg1 * _burnFee / 100 * stor7 / totalSupply))
                    _16559 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_16559 + idx + 68] = mem[_15778 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_16559 + 68] = mem[_16559 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _16559 + -mem[64] + 100
                require arg1 * _fundFee / 100
                if arg1 * _fundFee / 100 * stor7 / totalSupply / arg1 * _fundFee / 100 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _12470 = mem[64]
                mem[64] = mem[64] + 64
                mem[_12470] = 30
                mem[_12470 + 32] = 'SafeMath: subtraction overflow'
                if 0 > arg1 * stor7 / totalSupply:
                    _13199 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_13199 + idx + 68] = mem[_12470 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_13199 + 68] = mem[_13199 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _13199 + -mem[64] + 100
                _14504 = mem[64]
                mem[64] = mem[64] + 64
                mem[_14504] = 30
                mem[_14504 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _burnFee / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                    _15364 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_15364 + idx + 68] = mem[_14504 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_15364 + 68] = mem[_15364 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _15364 + -mem[64] + 100
                _16556 = mem[64]
                mem[64] = mem[64] + 64
                mem[_16556] = 30
                mem[_16556 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _fundFee / 100 * stor7 / totalSupply <= (arg1 * stor7 / totalSupply) - (arg1 * _burnFee / 100 * stor7 / totalSupply):
                    return ((arg1 * stor7 / totalSupply) - (arg1 * _burnFee / 100 * stor7 / totalSupply) - (arg1 * _fundFee / 100 * stor7 / totalSupply))
                _17305 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_17305 + idx + 68] = mem[_16556 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_17305 + 68] = mem[_17305 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _17305 + -mem[64] + 100
            _9757 = mem[64]
            mem[64] = mem[64] + 64
            mem[_9757] = 26
            mem[_9757 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if t >= stor7 / totalSupply:
                _10235 = mem[64]
                mem[64] = mem[64] + 64
                mem[_10235] = 26
                mem[_10235 + 32] = 'SafeMath: division by zero'
                if s <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require s
                if not arg1:
                    if not arg1 * _burnFee / 100:
                        if not arg1 * _fundFee / 100:
                            return 0
                        require arg1 * _fundFee / 100
                        if arg1 * _fundFee / 100 * t / s / arg1 * _fundFee / 100 != t / s:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if arg1 * _fundFee / 100 * t / s > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return (-1 * arg1 * _fundFee / 100 * t / s)
                    require arg1 * _burnFee / 100
                    if arg1 * _burnFee / 100 * t / s / arg1 * _burnFee / 100 != t / s:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not arg1 * _fundFee / 100:
                        if arg1 * _burnFee / 100 * t / s > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 > -1 * arg1 * _burnFee / 100 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return (-1 * arg1 * _burnFee / 100 * t / s)
                    require arg1 * _fundFee / 100
                    if arg1 * _fundFee / 100 * t / s / arg1 * _fundFee / 100 != t / s:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if arg1 * _burnFee / 100 * t / s > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg1 * _fundFee / 100 * t / s > -1 * arg1 * _burnFee / 100 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ((-1 * arg1 * _burnFee / 100 * t / s) - (arg1 * _fundFee / 100 * t / s))
                require arg1
                if arg1 * t / s / arg1 != t / s:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not arg1 * _burnFee / 100:
                    if not arg1 * _fundFee / 100:
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return (arg1 * t / s)
                    require arg1 * _fundFee / 100
                    if arg1 * _fundFee / 100 * t / s / arg1 * _fundFee / 100 != t / s:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg1 * _fundFee / 100 * t / s > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ((arg1 * t / s) - (arg1 * _fundFee / 100 * t / s))
                require arg1 * _burnFee / 100
                if arg1 * _burnFee / 100 * t / s / arg1 * _burnFee / 100 != t / s:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not arg1 * _fundFee / 100:
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg1 * _burnFee / 100 * t / s > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > (arg1 * t / s) - (arg1 * _burnFee / 100 * t / s):
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ((arg1 * t / s) - (arg1 * _burnFee / 100 * t / s))
                require arg1 * _fundFee / 100
                if arg1 * _fundFee / 100 * t / s / arg1 * _fundFee / 100 != t / s:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if 0 > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg1 * _burnFee / 100 * t / s > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg1 * _fundFee / 100 * t / s > (arg1 * t / s) - (arg1 * _burnFee / 100 * t / s):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((arg1 * t / s) - (arg1 * _burnFee / 100 * t / s) - (arg1 * _fundFee / 100 * t / s))
            _10236 = mem[64]
            mem[64] = mem[64] + 64
            mem[_10236] = 26
            mem[_10236 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if not arg1:
                if not arg1 * _burnFee / 100:
                    if not arg1 * _fundFee / 100:
                        return 0
                    require arg1 * _fundFee / 100
                    if arg1 * _fundFee / 100 * stor7 / totalSupply / arg1 * _fundFee / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if arg1 * _fundFee / 100 * stor7 / totalSupply > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (-1 * arg1 * _fundFee / 100 * stor7 / totalSupply)
                require arg1 * _burnFee / 100
                if arg1 * _burnFee / 100 * stor7 / totalSupply / arg1 * _burnFee / 100 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not arg1 * _fundFee / 100:
                    if arg1 * _burnFee / 100 * stor7 / totalSupply > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > -1 * arg1 * _burnFee / 100 * stor7 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (-1 * arg1 * _burnFee / 100 * stor7 / totalSupply)
                require arg1 * _fundFee / 100
                if arg1 * _fundFee / 100 * stor7 / totalSupply / arg1 * _fundFee / 100 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if arg1 * _burnFee / 100 * stor7 / totalSupply > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg1 * _fundFee / 100 * stor7 / totalSupply > -1 * arg1 * _burnFee / 100 * stor7 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((-1 * arg1 * _burnFee / 100 * stor7 / totalSupply) - (arg1 * _fundFee / 100 * stor7 / totalSupply))
            require arg1
            if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not arg1 * _burnFee / 100:
                if not arg1 * _fundFee / 100:
                    if 0 > arg1 * stor7 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (arg1 * stor7 / totalSupply)
                require arg1 * _fundFee / 100
                if arg1 * _fundFee / 100 * stor7 / totalSupply / arg1 * _fundFee / 100 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if 0 > arg1 * stor7 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg1 * _fundFee / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((arg1 * stor7 / totalSupply) - (arg1 * _fundFee / 100 * stor7 / totalSupply))
            require arg1 * _burnFee / 100
            if arg1 * _burnFee / 100 * stor7 / totalSupply / arg1 * _burnFee / 100 != stor7 / totalSupply:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not arg1 * _fundFee / 100:
                if 0 > arg1 * stor7 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg1 * _burnFee / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > (arg1 * stor7 / totalSupply) - (arg1 * _burnFee / 100 * stor7 / totalSupply):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((arg1 * stor7 / totalSupply) - (arg1 * _burnFee / 100 * stor7 / totalSupply))
            require arg1 * _fundFee / 100
            if arg1 * _fundFee / 100 * stor7 / totalSupply / arg1 * _fundFee / 100 != stor7 / totalSupply:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if 0 > arg1 * stor7 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            if arg1 * _burnFee / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            if arg1 * _fundFee / 100 * stor7 / totalSupply > (arg1 * stor7 / totalSupply) - (arg1 * _burnFee / 100 * stor7 / totalSupply):
                revert with 0, 'SafeMath: subtraction overflow'
            return ((arg1 * stor7 / totalSupply) - (arg1 * _burnFee / 100 * stor7 / totalSupply) - (arg1 * _fundFee / 100 * stor7 / totalSupply))
        require arg1
        if arg1 * _taxFee / arg1 != _taxFee:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        mem[96] = 26
        mem[128] = 'SafeMath: division by zero'
        if not arg1:
            mem[160] = 26
            mem[192] = 'SafeMath: division by zero'
            if not arg1:
                mem[224] = 26
                mem[256] = 'SafeMath: division by zero'
                mem[288] = 30
                mem[320] = 'SafeMath: subtraction overflow'
                if arg1 * _taxFee / 100 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                mem[352] = 30
                mem[384] = 'SafeMath: subtraction overflow'
                if 0 > arg1 - (arg1 * _taxFee / 100):
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
                        _10004 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_10004] = 26
                        mem[_10004 + 32] = 'SafeMath: division by zero'
                        if totalSupply <= 0:
                            _10111 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_10111 + idx + 68] = mem[_10004 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_10111 + 68] = mem[_10111 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _10111 + -mem[64] + 100
                        require totalSupply
                        if not arg1:
                            if not arg1 * _taxFee / 100:
                                return 0
                            require arg1 * _taxFee / 100
                            if arg1 * _taxFee / 100 * stor7 / totalSupply / arg1 * _taxFee / 100 != stor7 / totalSupply:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _11393 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_11393] = 30
                            mem[_11393 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _taxFee / 100 * stor7 / totalSupply > 0:
                                _11587 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_11587 + idx + 68] = mem[_11393 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_11587 + 68] = mem[_11587 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _11587 + -mem[64] + 100
                            _12187 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12187] = 30
                            mem[_12187 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= -1 * arg1 * _taxFee / 100 * stor7 / totalSupply:
                                return (-1 * arg1 * _taxFee / 100 * stor7 / totalSupply)
                            _12825 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_12825 + idx + 68] = mem[_12187 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_12825 + 68] = mem[_12825 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _12825 + -mem[64] + 100
                        require arg1
                        if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not arg1 * _taxFee / 100:
                            _11392 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_11392] = 30
                            mem[_11392 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= arg1 * stor7 / totalSupply:
                                return (arg1 * stor7 / totalSupply)
                            _11584 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_11584 + idx + 68] = mem[_11392 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_11584 + 68] = mem[_11584 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _11584 + -mem[64] + 100
                        require arg1 * _taxFee / 100
                        if arg1 * _taxFee / 100 * stor7 / totalSupply / arg1 * _taxFee / 100 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _11583 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_11583] = 30
                        mem[_11583 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                            _11918 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_11918 + idx + 68] = mem[_11583 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_11918 + 68] = mem[_11918 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _11918 + -mem[64] + 100
                        _12822 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12822] = 30
                        mem[_12822 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 100 * stor7 / totalSupply):
                            return ((arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 100 * stor7 / totalSupply))
                        _13609 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_13609 + idx + 68] = mem[_12822 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_13609 + 68] = mem[_13609 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _13609 + -mem[64] + 100
                    require idx < stor5.length
                    mem[0] = stor5[idx]
                    mem[32] = 2
                    if stor2[stor5[idx]] <= s:
                        require idx < stor5.length
                        mem[0] = stor5[idx]
                        mem[32] = 1
                        _10074 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_10074] = 30
                        mem[_10074 + 32] = 'SafeMath: subtraction overflow'
                        if stor1[stor5[idx]] > t:
                            _10172 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_10172 + idx + 68] = mem[_10074 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_10172 + 68] = mem[_10172 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _10172 + -mem[64] + 100
                        require idx < stor5.length
                        mem[0] = stor5[idx]
                        mem[32] = 2
                        _10559 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_10559] = 30
                        mem[_10559 + 32] = 'SafeMath: subtraction overflow'
                        if stor2[stor5[idx]] <= s:
                            idx = idx + 1
                            s = s - stor2[stor5[idx]]
                            t = t - stor1[stor5[idx]]
                            continue 
                        _10684 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_10684 + idx + 68] = mem[_10559 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_10684 + 68] = mem[_10684 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _10684 + -mem[64] + 100
                    _10114 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_10114] = 26
                    mem[_10114 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _10232 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_10232 + idx + 68] = mem[_10114 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_10232 + 68] = mem[_10232 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _10232 + -mem[64] + 100
                    require totalSupply
                    if not arg1:
                        if not arg1 * _taxFee / 100:
                            return 0
                        require arg1 * _taxFee / 100
                        if arg1 * _taxFee / 100 * stor7 / totalSupply / arg1 * _taxFee / 100 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _11591 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_11591] = 30
                        mem[_11591 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor7 / totalSupply > 0:
                            _11927 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_11927 + idx + 68] = mem[_11591 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_11927 + 68] = mem[_11927 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _11927 + -mem[64] + 100
                        _12831 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12831] = 30
                        mem[_12831 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -1 * arg1 * _taxFee / 100 * stor7 / totalSupply:
                            return (-1 * arg1 * _taxFee / 100 * stor7 / totalSupply)
                        _13616 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_13616 + idx + 68] = mem[_12831 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_13616 + 68] = mem[_13616 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _13616 + -mem[64] + 100
                    require arg1
                    if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not arg1 * _taxFee / 100:
                        _11590 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_11590] = 30
                        mem[_11590 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor7 / totalSupply:
                            return (arg1 * stor7 / totalSupply)
                        _11924 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_11924 + idx + 68] = mem[_11590 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_11924 + 68] = mem[_11924 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _11924 + -mem[64] + 100
                    require arg1 * _taxFee / 100
                    if arg1 * _taxFee / 100 * stor7 / totalSupply / arg1 * _taxFee / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _11923 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_11923] = 30
                    mem[_11923 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                        _12447 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_12447 + idx + 68] = mem[_11923 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_12447 + 68] = mem[_12447 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _12447 + -mem[64] + 100
                    _13613 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_13613] = 30
                    mem[_13613 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 100 * stor7 / totalSupply):
                        return ((arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 100 * stor7 / totalSupply))
                    _14474 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_14474 + idx + 68] = mem[_13613 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_14474 + 68] = mem[_14474 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _14474 + -mem[64] + 100
                _9750 = mem[64]
                mem[64] = mem[64] + 64
                mem[_9750] = 26
                mem[_9750 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                if t >= stor7 / totalSupply:
                    _10229 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_10229] = 26
                    mem[_10229 + 32] = 'SafeMath: division by zero'
                    if s <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require s
                    if not arg1:
                        if not arg1 * _taxFee / 100:
                            return 0
                        require arg1 * _taxFee / 100
                        if arg1 * _taxFee / 100 * t / s / arg1 * _taxFee / 100 != t / s:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if arg1 * _taxFee / 100 * t / s > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 > -1 * arg1 * _taxFee / 100 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return (-1 * arg1 * _taxFee / 100 * t / s)
                    require arg1
                    if arg1 * t / s / arg1 != t / s:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not arg1 * _taxFee / 100:
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return (arg1 * t / s)
                    require arg1 * _taxFee / 100
                    if arg1 * _taxFee / 100 * t / s / arg1 * _taxFee / 100 != t / s:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if arg1 * _taxFee / 100 * t / s > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s):
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ((arg1 * t / s) - (arg1 * _taxFee / 100 * t / s))
                _10230 = mem[64]
                mem[64] = mem[64] + 64
                mem[_10230] = 26
                mem[_10230 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                if not arg1:
                    if not arg1 * _taxFee / 100:
                        return 0
                    require arg1 * _taxFee / 100
                    if arg1 * _taxFee / 100 * stor7 / totalSupply / arg1 * _taxFee / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if arg1 * _taxFee / 100 * stor7 / totalSupply > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > -1 * arg1 * _taxFee / 100 * stor7 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (-1 * arg1 * _taxFee / 100 * stor7 / totalSupply)
                require arg1
                if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not arg1 * _taxFee / 100:
                    if 0 > arg1 * stor7 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (arg1 * stor7 / totalSupply)
                require arg1 * _taxFee / 100
                if arg1 * _taxFee / 100 * stor7 / totalSupply / arg1 * _taxFee / 100 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if arg1 * _taxFee / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 100 * stor7 / totalSupply):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 100 * stor7 / totalSupply))
            require arg1
            if arg1 * _fundFee / arg1 != _fundFee:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            mem[224] = 26
            mem[256] = 'SafeMath: division by zero'
            mem[288] = 30
            mem[320] = 'SafeMath: subtraction overflow'
            if arg1 * _taxFee / 100 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[352] = 30
            mem[384] = 'SafeMath: subtraction overflow'
            if 0 > arg1 - (arg1 * _taxFee / 100):
                revert with 0, 'SafeMath: subtraction overflow'
            mem[64] = 480
            mem[416] = 30
            mem[448] = 'SafeMath: subtraction overflow'
            if arg1 * _fundFee / 100 > arg1 - (arg1 * _taxFee / 100):
                revert with 0, 'SafeMath: subtraction overflow'
            idx = 0
            s = totalSupply
            t = stor7
            while idx < stor5.length:
                mem[0] = stor5[idx]
                mem[32] = 1
                if stor1[stor5[idx]] > t:
                    _9999 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_9999] = 26
                    mem[_9999 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _10107 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_10107 + idx + 68] = mem[_9999 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_10107 + 68] = mem[_10107 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _10107 + -mem[64] + 100
                    require totalSupply
                    if not arg1:
                        if not arg1 * _taxFee / 100:
                            if not arg1 * _fundFee / 100:
                                return 0
                            require arg1 * _fundFee / 100
                            if arg1 * _fundFee / 100 * stor7 / totalSupply / arg1 * _fundFee / 100 != stor7 / totalSupply:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _11390 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_11390] = 30
                            mem[_11390 + 32] = 'SafeMath: subtraction overflow'
                            _12182 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12182] = 30
                            mem[_12182 + 32] = 'SafeMath: subtraction overflow'
                            _14033 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_14033] = 30
                            mem[_14033 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _fundFee / 100 * stor7 / totalSupply <= 0:
                                return (-1 * arg1 * _fundFee / 100 * stor7 / totalSupply)
                            _14912 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_14912 + idx + 68] = mem[_14033 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_14912 + 68] = mem[_14912 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _14912 + -mem[64] + 100
                        require arg1 * _taxFee / 100
                        if arg1 * _taxFee / 100 * stor7 / totalSupply / arg1 * _taxFee / 100 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not arg1 * _fundFee / 100:
                            _11389 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_11389] = 30
                            mem[_11389 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _taxFee / 100 * stor7 / totalSupply > 0:
                                _11575 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_11575 + idx + 68] = mem[_11389 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_11575 + 68] = mem[_11575 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _11575 + -mem[64] + 100
                            _12179 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12179] = 30
                            mem[_12179 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= -1 * arg1 * _taxFee / 100 * stor7 / totalSupply:
                                return (-1 * arg1 * _taxFee / 100 * stor7 / totalSupply)
                            _12810 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_12810 + idx + 68] = mem[_12179 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_12810 + 68] = mem[_12810 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _12810 + -mem[64] + 100
                        require arg1 * _fundFee / 100
                        if arg1 * _fundFee / 100 * stor7 / totalSupply / arg1 * _fundFee / 100 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _11574 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_11574] = 30
                        mem[_11574 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor7 / totalSupply > 0:
                            _11901 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_11901 + idx + 68] = mem[_11574 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_11901 + 68] = mem[_11901 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _11901 + -mem[64] + 100
                        _12807 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12807] = 30
                        mem[_12807 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > -1 * arg1 * _taxFee / 100 * stor7 / totalSupply:
                            _13581 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_13581 + idx + 68] = mem[_12807 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_13581 + 68] = mem[_13581 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _13581 + -mem[64] + 100
                        _14909 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_14909] = 30
                        mem[_14909 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _fundFee / 100 * stor7 / totalSupply <= -1 * arg1 * _taxFee / 100 * stor7 / totalSupply:
                            return ((-1 * arg1 * _taxFee / 100 * stor7 / totalSupply) - (arg1 * _fundFee / 100 * stor7 / totalSupply))
                        _15727 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_15727 + idx + 68] = mem[_14909 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_15727 + 68] = mem[_15727 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _15727 + -mem[64] + 100
                    require arg1
                    if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not arg1 * _taxFee / 100:
                        if not arg1 * _fundFee / 100:
                            _11388 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_11388] = 30
                            mem[_11388 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= arg1 * stor7 / totalSupply:
                                return (arg1 * stor7 / totalSupply)
                            _11571 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_11571 + idx + 68] = mem[_11388 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_11571 + 68] = mem[_11571 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _11571 + -mem[64] + 100
                        require arg1 * _fundFee / 100
                        if arg1 * _fundFee / 100 * stor7 / totalSupply / arg1 * _fundFee / 100 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _11570 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_11570] = 30
                        mem[_11570 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor7 / totalSupply:
                            _11897 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_11897 + idx + 68] = mem[_11570 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_11897 + 68] = mem[_11897 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _11897 + -mem[64] + 100
                        _12804 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12804] = 30
                        mem[_12804 + 32] = 'SafeMath: subtraction overflow'
                        _14908 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_14908] = 30
                        mem[_14908 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _fundFee / 100 * stor7 / totalSupply <= arg1 * stor7 / totalSupply:
                            return ((arg1 * stor7 / totalSupply) - (arg1 * _fundFee / 100 * stor7 / totalSupply))
                        _15724 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_15724 + idx + 68] = mem[_14908 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_15724 + 68] = mem[_15724 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _15724 + -mem[64] + 100
                    require arg1 * _taxFee / 100
                    if arg1 * _taxFee / 100 * stor7 / totalSupply / arg1 * _taxFee / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not arg1 * _fundFee / 100:
                        _11569 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_11569] = 30
                        mem[_11569 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                            _11894 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_11894 + idx + 68] = mem[_11569 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_11894 + 68] = mem[_11894 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _11894 + -mem[64] + 100
                        _12801 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12801] = 30
                        mem[_12801 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 100 * stor7 / totalSupply):
                            return ((arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 100 * stor7 / totalSupply))
                        _13578 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_13578 + idx + 68] = mem[_12801 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_13578 + 68] = mem[_13578 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _13578 + -mem[64] + 100
                    require arg1 * _fundFee / 100
                    if arg1 * _fundFee / 100 * stor7 / totalSupply / arg1 * _fundFee / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _11893 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_11893] = 30
                    mem[_11893 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                        _12410 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_12410 + idx + 68] = mem[_11893 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_12410 + 68] = mem[_12410 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _12410 + -mem[64] + 100
                    _13575 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_13575] = 30
                    mem[_13575 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 100 * stor7 / totalSupply):
                        _14444 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_14444 + idx + 68] = mem[_13575 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_14444 + 68] = mem[_14444 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _14444 + -mem[64] + 100
                    _15721 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_15721] = 30
                    mem[_15721 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _fundFee / 100 * stor7 / totalSupply <= (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 100 * stor7 / totalSupply):
                        return ((arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 100 * stor7 / totalSupply) - (arg1 * _fundFee / 100 * stor7 / totalSupply))
                    _16494 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_16494 + idx + 68] = mem[_15721 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_16494 + 68] = mem[_16494 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _16494 + -mem[64] + 100
                require idx < stor5.length
                mem[0] = stor5[idx]
                mem[32] = 2
                if stor2[stor5[idx]] <= s:
                    require idx < stor5.length
                    mem[0] = stor5[idx]
                    mem[32] = 1
                    _10072 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_10072] = 30
                    mem[_10072 + 32] = 'SafeMath: subtraction overflow'
                    if stor1[stor5[idx]] > t:
                        _10169 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_10169 + idx + 68] = mem[_10072 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_10169 + 68] = mem[_10169 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _10169 + -mem[64] + 100
                    require idx < stor5.length
                    mem[0] = stor5[idx]
                    mem[32] = 2
                    _10555 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_10555] = 30
                    mem[_10555 + 32] = 'SafeMath: subtraction overflow'
                    if stor2[stor5[idx]] <= s:
                        idx = idx + 1
                        s = s - stor2[stor5[idx]]
                        t = t - stor1[stor5[idx]]
                        continue 
                    _10677 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_10677 + idx + 68] = mem[_10555 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_10677 + 68] = mem[_10677 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _10677 + -mem[64] + 100
                _10110 = mem[64]
                mem[64] = mem[64] + 64
                mem[_10110] = 26
                mem[_10110 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _10226 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_10226 + idx + 68] = mem[_10110 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_10226 + 68] = mem[_10226 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _10226 + -mem[64] + 100
                require totalSupply
                if not arg1:
                    if not arg1 * _taxFee / 100:
                        if not arg1 * _fundFee / 100:
                            return 0
                        require arg1 * _fundFee / 100
                        if arg1 * _fundFee / 100 * stor7 / totalSupply / arg1 * _fundFee / 100 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _11580 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_11580] = 30
                        mem[_11580 + 32] = 'SafeMath: subtraction overflow'
                        _12819 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12819] = 30
                        mem[_12819 + 32] = 'SafeMath: subtraction overflow'
                        _14920 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_14920] = 30
                        mem[_14920 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _fundFee / 100 * stor7 / totalSupply <= 0:
                            return (-1 * arg1 * _fundFee / 100 * stor7 / totalSupply)
                        _15738 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_15738 + idx + 68] = mem[_14920 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_15738 + 68] = mem[_15738 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _15738 + -mem[64] + 100
                    require arg1 * _taxFee / 100
                    if arg1 * _taxFee / 100 * stor7 / totalSupply / arg1 * _taxFee / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not arg1 * _fundFee / 100:
                        _11579 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_11579] = 30
                        mem[_11579 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor7 / totalSupply > 0:
                            _11911 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_11911 + idx + 68] = mem[_11579 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_11911 + 68] = mem[_11911 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _11911 + -mem[64] + 100
                        _12816 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12816] = 30
                        mem[_12816 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -1 * arg1 * _taxFee / 100 * stor7 / totalSupply:
                            return (-1 * arg1 * _taxFee / 100 * stor7 / totalSupply)
                        _13594 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_13594 + idx + 68] = mem[_12816 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_13594 + 68] = mem[_13594 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _13594 + -mem[64] + 100
                    require arg1 * _fundFee / 100
                    if arg1 * _fundFee / 100 * stor7 / totalSupply / arg1 * _fundFee / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _11910 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_11910] = 30
                    mem[_11910 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor7 / totalSupply > 0:
                        _12426 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_12426 + idx + 68] = mem[_11910 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_12426 + 68] = mem[_12426 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _12426 + -mem[64] + 100
                    _13591 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_13591] = 30
                    mem[_13591 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > -1 * arg1 * _taxFee / 100 * stor7 / totalSupply:
                        _14456 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_14456 + idx + 68] = mem[_13591 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_14456 + 68] = mem[_14456 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _14456 + -mem[64] + 100
                    _15735 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_15735] = 30
                    mem[_15735 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _fundFee / 100 * stor7 / totalSupply <= -1 * arg1 * _taxFee / 100 * stor7 / totalSupply:
                        return ((-1 * arg1 * _taxFee / 100 * stor7 / totalSupply) - (arg1 * _fundFee / 100 * stor7 / totalSupply))
                    _16508 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_16508 + idx + 68] = mem[_15735 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_16508 + 68] = mem[_16508 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _16508 + -mem[64] + 100
                require arg1
                if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not arg1 * _taxFee / 100:
                    if not arg1 * _fundFee / 100:
                        _11578 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_11578] = 30
                        mem[_11578 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor7 / totalSupply:
                            return (arg1 * stor7 / totalSupply)
                        _11907 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_11907 + idx + 68] = mem[_11578 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_11907 + 68] = mem[_11907 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _11907 + -mem[64] + 100
                    require arg1 * _fundFee / 100
                    if arg1 * _fundFee / 100 * stor7 / totalSupply / arg1 * _fundFee / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _11906 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_11906] = 30
                    mem[_11906 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor7 / totalSupply:
                        _12422 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_12422 + idx + 68] = mem[_11906 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_12422 + 68] = mem[_12422 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _12422 + -mem[64] + 100
                    _13588 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_13588] = 30
                    mem[_13588 + 32] = 'SafeMath: subtraction overflow'
                    _15734 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_15734] = 30
                    mem[_15734 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _fundFee / 100 * stor7 / totalSupply <= arg1 * stor7 / totalSupply:
                        return ((arg1 * stor7 / totalSupply) - (arg1 * _fundFee / 100 * stor7 / totalSupply))
                    _16505 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_16505 + idx + 68] = mem[_15734 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_16505 + 68] = mem[_16505 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _16505 + -mem[64] + 100
                require arg1 * _taxFee / 100
                if arg1 * _taxFee / 100 * stor7 / totalSupply / arg1 * _taxFee / 100 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not arg1 * _fundFee / 100:
                    _11905 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_11905] = 30
                    mem[_11905 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                        _12419 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_12419 + idx + 68] = mem[_11905 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_12419 + 68] = mem[_12419 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _12419 + -mem[64] + 100
                    _13585 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_13585] = 30
                    mem[_13585 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 100 * stor7 / totalSupply):
                        return ((arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 100 * stor7 / totalSupply))
                    _14453 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_14453 + idx + 68] = mem[_13585 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_14453 + 68] = mem[_14453 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _14453 + -mem[64] + 100
                require arg1 * _fundFee / 100
                if arg1 * _fundFee / 100 * stor7 / totalSupply / arg1 * _fundFee / 100 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _12418 = mem[64]
                mem[64] = mem[64] + 64
                mem[_12418] = 30
                mem[_12418 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _taxFee / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                    _13156 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_13156 + idx + 68] = mem[_12418 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_13156 + 68] = mem[_13156 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _13156 + -mem[64] + 100
                _14450 = mem[64]
                mem[64] = mem[64] + 64
                mem[_14450] = 30
                mem[_14450 + 32] = 'SafeMath: subtraction overflow'
                if 0 > (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 100 * stor7 / totalSupply):
                    _15324 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_15324 + idx + 68] = mem[_14450 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_15324 + 68] = mem[_15324 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _15324 + -mem[64] + 100
                _16502 = mem[64]
                mem[64] = mem[64] + 64
                mem[_16502] = 30
                mem[_16502 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _fundFee / 100 * stor7 / totalSupply <= (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 100 * stor7 / totalSupply):
                    return ((arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 100 * stor7 / totalSupply) - (arg1 * _fundFee / 100 * stor7 / totalSupply))
                _17253 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_17253 + idx + 68] = mem[_16502 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_17253 + 68] = mem[_17253 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _17253 + -mem[64] + 100
            _9741 = mem[64]
            mem[64] = mem[64] + 64
            mem[_9741] = 26
            mem[_9741 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if t >= stor7 / totalSupply:
                _10223 = mem[64]
                mem[64] = mem[64] + 64
                mem[_10223] = 26
                mem[_10223 + 32] = 'SafeMath: division by zero'
                if s <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require s
                if not arg1:
                    if not arg1 * _taxFee / 100:
                        if not arg1 * _fundFee / 100:
                            return 0
                        require arg1 * _fundFee / 100
                        if arg1 * _fundFee / 100 * t / s / arg1 * _fundFee / 100 != t / s:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if arg1 * _fundFee / 100 * t / s > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return (-1 * arg1 * _fundFee / 100 * t / s)
                    require arg1 * _taxFee / 100
                    if arg1 * _taxFee / 100 * t / s / arg1 * _taxFee / 100 != t / s:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not arg1 * _fundFee / 100:
                        if arg1 * _taxFee / 100 * t / s > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 > -1 * arg1 * _taxFee / 100 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return (-1 * arg1 * _taxFee / 100 * t / s)
                    require arg1 * _fundFee / 100
                    if arg1 * _fundFee / 100 * t / s / arg1 * _fundFee / 100 != t / s:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if arg1 * _taxFee / 100 * t / s > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > -1 * arg1 * _taxFee / 100 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg1 * _fundFee / 100 * t / s > -1 * arg1 * _taxFee / 100 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ((-1 * arg1 * _taxFee / 100 * t / s) - (arg1 * _fundFee / 100 * t / s))
                require arg1
                if arg1 * t / s / arg1 != t / s:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not arg1 * _taxFee / 100:
                    if not arg1 * _fundFee / 100:
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return (arg1 * t / s)
                    require arg1 * _fundFee / 100
                    if arg1 * _fundFee / 100 * t / s / arg1 * _fundFee / 100 != t / s:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg1 * _fundFee / 100 * t / s > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ((arg1 * t / s) - (arg1 * _fundFee / 100 * t / s))
                require arg1 * _taxFee / 100
                if arg1 * _taxFee / 100 * t / s / arg1 * _taxFee / 100 != t / s:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not arg1 * _fundFee / 100:
                    if arg1 * _taxFee / 100 * t / s > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s):
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ((arg1 * t / s) - (arg1 * _taxFee / 100 * t / s))
                require arg1 * _fundFee / 100
                if arg1 * _fundFee / 100 * t / s / arg1 * _fundFee / 100 != t / s:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if arg1 * _taxFee / 100 * t / s > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s):
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg1 * _fundFee / 100 * t / s > (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((arg1 * t / s) - (arg1 * _taxFee / 100 * t / s) - (arg1 * _fundFee / 100 * t / s))
            _10224 = mem[64]
            mem[64] = mem[64] + 64
            mem[_10224] = 26
            mem[_10224 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if not arg1:
                if not arg1 * _taxFee / 100:
                    if not arg1 * _fundFee / 100:
                        return 0
                    require arg1 * _fundFee / 100
                    if arg1 * _fundFee / 100 * stor7 / totalSupply / arg1 * _fundFee / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if arg1 * _fundFee / 100 * stor7 / totalSupply > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (-1 * arg1 * _fundFee / 100 * stor7 / totalSupply)
                require arg1 * _taxFee / 100
                if arg1 * _taxFee / 100 * stor7 / totalSupply / arg1 * _taxFee / 100 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not arg1 * _fundFee / 100:
                    if arg1 * _taxFee / 100 * stor7 / totalSupply > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > -1 * arg1 * _taxFee / 100 * stor7 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (-1 * arg1 * _taxFee / 100 * stor7 / totalSupply)
                require arg1 * _fundFee / 100
                if arg1 * _fundFee / 100 * stor7 / totalSupply / arg1 * _fundFee / 100 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if arg1 * _taxFee / 100 * stor7 / totalSupply > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > -1 * arg1 * _taxFee / 100 * stor7 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg1 * _fundFee / 100 * stor7 / totalSupply > -1 * arg1 * _taxFee / 100 * stor7 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((-1 * arg1 * _taxFee / 100 * stor7 / totalSupply) - (arg1 * _fundFee / 100 * stor7 / totalSupply))
            require arg1
            if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not arg1 * _taxFee / 100:
                if not arg1 * _fundFee / 100:
                    if 0 > arg1 * stor7 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (arg1 * stor7 / totalSupply)
                require arg1 * _fundFee / 100
                if arg1 * _fundFee / 100 * stor7 / totalSupply / arg1 * _fundFee / 100 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if 0 > arg1 * stor7 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg1 * _fundFee / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((arg1 * stor7 / totalSupply) - (arg1 * _fundFee / 100 * stor7 / totalSupply))
            require arg1 * _taxFee / 100
            if arg1 * _taxFee / 100 * stor7 / totalSupply / arg1 * _taxFee / 100 != stor7 / totalSupply:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not arg1 * _fundFee / 100:
                if arg1 * _taxFee / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 100 * stor7 / totalSupply):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 100 * stor7 / totalSupply))
            require arg1 * _fundFee / 100
            if arg1 * _fundFee / 100 * stor7 / totalSupply / arg1 * _fundFee / 100 != stor7 / totalSupply:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if arg1 * _taxFee / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 > (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 100 * stor7 / totalSupply):
                revert with 0, 'SafeMath: subtraction overflow'
            if arg1 * _fundFee / 100 * stor7 / totalSupply > (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 100 * stor7 / totalSupply):
                revert with 0, 'SafeMath: subtraction overflow'
            return ((arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 100 * stor7 / totalSupply) - (arg1 * _fundFee / 100 * stor7 / totalSupply))
        require arg1
        if arg1 * _burnFee / arg1 != _burnFee:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        mem[160] = 26
        mem[192] = 'SafeMath: division by zero'
        if not arg1:
            mem[224] = 26
            mem[256] = 'SafeMath: division by zero'
            mem[288] = 30
            mem[320] = 'SafeMath: subtraction overflow'
            if arg1 * _taxFee / 100 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[352] = 30
            mem[384] = 'SafeMath: subtraction overflow'
            if arg1 * _burnFee / 100 > arg1 - (arg1 * _taxFee / 100):
                revert with 0, 'SafeMath: subtraction overflow'
            mem[64] = 480
            mem[416] = 30
            mem[448] = 'SafeMath: subtraction overflow'
            if 0 > arg1 - (arg1 * _taxFee / 100) - (arg1 * _burnFee / 100):
                revert with 0, 'SafeMath: subtraction overflow'
            idx = 0
            s = totalSupply
            t = stor7
            while idx < stor5.length:
                mem[0] = stor5[idx]
                mem[32] = 1
                if stor1[stor5[idx]] > t:
                    _9994 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_9994] = 26
                    mem[_9994 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _10103 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_10103 + idx + 68] = mem[_9994 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_10103 + 68] = mem[_10103 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _10103 + -mem[64] + 100
                    require totalSupply
                    if not arg1:
                        if not arg1 * _taxFee / 100:
                            if not arg1 * _burnFee / 100:
                                return 0
                            require arg1 * _burnFee / 100
                            if arg1 * _burnFee / 100 * stor7 / totalSupply / arg1 * _burnFee / 100 != stor7 / totalSupply:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _11386 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_11386] = 30
                            mem[_11386 + 32] = 'SafeMath: subtraction overflow'
                            _12170 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12170] = 30
                            mem[_12170 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _burnFee / 100 * stor7 / totalSupply > 0:
                                _12789 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_12789 + idx + 68] = mem[_12170 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_12789 + 68] = mem[_12789 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _12789 + -mem[64] + 100
                            _14004 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_14004] = 30
                            mem[_14004 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= -1 * arg1 * _burnFee / 100 * stor7 / totalSupply:
                                return (-1 * arg1 * _burnFee / 100 * stor7 / totalSupply)
                            _14884 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_14884 + idx + 68] = mem[_14004 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_14884 + 68] = mem[_14884 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _14884 + -mem[64] + 100
                        require arg1 * _taxFee / 100
                        if arg1 * _taxFee / 100 * stor7 / totalSupply / arg1 * _taxFee / 100 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not arg1 * _burnFee / 100:
                            _11385 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_11385] = 30
                            mem[_11385 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _taxFee / 100 * stor7 / totalSupply > 0:
                                _11561 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_11561 + idx + 68] = mem[_11385 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_11561 + 68] = mem[_11561 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _11561 + -mem[64] + 100
                            _12167 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12167] = 30
                            mem[_12167 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= -1 * arg1 * _taxFee / 100 * stor7 / totalSupply:
                                return (-1 * arg1 * _taxFee / 100 * stor7 / totalSupply)
                            _12786 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_12786 + idx + 68] = mem[_12167 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_12786 + 68] = mem[_12786 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _12786 + -mem[64] + 100
                        require arg1 * _burnFee / 100
                        if arg1 * _burnFee / 100 * stor7 / totalSupply / arg1 * _burnFee / 100 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _11560 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_11560] = 30
                        mem[_11560 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor7 / totalSupply > 0:
                            _11874 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_11874 + idx + 68] = mem[_11560 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_11874 + 68] = mem[_11874 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _11874 + -mem[64] + 100
                        _12783 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12783] = 30
                        mem[_12783 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _burnFee / 100 * stor7 / totalSupply > -1 * arg1 * _taxFee / 100 * stor7 / totalSupply:
                            _13541 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_13541 + idx + 68] = mem[_12783 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_13541 + 68] = mem[_13541 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _13541 + -mem[64] + 100
                        _14881 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_14881] = 30
                        mem[_14881 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= (-1 * arg1 * _taxFee / 100 * stor7 / totalSupply) - (arg1 * _burnFee / 100 * stor7 / totalSupply):
                            return ((-1 * arg1 * _taxFee / 100 * stor7 / totalSupply) - (arg1 * _burnFee / 100 * stor7 / totalSupply))
                        _15693 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_15693 + idx + 68] = mem[_14881 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_15693 + 68] = mem[_15693 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _15693 + -mem[64] + 100
                    require arg1
                    if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not arg1 * _taxFee / 100:
                        if not arg1 * _burnFee / 100:
                            _11384 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_11384] = 30
                            mem[_11384 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= arg1 * stor7 / totalSupply:
                                return (arg1 * stor7 / totalSupply)
                            _11557 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_11557 + idx + 68] = mem[_11384 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_11557 + 68] = mem[_11557 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _11557 + -mem[64] + 100
                        require arg1 * _burnFee / 100
                        if arg1 * _burnFee / 100 * stor7 / totalSupply / arg1 * _burnFee / 100 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _11556 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_11556] = 30
                        mem[_11556 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor7 / totalSupply:
                            _11870 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_11870 + idx + 68] = mem[_11556 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_11870 + 68] = mem[_11870 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _11870 + -mem[64] + 100
                        _12780 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12780] = 30
                        mem[_12780 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _burnFee / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                            _13538 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_13538 + idx + 68] = mem[_12780 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_13538 + 68] = mem[_13538 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _13538 + -mem[64] + 100
                        _14878 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_14878] = 30
                        mem[_14878 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= (arg1 * stor7 / totalSupply) - (arg1 * _burnFee / 100 * stor7 / totalSupply):
                            return ((arg1 * stor7 / totalSupply) - (arg1 * _burnFee / 100 * stor7 / totalSupply))
                        _15690 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_15690 + idx + 68] = mem[_14878 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_15690 + 68] = mem[_15690 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _15690 + -mem[64] + 100
                    require arg1 * _taxFee / 100
                    if arg1 * _taxFee / 100 * stor7 / totalSupply / arg1 * _taxFee / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not arg1 * _burnFee / 100:
                        _11555 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_11555] = 30
                        mem[_11555 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                            _11867 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_11867 + idx + 68] = mem[_11555 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_11867 + 68] = mem[_11867 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _11867 + -mem[64] + 100
                        _12777 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12777] = 30
                        mem[_12777 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 100 * stor7 / totalSupply):
                            return ((arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 100 * stor7 / totalSupply))
                        _13535 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_13535 + idx + 68] = mem[_12777 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_13535 + 68] = mem[_13535 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _13535 + -mem[64] + 100
                    require arg1 * _burnFee / 100
                    if arg1 * _burnFee / 100 * stor7 / totalSupply / arg1 * _burnFee / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _11866 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_11866] = 30
                    mem[_11866 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                        _12372 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_12372 + idx + 68] = mem[_11866 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_12372 + 68] = mem[_12372 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _12372 + -mem[64] + 100
                    _13532 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_13532] = 30
                    mem[_13532 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _burnFee / 100 * stor7 / totalSupply > (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 100 * stor7 / totalSupply):
                        _14398 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_14398 + idx + 68] = mem[_13532 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_14398 + 68] = mem[_14398 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _14398 + -mem[64] + 100
                    _15687 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_15687] = 30
                    mem[_15687 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 100 * stor7 / totalSupply) - (arg1 * _burnFee / 100 * stor7 / totalSupply):
                        return ((arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 100 * stor7 / totalSupply) - (arg1 * _burnFee / 100 * stor7 / totalSupply))
                    _16456 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_16456 + idx + 68] = mem[_15687 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_16456 + 68] = mem[_16456 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _16456 + -mem[64] + 100
                require idx < stor5.length
                mem[0] = stor5[idx]
                mem[32] = 2
                if stor2[stor5[idx]] <= s:
                    require idx < stor5.length
                    mem[0] = stor5[idx]
                    mem[32] = 1
                    _10070 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_10070] = 30
                    mem[_10070 + 32] = 'SafeMath: subtraction overflow'
                    if stor1[stor5[idx]] > t:
                        _10166 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_10166 + idx + 68] = mem[_10070 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_10166 + 68] = mem[_10166 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _10166 + -mem[64] + 100
                    require idx < stor5.length
                    mem[0] = stor5[idx]
                    mem[32] = 2
                    _10551 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_10551] = 30
                    mem[_10551 + 32] = 'SafeMath: subtraction overflow'
                    if stor2[stor5[idx]] <= s:
                        idx = idx + 1
                        s = s - stor2[stor5[idx]]
                        t = t - stor1[stor5[idx]]
                        continue 
                    _10670 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_10670 + idx + 68] = mem[_10551 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_10670 + 68] = mem[_10670 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _10670 + -mem[64] + 100
                _10106 = mem[64]
                mem[64] = mem[64] + 64
                mem[_10106] = 26
                mem[_10106 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _10220 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_10220 + idx + 68] = mem[_10106 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_10220 + 68] = mem[_10220 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _10220 + -mem[64] + 100
                require totalSupply
                if not arg1:
                    if not arg1 * _taxFee / 100:
                        if not arg1 * _burnFee / 100:
                            return 0
                        require arg1 * _burnFee / 100
                        if arg1 * _burnFee / 100 * stor7 / totalSupply / arg1 * _burnFee / 100 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _11566 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_11566] = 30
                        mem[_11566 + 32] = 'SafeMath: subtraction overflow'
                        _12798 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12798] = 30
                        mem[_12798 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _burnFee / 100 * stor7 / totalSupply > 0:
                            _13558 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_13558 + idx + 68] = mem[_12798 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_13558 + 68] = mem[_13558 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _13558 + -mem[64] + 100
                        _14892 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_14892] = 30
                        mem[_14892 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -1 * arg1 * _burnFee / 100 * stor7 / totalSupply:
                            return (-1 * arg1 * _burnFee / 100 * stor7 / totalSupply)
                        _15706 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_15706 + idx + 68] = mem[_14892 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_15706 + 68] = mem[_15706 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _15706 + -mem[64] + 100
                    require arg1 * _taxFee / 100
                    if arg1 * _taxFee / 100 * stor7 / totalSupply / arg1 * _taxFee / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not arg1 * _burnFee / 100:
                        _11565 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_11565] = 30
                        mem[_11565 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor7 / totalSupply > 0:
                            _11884 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_11884 + idx + 68] = mem[_11565 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_11884 + 68] = mem[_11884 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _11884 + -mem[64] + 100
                        _12795 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12795] = 30
                        mem[_12795 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -1 * arg1 * _taxFee / 100 * stor7 / totalSupply:
                            return (-1 * arg1 * _taxFee / 100 * stor7 / totalSupply)
                        _13555 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_13555 + idx + 68] = mem[_12795 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_13555 + 68] = mem[_13555 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _13555 + -mem[64] + 100
                    require arg1 * _burnFee / 100
                    if arg1 * _burnFee / 100 * stor7 / totalSupply / arg1 * _burnFee / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _11883 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_11883] = 30
                    mem[_11883 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor7 / totalSupply > 0:
                        _12388 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_12388 + idx + 68] = mem[_11883 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_12388 + 68] = mem[_12388 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _12388 + -mem[64] + 100
                    _13552 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_13552] = 30
                    mem[_13552 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _burnFee / 100 * stor7 / totalSupply > -1 * arg1 * _taxFee / 100 * stor7 / totalSupply:
                        _14415 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_14415 + idx + 68] = mem[_13552 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_14415 + 68] = mem[_14415 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _14415 + -mem[64] + 100
                    _15703 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_15703] = 30
                    mem[_15703 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (-1 * arg1 * _taxFee / 100 * stor7 / totalSupply) - (arg1 * _burnFee / 100 * stor7 / totalSupply):
                        return ((-1 * arg1 * _taxFee / 100 * stor7 / totalSupply) - (arg1 * _burnFee / 100 * stor7 / totalSupply))
                    _16470 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_16470 + idx + 68] = mem[_15703 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_16470 + 68] = mem[_16470 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _16470 + -mem[64] + 100
                require arg1
                if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not arg1 * _taxFee / 100:
                    if not arg1 * _burnFee / 100:
                        _11564 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_11564] = 30
                        mem[_11564 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor7 / totalSupply:
                            return (arg1 * stor7 / totalSupply)
                        _11880 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_11880 + idx + 68] = mem[_11564 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_11880 + 68] = mem[_11880 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _11880 + -mem[64] + 100
                    require arg1 * _burnFee / 100
                    if arg1 * _burnFee / 100 * stor7 / totalSupply / arg1 * _burnFee / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _11879 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_11879] = 30
                    mem[_11879 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor7 / totalSupply:
                        _12384 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_12384 + idx + 68] = mem[_11879 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_12384 + 68] = mem[_12384 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _12384 + -mem[64] + 100
                    _13549 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_13549] = 30
                    mem[_13549 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _burnFee / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                        _14412 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_14412 + idx + 68] = mem[_13549 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_14412 + 68] = mem[_14412 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _14412 + -mem[64] + 100
                    _15700 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_15700] = 30
                    mem[_15700 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (arg1 * stor7 / totalSupply) - (arg1 * _burnFee / 100 * stor7 / totalSupply):
                        return ((arg1 * stor7 / totalSupply) - (arg1 * _burnFee / 100 * stor7 / totalSupply))
                    _16467 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_16467 + idx + 68] = mem[_15700 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_16467 + 68] = mem[_16467 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _16467 + -mem[64] + 100
                require arg1 * _taxFee / 100
                if arg1 * _taxFee / 100 * stor7 / totalSupply / arg1 * _taxFee / 100 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not arg1 * _burnFee / 100:
                    _11878 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_11878] = 30
                    mem[_11878 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                        _12381 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_12381 + idx + 68] = mem[_11878 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_12381 + 68] = mem[_12381 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _12381 + -mem[64] + 100
                    _13546 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_13546] = 30
                    mem[_13546 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 100 * stor7 / totalSupply):
                        return ((arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 100 * stor7 / totalSupply))
                    _14409 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_14409 + idx + 68] = mem[_13546 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_14409 + 68] = mem[_14409 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _14409 + -mem[64] + 100
                require arg1 * _burnFee / 100
                if arg1 * _burnFee / 100 * stor7 / totalSupply / arg1 * _burnFee / 100 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _12380 = mem[64]
                mem[64] = mem[64] + 64
                mem[_12380] = 30
                mem[_12380 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _taxFee / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                    _13119 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_13119 + idx + 68] = mem[_12380 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_13119 + 68] = mem[_13119 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _13119 + -mem[64] + 100
                _14406 = mem[64]
                mem[64] = mem[64] + 64
                mem[_14406] = 30
                mem[_14406 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _burnFee / 100 * stor7 / totalSupply > (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 100 * stor7 / totalSupply):
                    _15293 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_15293 + idx + 68] = mem[_14406 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_15293 + 68] = mem[_15293 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _15293 + -mem[64] + 100
                _16464 = mem[64]
                mem[64] = mem[64] + 64
                mem[_16464] = 30
                mem[_16464 + 32] = 'SafeMath: subtraction overflow'
                if 0 <= (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 100 * stor7 / totalSupply) - (arg1 * _burnFee / 100 * stor7 / totalSupply):
                    return ((arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 100 * stor7 / totalSupply) - (arg1 * _burnFee / 100 * stor7 / totalSupply))
                _17216 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_17216 + idx + 68] = mem[_16464 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_17216 + 68] = mem[_17216 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _17216 + -mem[64] + 100
            _9732 = mem[64]
            mem[64] = mem[64] + 64
            mem[_9732] = 26
            mem[_9732 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if t >= stor7 / totalSupply:
                _10217 = mem[64]
                mem[64] = mem[64] + 64
                mem[_10217] = 26
                mem[_10217 + 32] = 'SafeMath: division by zero'
                if s <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require s
                if not arg1:
                    if not arg1 * _taxFee / 100:
                        if not arg1 * _burnFee / 100:
                            return 0
                        require arg1 * _burnFee / 100
                        if arg1 * _burnFee / 100 * t / s / arg1 * _burnFee / 100 != t / s:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if arg1 * _burnFee / 100 * t / s > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 > -1 * arg1 * _burnFee / 100 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return (-1 * arg1 * _burnFee / 100 * t / s)
                    require arg1 * _taxFee / 100
                    if arg1 * _taxFee / 100 * t / s / arg1 * _taxFee / 100 != t / s:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not arg1 * _burnFee / 100:
                        if arg1 * _taxFee / 100 * t / s > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 > -1 * arg1 * _taxFee / 100 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return (-1 * arg1 * _taxFee / 100 * t / s)
                    require arg1 * _burnFee / 100
                    if arg1 * _burnFee / 100 * t / s / arg1 * _burnFee / 100 != t / s:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if arg1 * _taxFee / 100 * t / s > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg1 * _burnFee / 100 * t / s > -1 * arg1 * _taxFee / 100 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > (-1 * arg1 * _taxFee / 100 * t / s) - (arg1 * _burnFee / 100 * t / s):
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ((-1 * arg1 * _taxFee / 100 * t / s) - (arg1 * _burnFee / 100 * t / s))
                require arg1
                if arg1 * t / s / arg1 != t / s:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not arg1 * _taxFee / 100:
                    if not arg1 * _burnFee / 100:
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return (arg1 * t / s)
                    require arg1 * _burnFee / 100
                    if arg1 * _burnFee / 100 * t / s / arg1 * _burnFee / 100 != t / s:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg1 * _burnFee / 100 * t / s > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > (arg1 * t / s) - (arg1 * _burnFee / 100 * t / s):
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ((arg1 * t / s) - (arg1 * _burnFee / 100 * t / s))
                require arg1 * _taxFee / 100
                if arg1 * _taxFee / 100 * t / s / arg1 * _taxFee / 100 != t / s:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not arg1 * _burnFee / 100:
                    if arg1 * _taxFee / 100 * t / s > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s):
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ((arg1 * t / s) - (arg1 * _taxFee / 100 * t / s))
                require arg1 * _burnFee / 100
                if arg1 * _burnFee / 100 * t / s / arg1 * _burnFee / 100 != t / s:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if arg1 * _taxFee / 100 * t / s > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg1 * _burnFee / 100 * t / s > (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s):
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s) - (arg1 * _burnFee / 100 * t / s):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((arg1 * t / s) - (arg1 * _taxFee / 100 * t / s) - (arg1 * _burnFee / 100 * t / s))
            _10218 = mem[64]
            mem[64] = mem[64] + 64
            mem[_10218] = 26
            mem[_10218 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if not arg1:
                if not arg1 * _taxFee / 100:
                    if not arg1 * _burnFee / 100:
                        return 0
                    require arg1 * _burnFee / 100
                    if arg1 * _burnFee / 100 * stor7 / totalSupply / arg1 * _burnFee / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if arg1 * _burnFee / 100 * stor7 / totalSupply > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > -1 * arg1 * _burnFee / 100 * stor7 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (-1 * arg1 * _burnFee / 100 * stor7 / totalSupply)
                require arg1 * _taxFee / 100
                if arg1 * _taxFee / 100 * stor7 / totalSupply / arg1 * _taxFee / 100 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not arg1 * _burnFee / 100:
                    if arg1 * _taxFee / 100 * stor7 / totalSupply > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > -1 * arg1 * _taxFee / 100 * stor7 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (-1 * arg1 * _taxFee / 100 * stor7 / totalSupply)
                require arg1 * _burnFee / 100
                if arg1 * _burnFee / 100 * stor7 / totalSupply / arg1 * _burnFee / 100 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if arg1 * _taxFee / 100 * stor7 / totalSupply > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg1 * _burnFee / 100 * stor7 / totalSupply > -1 * arg1 * _taxFee / 100 * stor7 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > (-1 * arg1 * _taxFee / 100 * stor7 / totalSupply) - (arg1 * _burnFee / 100 * stor7 / totalSupply):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((-1 * arg1 * _taxFee / 100 * stor7 / totalSupply) - (arg1 * _burnFee / 100 * stor7 / totalSupply))
            require arg1
            if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not arg1 * _taxFee / 100:
                if not arg1 * _burnFee / 100:
                    if 0 > arg1 * stor7 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (arg1 * stor7 / totalSupply)
                require arg1 * _burnFee / 100
                if arg1 * _burnFee / 100 * stor7 / totalSupply / arg1 * _burnFee / 100 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if 0 > arg1 * stor7 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg1 * _burnFee / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > (arg1 * stor7 / totalSupply) - (arg1 * _burnFee / 100 * stor7 / totalSupply):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((arg1 * stor7 / totalSupply) - (arg1 * _burnFee / 100 * stor7 / totalSupply))
            require arg1 * _taxFee / 100
            if arg1 * _taxFee / 100 * stor7 / totalSupply / arg1 * _taxFee / 100 != stor7 / totalSupply:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not arg1 * _burnFee / 100:
                if arg1 * _taxFee / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 100 * stor7 / totalSupply):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 100 * stor7 / totalSupply))
            require arg1 * _burnFee / 100
            if arg1 * _burnFee / 100 * stor7 / totalSupply / arg1 * _burnFee / 100 != stor7 / totalSupply:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if arg1 * _taxFee / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            if arg1 * _burnFee / 100 * stor7 / totalSupply > (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 100 * stor7 / totalSupply):
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 > (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 100 * stor7 / totalSupply) - (arg1 * _burnFee / 100 * stor7 / totalSupply):
                revert with 0, 'SafeMath: subtraction overflow'
            return ((arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 100 * stor7 / totalSupply) - (arg1 * _burnFee / 100 * stor7 / totalSupply))
        require arg1
        if arg1 * _fundFee / arg1 != _fundFee:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        mem[224] = 26
        mem[256] = 'SafeMath: division by zero'
        mem[288] = 30
        mem[320] = 'SafeMath: subtraction overflow'
        if arg1 * _taxFee / 100 > arg1:
            revert with 0, 'SafeMath: subtraction overflow'
        mem[352] = 30
        mem[384] = 'SafeMath: subtraction overflow'
        if arg1 * _burnFee / 100 > arg1 - (arg1 * _taxFee / 100):
            revert with 0, 'SafeMath: subtraction overflow'
        mem[64] = 480
        mem[416] = 30
        mem[448] = 'SafeMath: subtraction overflow'
        if arg1 * _fundFee / 100 > arg1 - (arg1 * _taxFee / 100) - (arg1 * _burnFee / 100):
            revert with 0, 'SafeMath: subtraction overflow'
        idx = 0
        s = totalSupply
        t = stor7
        while idx < stor5.length:
            mem[0] = stor5[idx]
            mem[32] = 1
            if stor1[stor5[idx]] > t:
                _9989 = mem[64]
                mem[64] = mem[64] + 64
                mem[_9989] = 26
                mem[_9989 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _10099 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_10099 + idx + 68] = mem[_9989 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_10099 + 68] = mem[_10099 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _10099 + -mem[64] + 100
                require totalSupply
                if not arg1:
                    if not arg1 * _taxFee / 100:
                        if not arg1 * _burnFee / 100:
                            if not arg1 * _fundFee / 100:
                                return 0
                            require arg1 * _fundFee / 100
                            if arg1 * _fundFee / 100 * stor7 / totalSupply / arg1 * _fundFee / 100 != stor7 / totalSupply:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _11382 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_11382] = 30
                            mem[_11382 + 32] = 'SafeMath: subtraction overflow'
                            _12160 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12160] = 30
                            mem[_12160 + 32] = 'SafeMath: subtraction overflow'
                            _13969 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_13969] = 30
                            mem[_13969 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _fundFee / 100 * stor7 / totalSupply <= 0:
                                return (-1 * arg1 * _fundFee / 100 * stor7 / totalSupply)
                            _14849 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_14849 + idx + 68] = mem[_13969 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_14849 + 68] = mem[_14849 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _14849 + -mem[64] + 100
                        require arg1 * _burnFee / 100
                        if arg1 * _burnFee / 100 * stor7 / totalSupply / arg1 * _burnFee / 100 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not arg1 * _fundFee / 100:
                            _11381 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_11381] = 30
                            mem[_11381 + 32] = 'SafeMath: subtraction overflow'
                            _12159 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12159] = 30
                            mem[_12159 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _burnFee / 100 * stor7 / totalSupply > 0:
                                _12764 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_12764 + idx + 68] = mem[_12159 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_12764 + 68] = mem[_12764 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _12764 + -mem[64] + 100
                            _13966 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_13966] = 30
                            mem[_13966 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= -1 * arg1 * _burnFee / 100 * stor7 / totalSupply:
                                return (-1 * arg1 * _burnFee / 100 * stor7 / totalSupply)
                            _14846 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_14846 + idx + 68] = mem[_13966 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_14846 + 68] = mem[_14846 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _14846 + -mem[64] + 100
                        require arg1 * _fundFee / 100
                        if arg1 * _fundFee / 100 * stor7 / totalSupply / arg1 * _fundFee / 100 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _11548 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_11548] = 30
                        mem[_11548 + 32] = 'SafeMath: subtraction overflow'
                        _12763 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12763] = 30
                        mem[_12763 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _burnFee / 100 * stor7 / totalSupply > 0:
                            _13492 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_13492 + idx + 68] = mem[_12763 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_13492 + 68] = mem[_13492 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _13492 + -mem[64] + 100
                        _14843 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_14843] = 30
                        mem[_14843 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _fundFee / 100 * stor7 / totalSupply <= -1 * arg1 * _burnFee / 100 * stor7 / totalSupply:
                            return ((-1 * arg1 * _burnFee / 100 * stor7 / totalSupply) - (arg1 * _fundFee / 100 * stor7 / totalSupply))
                        _15643 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_15643 + idx + 68] = mem[_14843 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_15643 + 68] = mem[_15643 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _15643 + -mem[64] + 100
                    require arg1 * _taxFee / 100
                    if arg1 * _taxFee / 100 * stor7 / totalSupply / arg1 * _taxFee / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not arg1 * _burnFee / 100:
                        if not arg1 * _fundFee / 100:
                            _11380 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_11380] = 30
                            mem[_11380 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _taxFee / 100 * stor7 / totalSupply > 0:
                                _11545 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_11545 + idx + 68] = mem[_11380 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_11545 + 68] = mem[_11545 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _11545 + -mem[64] + 100
                            _12156 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12156] = 30
                            mem[_12156 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= -1 * arg1 * _taxFee / 100 * stor7 / totalSupply:
                                return (-1 * arg1 * _taxFee / 100 * stor7 / totalSupply)
                            _12760 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_12760 + idx + 68] = mem[_12156 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_12760 + 68] = mem[_12760 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _12760 + -mem[64] + 100
                        require arg1 * _fundFee / 100
                        if arg1 * _fundFee / 100 * stor7 / totalSupply / arg1 * _fundFee / 100 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _11544 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_11544] = 30
                        mem[_11544 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor7 / totalSupply > 0:
                            _11844 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_11844 + idx + 68] = mem[_11544 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_11844 + 68] = mem[_11844 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _11844 + -mem[64] + 100
                        _12757 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12757] = 30
                        mem[_12757 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > -1 * arg1 * _taxFee / 100 * stor7 / totalSupply:
                            _13488 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_13488 + idx + 68] = mem[_12757 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_13488 + 68] = mem[_13488 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _13488 + -mem[64] + 100
                        _14840 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_14840] = 30
                        mem[_14840 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _fundFee / 100 * stor7 / totalSupply <= -1 * arg1 * _taxFee / 100 * stor7 / totalSupply:
                            return ((-1 * arg1 * _taxFee / 100 * stor7 / totalSupply) - (arg1 * _fundFee / 100 * stor7 / totalSupply))
                        _15640 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_15640 + idx + 68] = mem[_14840 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_15640 + 68] = mem[_15640 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _15640 + -mem[64] + 100
                    require arg1 * _burnFee / 100
                    if arg1 * _burnFee / 100 * stor7 / totalSupply / arg1 * _burnFee / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not arg1 * _fundFee / 100:
                        _11543 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_11543] = 30
                        mem[_11543 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor7 / totalSupply > 0:
                            _11841 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_11841 + idx + 68] = mem[_11543 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_11841 + 68] = mem[_11841 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _11841 + -mem[64] + 100
                        _12754 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12754] = 30
                        mem[_12754 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _burnFee / 100 * stor7 / totalSupply > -1 * arg1 * _taxFee / 100 * stor7 / totalSupply:
                            _13485 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_13485 + idx + 68] = mem[_12754 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_13485 + 68] = mem[_13485 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _13485 + -mem[64] + 100
                        _14837 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_14837] = 30
                        mem[_14837 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= (-1 * arg1 * _taxFee / 100 * stor7 / totalSupply) - (arg1 * _burnFee / 100 * stor7 / totalSupply):
                            return ((-1 * arg1 * _taxFee / 100 * stor7 / totalSupply) - (arg1 * _burnFee / 100 * stor7 / totalSupply))
                        _15637 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_15637 + idx + 68] = mem[_14837 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_15637 + 68] = mem[_15637 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _15637 + -mem[64] + 100
                    require arg1 * _fundFee / 100
                    if arg1 * _fundFee / 100 * stor7 / totalSupply / arg1 * _fundFee / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _11840 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_11840] = 30
                    mem[_11840 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor7 / totalSupply > 0:
                        _12327 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_12327 + idx + 68] = mem[_11840 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_12327 + 68] = mem[_12327 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _12327 + -mem[64] + 100
                    _13482 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_13482] = 30
                    mem[_13482 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _burnFee / 100 * stor7 / totalSupply > -1 * arg1 * _taxFee / 100 * stor7 / totalSupply:
                        _14331 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_14331 + idx + 68] = mem[_13482 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_14331 + 68] = mem[_14331 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _14331 + -mem[64] + 100
                    _15634 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_15634] = 30
                    mem[_15634 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _fundFee / 100 * stor7 / totalSupply <= (-1 * arg1 * _taxFee / 100 * stor7 / totalSupply) - (arg1 * _burnFee / 100 * stor7 / totalSupply):
                        return ((-1 * arg1 * _taxFee / 100 * stor7 / totalSupply) - (arg1 * _burnFee / 100 * stor7 / totalSupply) - (arg1 * _fundFee / 100 * stor7 / totalSupply))
                    _16393 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_16393 + idx + 68] = mem[_15634 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_16393 + 68] = mem[_16393 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _16393 + -mem[64] + 100
                require arg1
                if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not arg1 * _taxFee / 100:
                    if not arg1 * _burnFee / 100:
                        if not arg1 * _fundFee / 100:
                            _11379 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_11379] = 30
                            mem[_11379 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= arg1 * stor7 / totalSupply:
                                return (arg1 * stor7 / totalSupply)
                            _11540 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_11540 + idx + 68] = mem[_11379 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_11540 + 68] = mem[_11540 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _11540 + -mem[64] + 100
                        require arg1 * _fundFee / 100
                        if arg1 * _fundFee / 100 * stor7 / totalSupply / arg1 * _fundFee / 100 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _11539 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_11539] = 30
                        mem[_11539 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor7 / totalSupply:
                            _11836 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_11836 + idx + 68] = mem[_11539 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_11836 + 68] = mem[_11836 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _11836 + -mem[64] + 100
                        _12751 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12751] = 30
                        mem[_12751 + 32] = 'SafeMath: subtraction overflow'
                        _14836 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_14836] = 30
                        mem[_14836 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _fundFee / 100 * stor7 / totalSupply <= arg1 * stor7 / totalSupply:
                            return ((arg1 * stor7 / totalSupply) - (arg1 * _fundFee / 100 * stor7 / totalSupply))
                        _15631 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_15631 + idx + 68] = mem[_14836 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_15631 + 68] = mem[_15631 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _15631 + -mem[64] + 100
                    require arg1 * _burnFee / 100
                    if arg1 * _burnFee / 100 * stor7 / totalSupply / arg1 * _burnFee / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not arg1 * _fundFee / 100:
                        _11538 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_11538] = 30
                        mem[_11538 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor7 / totalSupply:
                            _11833 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_11833 + idx + 68] = mem[_11538 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_11833 + 68] = mem[_11833 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _11833 + -mem[64] + 100
                        _12748 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12748] = 30
                        mem[_12748 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _burnFee / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                            _13479 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_13479 + idx + 68] = mem[_12748 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_13479 + 68] = mem[_13479 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _13479 + -mem[64] + 100
                        _14833 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_14833] = 30
                        mem[_14833 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= (arg1 * stor7 / totalSupply) - (arg1 * _burnFee / 100 * stor7 / totalSupply):
                            return ((arg1 * stor7 / totalSupply) - (arg1 * _burnFee / 100 * stor7 / totalSupply))
                        _15628 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_15628 + idx + 68] = mem[_14833 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_15628 + 68] = mem[_15628 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _15628 + -mem[64] + 100
                    require arg1 * _fundFee / 100
                    if arg1 * _fundFee / 100 * stor7 / totalSupply / arg1 * _fundFee / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _11832 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_11832] = 30
                    mem[_11832 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor7 / totalSupply:
                        _12321 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_12321 + idx + 68] = mem[_11832 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_12321 + 68] = mem[_12321 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _12321 + -mem[64] + 100
                    _13476 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_13476] = 30
                    mem[_13476 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _burnFee / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                        _14327 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_14327 + idx + 68] = mem[_13476 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_14327 + 68] = mem[_14327 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _14327 + -mem[64] + 100
                    _15625 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_15625] = 30
                    mem[_15625 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _fundFee / 100 * stor7 / totalSupply <= (arg1 * stor7 / totalSupply) - (arg1 * _burnFee / 100 * stor7 / totalSupply):
                        return ((arg1 * stor7 / totalSupply) - (arg1 * _burnFee / 100 * stor7 / totalSupply) - (arg1 * _fundFee / 100 * stor7 / totalSupply))
                    _16388 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_16388 + idx + 68] = mem[_15625 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_16388 + 68] = mem[_16388 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _16388 + -mem[64] + 100
                require arg1 * _taxFee / 100
                if arg1 * _taxFee / 100 * stor7 / totalSupply / arg1 * _taxFee / 100 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not arg1 * _burnFee / 100:
                    if not arg1 * _fundFee / 100:
                        _11537 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_11537] = 30
                        mem[_11537 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                            _11829 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_11829 + idx + 68] = mem[_11537 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_11829 + 68] = mem[_11829 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _11829 + -mem[64] + 100
                        _12745 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12745] = 30
                        mem[_12745 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 100 * stor7 / totalSupply):
                            return ((arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 100 * stor7 / totalSupply))
                        _13473 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_13473 + idx + 68] = mem[_12745 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_13473 + 68] = mem[_13473 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _13473 + -mem[64] + 100
                    require arg1 * _fundFee / 100
                    if arg1 * _fundFee / 100 * stor7 / totalSupply / arg1 * _fundFee / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _11828 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_11828] = 30
                    mem[_11828 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                        _12317 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_12317 + idx + 68] = mem[_11828 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_12317 + 68] = mem[_12317 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _12317 + -mem[64] + 100
                    _13470 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_13470] = 30
                    mem[_13470 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 100 * stor7 / totalSupply):
                        _14323 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_14323 + idx + 68] = mem[_13470 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_14323 + 68] = mem[_14323 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _14323 + -mem[64] + 100
                    _15622 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_15622] = 30
                    mem[_15622 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _fundFee / 100 * stor7 / totalSupply <= (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 100 * stor7 / totalSupply):
                        return ((arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 100 * stor7 / totalSupply) - (arg1 * _fundFee / 100 * stor7 / totalSupply))
                    _16385 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_16385 + idx + 68] = mem[_15622 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_16385 + 68] = mem[_16385 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _16385 + -mem[64] + 100
                require arg1 * _burnFee / 100
                if arg1 * _burnFee / 100 * stor7 / totalSupply / arg1 * _burnFee / 100 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not arg1 * _fundFee / 100:
                    _11827 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_11827] = 30
                    mem[_11827 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                        _12314 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_12314 + idx + 68] = mem[_11827 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_12314 + 68] = mem[_12314 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _12314 + -mem[64] + 100
                    _13467 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_13467] = 30
                    mem[_13467 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _burnFee / 100 * stor7 / totalSupply > (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 100 * stor7 / totalSupply):
                        _14320 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_14320 + idx + 68] = mem[_13467 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_14320 + 68] = mem[_14320 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _14320 + -mem[64] + 100
                    _15619 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_15619] = 30
                    mem[_15619 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 100 * stor7 / totalSupply) - (arg1 * _burnFee / 100 * stor7 / totalSupply):
                        return ((arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 100 * stor7 / totalSupply) - (arg1 * _burnFee / 100 * stor7 / totalSupply))
                    _16382 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_16382 + idx + 68] = mem[_15619 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_16382 + 68] = mem[_16382 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _16382 + -mem[64] + 100
                require arg1 * _fundFee / 100
                if arg1 * _fundFee / 100 * stor7 / totalSupply / arg1 * _fundFee / 100 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _12313 = mem[64]
                mem[64] = mem[64] + 64
                mem[_12313] = 30
                mem[_12313 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _taxFee / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                    _13057 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_13057 + idx + 68] = mem[_12313 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_13057 + 68] = mem[_13057 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _13057 + -mem[64] + 100
                _14317 = mem[64]
                mem[64] = mem[64] + 64
                mem[_14317] = 30
                mem[_14317 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _burnFee / 100 * stor7 / totalSupply > (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 100 * stor7 / totalSupply):
                    _15227 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_15227 + idx + 68] = mem[_14317 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_15227 + 68] = mem[_15227 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _15227 + -mem[64] + 100
                _16379 = mem[64]
                mem[64] = mem[64] + 64
                mem[_16379] = 30
                mem[_16379 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _fundFee / 100 * stor7 / totalSupply <= (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 100 * stor7 / totalSupply) - (arg1 * _burnFee / 100 * stor7 / totalSupply):
                    return ((arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 100 * stor7 / totalSupply) - (arg1 * _burnFee / 100 * stor7 / totalSupply) - (arg1 * _fundFee / 100 * stor7 / totalSupply))
                _17143 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_17143 + idx + 68] = mem[_16379 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_17143 + 68] = mem[_17143 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _17143 + -mem[64] + 100
            require idx < stor5.length
            mem[0] = stor5[idx]
            mem[32] = 2
            if stor2[stor5[idx]] <= s:
                require idx < stor5.length
                mem[0] = stor5[idx]
                mem[32] = 1
                _10068 = mem[64]
                mem[64] = mem[64] + 64
                mem[_10068] = 30
                mem[_10068 + 32] = 'SafeMath: subtraction overflow'
                if stor1[stor5[idx]] > t:
                    _10163 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_10163 + idx + 68] = mem[_10068 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_10163 + 68] = mem[_10163 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _10163 + -mem[64] + 100
                require idx < stor5.length
                mem[0] = stor5[idx]
                mem[32] = 2
                _10547 = mem[64]
                mem[64] = mem[64] + 64
                mem[_10547] = 30
                mem[_10547 + 32] = 'SafeMath: subtraction overflow'
                if stor2[stor5[idx]] <= s:
                    idx = idx + 1
                    s = s - stor2[stor5[idx]]
                    t = t - stor1[stor5[idx]]
                    continue 
                _10663 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_10663 + idx + 68] = mem[_10547 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_10663 + 68] = mem[_10663 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _10663 + -mem[64] + 100
            _10102 = mem[64]
            mem[64] = mem[64] + 64
            mem[_10102] = 26
            mem[_10102 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                _10214 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_10214 + idx + 68] = mem[_10102 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_10214 + 68] = mem[_10214 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _10214 + -mem[64] + 100
            require totalSupply
            if not arg1:
                if not arg1 * _taxFee / 100:
                    if not arg1 * _burnFee / 100:
                        if not arg1 * _fundFee / 100:
                            return 0
                        require arg1 * _fundFee / 100
                        if arg1 * _fundFee / 100 * stor7 / totalSupply / arg1 * _fundFee / 100 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _11552 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_11552] = 30
                        mem[_11552 + 32] = 'SafeMath: subtraction overflow'
                        _12774 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12774] = 30
                        mem[_12774 + 32] = 'SafeMath: subtraction overflow'
                        _14864 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_14864] = 30
                        mem[_14864 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _fundFee / 100 * stor7 / totalSupply <= 0:
                            return (-1 * arg1 * _fundFee / 100 * stor7 / totalSupply)
                        _15668 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_15668 + idx + 68] = mem[_14864 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_15668 + 68] = mem[_15668 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _15668 + -mem[64] + 100
                    require arg1 * _burnFee / 100
                    if arg1 * _burnFee / 100 * stor7 / totalSupply / arg1 * _burnFee / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not arg1 * _fundFee / 100:
                        _11551 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_11551] = 30
                        mem[_11551 + 32] = 'SafeMath: subtraction overflow'
                        _12773 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12773] = 30
                        mem[_12773 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _burnFee / 100 * stor7 / totalSupply > 0:
                            _13515 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_13515 + idx + 68] = mem[_12773 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_13515 + 68] = mem[_13515 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _13515 + -mem[64] + 100
                        _14861 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_14861] = 30
                        mem[_14861 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -1 * arg1 * _burnFee / 100 * stor7 / totalSupply:
                            return (-1 * arg1 * _burnFee / 100 * stor7 / totalSupply)
                        _15665 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_15665 + idx + 68] = mem[_14861 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_15665 + 68] = mem[_15665 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _15665 + -mem[64] + 100
                    require arg1 * _fundFee / 100
                    if arg1 * _fundFee / 100 * stor7 / totalSupply / arg1 * _fundFee / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _11859 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_11859] = 30
                    mem[_11859 + 32] = 'SafeMath: subtraction overflow'
                    _13514 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_13514] = 30
                    mem[_13514 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _burnFee / 100 * stor7 / totalSupply > 0:
                        _14364 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_14364 + idx + 68] = mem[_13514 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_14364 + 68] = mem[_14364 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _14364 + -mem[64] + 100
                    _15662 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_15662] = 30
                    mem[_15662 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _fundFee / 100 * stor7 / totalSupply <= -1 * arg1 * _burnFee / 100 * stor7 / totalSupply:
                        return ((-1 * arg1 * _burnFee / 100 * stor7 / totalSupply) - (arg1 * _fundFee / 100 * stor7 / totalSupply))
                    _16427 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_16427 + idx + 68] = mem[_15662 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_16427 + 68] = mem[_16427 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _16427 + -mem[64] + 100
                require arg1 * _taxFee / 100
                if arg1 * _taxFee / 100 * stor7 / totalSupply / arg1 * _taxFee / 100 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not arg1 * _burnFee / 100:
                    if not arg1 * _fundFee / 100:
                        _11550 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_11550] = 30
                        mem[_11550 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor7 / totalSupply > 0:
                            _11856 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_11856 + idx + 68] = mem[_11550 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_11856 + 68] = mem[_11856 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _11856 + -mem[64] + 100
                        _12770 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12770] = 30
                        mem[_12770 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -1 * arg1 * _taxFee / 100 * stor7 / totalSupply:
                            return (-1 * arg1 * _taxFee / 100 * stor7 / totalSupply)
                        _13511 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_13511 + idx + 68] = mem[_12770 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_13511 + 68] = mem[_13511 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _13511 + -mem[64] + 100
                    require arg1 * _fundFee / 100
                    if arg1 * _fundFee / 100 * stor7 / totalSupply / arg1 * _fundFee / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _11855 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_11855] = 30
                    mem[_11855 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor7 / totalSupply > 0:
                        _12350 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_12350 + idx + 68] = mem[_11855 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_12350 + 68] = mem[_12350 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _12350 + -mem[64] + 100
                    _13508 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_13508] = 30
                    mem[_13508 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > -1 * arg1 * _taxFee / 100 * stor7 / totalSupply:
                        _14360 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_14360 + idx + 68] = mem[_13508 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_14360 + 68] = mem[_14360 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _14360 + -mem[64] + 100
                    _15659 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_15659] = 30
                    mem[_15659 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _fundFee / 100 * stor7 / totalSupply <= -1 * arg1 * _taxFee / 100 * stor7 / totalSupply:
                        return ((-1 * arg1 * _taxFee / 100 * stor7 / totalSupply) - (arg1 * _fundFee / 100 * stor7 / totalSupply))
                    _16424 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_16424 + idx + 68] = mem[_15659 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_16424 + 68] = mem[_16424 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _16424 + -mem[64] + 100
                require arg1 * _burnFee / 100
                if arg1 * _burnFee / 100 * stor7 / totalSupply / arg1 * _burnFee / 100 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not arg1 * _fundFee / 100:
                    _11854 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_11854] = 30
                    mem[_11854 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor7 / totalSupply > 0:
                        _12347 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_12347 + idx + 68] = mem[_11854 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_12347 + 68] = mem[_12347 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _12347 + -mem[64] + 100
                    _13505 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_13505] = 30
                    mem[_13505 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _burnFee / 100 * stor7 / totalSupply > -1 * arg1 * _taxFee / 100 * stor7 / totalSupply:
                        _14357 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_14357 + idx + 68] = mem[_13505 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_14357 + 68] = mem[_14357 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _14357 + -mem[64] + 100
                    _15656 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_15656] = 30
                    mem[_15656 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (-1 * arg1 * _taxFee / 100 * stor7 / totalSupply) - (arg1 * _burnFee / 100 * stor7 / totalSupply):
                        return ((-1 * arg1 * _taxFee / 100 * stor7 / totalSupply) - (arg1 * _burnFee / 100 * stor7 / totalSupply))
                    _16421 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_16421 + idx + 68] = mem[_15656 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_16421 + 68] = mem[_16421 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _16421 + -mem[64] + 100
                require arg1 * _fundFee / 100
                if arg1 * _fundFee / 100 * stor7 / totalSupply / arg1 * _fundFee / 100 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _12346 = mem[64]
                mem[64] = mem[64] + 64
                mem[_12346] = 30
                mem[_12346 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _taxFee / 100 * stor7 / totalSupply > 0:
                    _13084 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_13084 + idx + 68] = mem[_12346 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_13084 + 68] = mem[_13084 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _13084 + -mem[64] + 100
                _14354 = mem[64]
                mem[64] = mem[64] + 64
                mem[_14354] = 30
                mem[_14354 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _burnFee / 100 * stor7 / totalSupply > -1 * arg1 * _taxFee / 100 * stor7 / totalSupply:
                    _15253 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_15253 + idx + 68] = mem[_14354 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_15253 + 68] = mem[_15253 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _15253 + -mem[64] + 100
                _16418 = mem[64]
                mem[64] = mem[64] + 64
                mem[_16418] = 30
                mem[_16418 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _fundFee / 100 * stor7 / totalSupply <= (-1 * arg1 * _taxFee / 100 * stor7 / totalSupply) - (arg1 * _burnFee / 100 * stor7 / totalSupply):
                    return ((-1 * arg1 * _taxFee / 100 * stor7 / totalSupply) - (arg1 * _burnFee / 100 * stor7 / totalSupply) - (arg1 * _fundFee / 100 * stor7 / totalSupply))
                _17177 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_17177 + idx + 68] = mem[_16418 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_17177 + 68] = mem[_17177 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _17177 + -mem[64] + 100
            require arg1
            if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not arg1 * _taxFee / 100:
                if not arg1 * _burnFee / 100:
                    if not arg1 * _fundFee / 100:
                        _11549 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_11549] = 30
                        mem[_11549 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor7 / totalSupply:
                            return (arg1 * stor7 / totalSupply)
                        _11851 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_11851 + idx + 68] = mem[_11549 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_11851 + 68] = mem[_11851 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _11851 + -mem[64] + 100
                    require arg1 * _fundFee / 100
                    if arg1 * _fundFee / 100 * stor7 / totalSupply / arg1 * _fundFee / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _11850 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_11850] = 30
                    mem[_11850 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor7 / totalSupply:
                        _12342 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_12342 + idx + 68] = mem[_11850 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_12342 + 68] = mem[_12342 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _12342 + -mem[64] + 100
                    _13502 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_13502] = 30
                    mem[_13502 + 32] = 'SafeMath: subtraction overflow'
                    _15655 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_15655] = 30
                    mem[_15655 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _fundFee / 100 * stor7 / totalSupply <= arg1 * stor7 / totalSupply:
                        return ((arg1 * stor7 / totalSupply) - (arg1 * _fundFee / 100 * stor7 / totalSupply))
                    _16415 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_16415 + idx + 68] = mem[_15655 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_16415 + 68] = mem[_16415 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _16415 + -mem[64] + 100
                require arg1 * _burnFee / 100
                if arg1 * _burnFee / 100 * stor7 / totalSupply / arg1 * _burnFee / 100 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not arg1 * _fundFee / 100:
                    _11849 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_11849] = 30
                    mem[_11849 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor7 / totalSupply:
                        _12339 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_12339 + idx + 68] = mem[_11849 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_12339 + 68] = mem[_12339 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _12339 + -mem[64] + 100
                    _13499 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_13499] = 30
                    mem[_13499 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _burnFee / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                        _14351 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_14351 + idx + 68] = mem[_13499 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_14351 + 68] = mem[_14351 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _14351 + -mem[64] + 100
                    _15652 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_15652] = 30
                    mem[_15652 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (arg1 * stor7 / totalSupply) - (arg1 * _burnFee / 100 * stor7 / totalSupply):
                        return ((arg1 * stor7 / totalSupply) - (arg1 * _burnFee / 100 * stor7 / totalSupply))
                    _16412 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_16412 + idx + 68] = mem[_15652 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_16412 + 68] = mem[_16412 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _16412 + -mem[64] + 100
                require arg1 * _fundFee / 100
                if arg1 * _fundFee / 100 * stor7 / totalSupply / arg1 * _fundFee / 100 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _12338 = mem[64]
                mem[64] = mem[64] + 64
                mem[_12338] = 30
                mem[_12338 + 32] = 'SafeMath: subtraction overflow'
                if 0 > arg1 * stor7 / totalSupply:
                    _13078 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_13078 + idx + 68] = mem[_12338 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_13078 + 68] = mem[_13078 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _13078 + -mem[64] + 100
                _14348 = mem[64]
                mem[64] = mem[64] + 64
                mem[_14348] = 30
                mem[_14348 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _burnFee / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                    _15249 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_15249 + idx + 68] = mem[_14348 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_15249 + 68] = mem[_15249 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _15249 + -mem[64] + 100
                _16409 = mem[64]
                mem[64] = mem[64] + 64
                mem[_16409] = 30
                mem[_16409 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _fundFee / 100 * stor7 / totalSupply <= (arg1 * stor7 / totalSupply) - (arg1 * _burnFee / 100 * stor7 / totalSupply):
                    return ((arg1 * stor7 / totalSupply) - (arg1 * _burnFee / 100 * stor7 / totalSupply) - (arg1 * _fundFee / 100 * stor7 / totalSupply))
                _17172 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_17172 + idx + 68] = mem[_16409 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_17172 + 68] = mem[_17172 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _17172 + -mem[64] + 100
            require arg1 * _taxFee / 100
            if arg1 * _taxFee / 100 * stor7 / totalSupply / arg1 * _taxFee / 100 != stor7 / totalSupply:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not arg1 * _burnFee / 100:
                if not arg1 * _fundFee / 100:
                    _11848 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_11848] = 30
                    mem[_11848 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                        _12335 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_12335 + idx + 68] = mem[_11848 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_12335 + 68] = mem[_12335 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _12335 + -mem[64] + 100
                    _13496 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_13496] = 30
                    mem[_13496 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 100 * stor7 / totalSupply):
                        return ((arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 100 * stor7 / totalSupply))
                    _14345 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_14345 + idx + 68] = mem[_13496 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_14345 + 68] = mem[_14345 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _14345 + -mem[64] + 100
                require arg1 * _fundFee / 100
                if arg1 * _fundFee / 100 * stor7 / totalSupply / arg1 * _fundFee / 100 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _12334 = mem[64]
                mem[64] = mem[64] + 64
                mem[_12334] = 30
                mem[_12334 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _taxFee / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                    _13074 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_13074 + idx + 68] = mem[_12334 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_13074 + 68] = mem[_13074 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _13074 + -mem[64] + 100
                _14342 = mem[64]
                mem[64] = mem[64] + 64
                mem[_14342] = 30
                mem[_14342 + 32] = 'SafeMath: subtraction overflow'
                if 0 > (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 100 * stor7 / totalSupply):
                    _15245 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_15245 + idx + 68] = mem[_14342 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_15245 + 68] = mem[_15245 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _15245 + -mem[64] + 100
                _16406 = mem[64]
                mem[64] = mem[64] + 64
                mem[_16406] = 30
                mem[_16406 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _fundFee / 100 * stor7 / totalSupply <= (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 100 * stor7 / totalSupply):
                    return ((arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 100 * stor7 / totalSupply) - (arg1 * _fundFee / 100 * stor7 / totalSupply))
                _17169 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_17169 + idx + 68] = mem[_16406 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_17169 + 68] = mem[_17169 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _17169 + -mem[64] + 100
            require arg1 * _burnFee / 100
            if arg1 * _burnFee / 100 * stor7 / totalSupply / arg1 * _burnFee / 100 != stor7 / totalSupply:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not arg1 * _fundFee / 100:
                _12333 = mem[64]
                mem[64] = mem[64] + 64
                mem[_12333] = 30
                mem[_12333 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _taxFee / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                    _13071 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_13071 + idx + 68] = mem[_12333 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_13071 + 68] = mem[_13071 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _13071 + -mem[64] + 100
                _14339 = mem[64]
                mem[64] = mem[64] + 64
                mem[_14339] = 30
                mem[_14339 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _burnFee / 100 * stor7 / totalSupply > (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 100 * stor7 / totalSupply):
                    _15242 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_15242 + idx + 68] = mem[_14339 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_15242 + 68] = mem[_15242 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _15242 + -mem[64] + 100
                _16403 = mem[64]
                mem[64] = mem[64] + 64
                mem[_16403] = 30
                mem[_16403 + 32] = 'SafeMath: subtraction overflow'
                if 0 <= (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 100 * stor7 / totalSupply) - (arg1 * _burnFee / 100 * stor7 / totalSupply):
                    return ((arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 100 * stor7 / totalSupply) - (arg1 * _burnFee / 100 * stor7 / totalSupply))
                _17166 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_17166 + idx + 68] = mem[_16403 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_17166 + 68] = mem[_17166 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _17166 + -mem[64] + 100
            require arg1 * _fundFee / 100
            if arg1 * _fundFee / 100 * stor7 / totalSupply / arg1 * _fundFee / 100 != stor7 / totalSupply:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _13070 = mem[64]
            mem[64] = mem[64] + 64
            mem[_13070] = 30
            mem[_13070 + 32] = 'SafeMath: subtraction overflow'
            if arg1 * _taxFee / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                _13970 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_13970 + idx + 68] = mem[_13070 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_13970 + 68] = mem[_13970 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _13970 + -mem[64] + 100
            _15239 = mem[64]
            mem[64] = mem[64] + 64
            mem[_15239] = 30
            mem[_15239 + 32] = 'SafeMath: subtraction overflow'
            if arg1 * _burnFee / 100 * stor7 / totalSupply > (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 100 * stor7 / totalSupply):
                _16106 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_16106 + idx + 68] = mem[_15239 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_16106 + 68] = mem[_16106 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _16106 + -mem[64] + 100
            _17163 = mem[64]
            mem[64] = mem[64] + 64
            mem[_17163] = 30
            mem[_17163 + 32] = 'SafeMath: subtraction overflow'
            if arg1 * _fundFee / 100 * stor7 / totalSupply <= (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 100 * stor7 / totalSupply) - (arg1 * _burnFee / 100 * stor7 / totalSupply):
                return ((arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 100 * stor7 / totalSupply) - (arg1 * _burnFee / 100 * stor7 / totalSupply) - (arg1 * _fundFee / 100 * stor7 / totalSupply))
            _17868 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_17868 + idx + 68] = mem[_17163 + idx + 32]
                idx = idx + 32
                continue 
            mem[_17868 + 68] = mem[_17868 + 70 len 30]
            revert with memory
              from mem[64]
               len _17868 + -mem[64] + 100
        _9723 = mem[64]
        mem[64] = mem[64] + 64
        mem[_9723] = 26
        mem[_9723 + 32] = 'SafeMath: division by zero'
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if t >= stor7 / totalSupply:
            _10211 = mem[64]
            mem[64] = mem[64] + 64
            mem[_10211] = 26
            mem[_10211 + 32] = 'SafeMath: division by zero'
            if s <= 0:
                revert with 0, 'SafeMath: division by zero'
            require s
            if not arg1:
                if not arg1 * _taxFee / 100:
                    if not arg1 * _burnFee / 100:
                        if not arg1 * _fundFee / 100:
                            return 0
                        require arg1 * _fundFee / 100
                        if arg1 * _fundFee / 100 * t / s / arg1 * _fundFee / 100 != t / s:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if arg1 * _fundFee / 100 * t / s > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return (-1 * arg1 * _fundFee / 100 * t / s)
                    require arg1 * _burnFee / 100
                    if arg1 * _burnFee / 100 * t / s / arg1 * _burnFee / 100 != t / s:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not arg1 * _fundFee / 100:
                        if arg1 * _burnFee / 100 * t / s > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 > -1 * arg1 * _burnFee / 100 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return (-1 * arg1 * _burnFee / 100 * t / s)
                    require arg1 * _fundFee / 100
                    if arg1 * _fundFee / 100 * t / s / arg1 * _fundFee / 100 != t / s:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if arg1 * _burnFee / 100 * t / s > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg1 * _fundFee / 100 * t / s > -1 * arg1 * _burnFee / 100 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ((-1 * arg1 * _burnFee / 100 * t / s) - (arg1 * _fundFee / 100 * t / s))
                require arg1 * _taxFee / 100
                if arg1 * _taxFee / 100 * t / s / arg1 * _taxFee / 100 != t / s:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not arg1 * _burnFee / 100:
                    if not arg1 * _fundFee / 100:
                        if arg1 * _taxFee / 100 * t / s > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 > -1 * arg1 * _taxFee / 100 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return (-1 * arg1 * _taxFee / 100 * t / s)
                    require arg1 * _fundFee / 100
                    if arg1 * _fundFee / 100 * t / s / arg1 * _fundFee / 100 != t / s:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if arg1 * _taxFee / 100 * t / s > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > -1 * arg1 * _taxFee / 100 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg1 * _fundFee / 100 * t / s > -1 * arg1 * _taxFee / 100 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ((-1 * arg1 * _taxFee / 100 * t / s) - (arg1 * _fundFee / 100 * t / s))
                require arg1 * _burnFee / 100
                if arg1 * _burnFee / 100 * t / s / arg1 * _burnFee / 100 != t / s:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not arg1 * _fundFee / 100:
                    if arg1 * _taxFee / 100 * t / s > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg1 * _burnFee / 100 * t / s > -1 * arg1 * _taxFee / 100 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > (-1 * arg1 * _taxFee / 100 * t / s) - (arg1 * _burnFee / 100 * t / s):
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ((-1 * arg1 * _taxFee / 100 * t / s) - (arg1 * _burnFee / 100 * t / s))
                require arg1 * _fundFee / 100
                if arg1 * _fundFee / 100 * t / s / arg1 * _fundFee / 100 != t / s:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if arg1 * _taxFee / 100 * t / s > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg1 * _burnFee / 100 * t / s > -1 * arg1 * _taxFee / 100 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg1 * _fundFee / 100 * t / s > (-1 * arg1 * _taxFee / 100 * t / s) - (arg1 * _burnFee / 100 * t / s):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((-1 * arg1 * _taxFee / 100 * t / s) - (arg1 * _burnFee / 100 * t / s) - (arg1 * _fundFee / 100 * t / s))
            require arg1
            if arg1 * t / s / arg1 != t / s:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not arg1 * _taxFee / 100:
                if not arg1 * _burnFee / 100:
                    if not arg1 * _fundFee / 100:
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return (arg1 * t / s)
                    require arg1 * _fundFee / 100
                    if arg1 * _fundFee / 100 * t / s / arg1 * _fundFee / 100 != t / s:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg1 * _fundFee / 100 * t / s > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ((arg1 * t / s) - (arg1 * _fundFee / 100 * t / s))
                require arg1 * _burnFee / 100
                if arg1 * _burnFee / 100 * t / s / arg1 * _burnFee / 100 != t / s:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not arg1 * _fundFee / 100:
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg1 * _burnFee / 100 * t / s > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > (arg1 * t / s) - (arg1 * _burnFee / 100 * t / s):
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ((arg1 * t / s) - (arg1 * _burnFee / 100 * t / s))
                require arg1 * _fundFee / 100
                if arg1 * _fundFee / 100 * t / s / arg1 * _fundFee / 100 != t / s:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if 0 > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg1 * _burnFee / 100 * t / s > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg1 * _fundFee / 100 * t / s > (arg1 * t / s) - (arg1 * _burnFee / 100 * t / s):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((arg1 * t / s) - (arg1 * _burnFee / 100 * t / s) - (arg1 * _fundFee / 100 * t / s))
            require arg1 * _taxFee / 100
            if arg1 * _taxFee / 100 * t / s / arg1 * _taxFee / 100 != t / s:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not arg1 * _burnFee / 100:
                if not arg1 * _fundFee / 100:
                    if arg1 * _taxFee / 100 * t / s > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s):
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ((arg1 * t / s) - (arg1 * _taxFee / 100 * t / s))
                require arg1 * _fundFee / 100
                if arg1 * _fundFee / 100 * t / s / arg1 * _fundFee / 100 != t / s:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if arg1 * _taxFee / 100 * t / s > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s):
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg1 * _fundFee / 100 * t / s > (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((arg1 * t / s) - (arg1 * _taxFee / 100 * t / s) - (arg1 * _fundFee / 100 * t / s))
            require arg1 * _burnFee / 100
            if arg1 * _burnFee / 100 * t / s / arg1 * _burnFee / 100 != t / s:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not arg1 * _fundFee / 100:
                if arg1 * _taxFee / 100 * t / s > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg1 * _burnFee / 100 * t / s > (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s):
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s) - (arg1 * _burnFee / 100 * t / s):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((arg1 * t / s) - (arg1 * _taxFee / 100 * t / s) - (arg1 * _burnFee / 100 * t / s))
            require arg1 * _fundFee / 100
            if arg1 * _fundFee / 100 * t / s / arg1 * _fundFee / 100 != t / s:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if arg1 * _taxFee / 100 * t / s > arg1 * t / s:
                revert with 0, 'SafeMath: subtraction overflow'
            if arg1 * _burnFee / 100 * t / s > (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s):
                revert with 0, 'SafeMath: subtraction overflow'
            if arg1 * _fundFee / 100 * t / s > (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s) - (arg1 * _burnFee / 100 * t / s):
                revert with 0, 'SafeMath: subtraction overflow'
            return ((arg1 * t / s) - (arg1 * _taxFee / 100 * t / s) - (arg1 * _burnFee / 100 * t / s) - (arg1 * _fundFee / 100 * t / s))
        _10212 = mem[64]
        mem[64] = mem[64] + 64
        mem[_10212] = 26
        mem[_10212 + 32] = 'SafeMath: division by zero'
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if not arg1:
            if not arg1 * _taxFee / 100:
                if not arg1 * _burnFee / 100:
                    if not arg1 * _fundFee / 100:
                        return 0
                    require arg1 * _fundFee / 100
                    if arg1 * _fundFee / 100 * stor7 / totalSupply / arg1 * _fundFee / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if arg1 * _fundFee / 100 * stor7 / totalSupply > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (-1 * arg1 * _fundFee / 100 * stor7 / totalSupply)
                require arg1 * _burnFee / 100
                if arg1 * _burnFee / 100 * stor7 / totalSupply / arg1 * _burnFee / 100 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not arg1 * _fundFee / 100:
                    if arg1 * _burnFee / 100 * stor7 / totalSupply > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > -1 * arg1 * _burnFee / 100 * stor7 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (-1 * arg1 * _burnFee / 100 * stor7 / totalSupply)
                require arg1 * _fundFee / 100
                if arg1 * _fundFee / 100 * stor7 / totalSupply / arg1 * _fundFee / 100 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if arg1 * _burnFee / 100 * stor7 / totalSupply > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg1 * _fundFee / 100 * stor7 / totalSupply > -1 * arg1 * _burnFee / 100 * stor7 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((-1 * arg1 * _burnFee / 100 * stor7 / totalSupply) - (arg1 * _fundFee / 100 * stor7 / totalSupply))
            require arg1 * _taxFee / 100
            if arg1 * _taxFee / 100 * stor7 / totalSupply / arg1 * _taxFee / 100 != stor7 / totalSupply:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not arg1 * _burnFee / 100:
                if not arg1 * _fundFee / 100:
                    if arg1 * _taxFee / 100 * stor7 / totalSupply > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > -1 * arg1 * _taxFee / 100 * stor7 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (-1 * arg1 * _taxFee / 100 * stor7 / totalSupply)
                require arg1 * _fundFee / 100
                if arg1 * _fundFee / 100 * stor7 / totalSupply / arg1 * _fundFee / 100 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if arg1 * _taxFee / 100 * stor7 / totalSupply > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > -1 * arg1 * _taxFee / 100 * stor7 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg1 * _fundFee / 100 * stor7 / totalSupply > -1 * arg1 * _taxFee / 100 * stor7 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((-1 * arg1 * _taxFee / 100 * stor7 / totalSupply) - (arg1 * _fundFee / 100 * stor7 / totalSupply))
            require arg1 * _burnFee / 100
            if arg1 * _burnFee / 100 * stor7 / totalSupply / arg1 * _burnFee / 100 != stor7 / totalSupply:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not arg1 * _fundFee / 100:
                if arg1 * _taxFee / 100 * stor7 / totalSupply > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg1 * _burnFee / 100 * stor7 / totalSupply > -1 * arg1 * _taxFee / 100 * stor7 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > (-1 * arg1 * _taxFee / 100 * stor7 / totalSupply) - (arg1 * _burnFee / 100 * stor7 / totalSupply):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((-1 * arg1 * _taxFee / 100 * stor7 / totalSupply) - (arg1 * _burnFee / 100 * stor7 / totalSupply))
            require arg1 * _fundFee / 100
            if arg1 * _fundFee / 100 * stor7 / totalSupply / arg1 * _fundFee / 100 != stor7 / totalSupply:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if arg1 * _taxFee / 100 * stor7 / totalSupply > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if arg1 * _burnFee / 100 * stor7 / totalSupply > -1 * arg1 * _taxFee / 100 * stor7 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            if arg1 * _fundFee / 100 * stor7 / totalSupply > (-1 * arg1 * _taxFee / 100 * stor7 / totalSupply) - (arg1 * _burnFee / 100 * stor7 / totalSupply):
                revert with 0, 'SafeMath: subtraction overflow'
            return ((-1 * arg1 * _taxFee / 100 * stor7 / totalSupply) - (arg1 * _burnFee / 100 * stor7 / totalSupply) - (arg1 * _fundFee / 100 * stor7 / totalSupply))
        require arg1
        if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not arg1 * _taxFee / 100:
            if not arg1 * _burnFee / 100:
                if not arg1 * _fundFee / 100:
                    if 0 > arg1 * stor7 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (arg1 * stor7 / totalSupply)
                require arg1 * _fundFee / 100
                if arg1 * _fundFee / 100 * stor7 / totalSupply / arg1 * _fundFee / 100 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if 0 > arg1 * stor7 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg1 * _fundFee / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((arg1 * stor7 / totalSupply) - (arg1 * _fundFee / 100 * stor7 / totalSupply))
            require arg1 * _burnFee / 100
            if arg1 * _burnFee / 100 * stor7 / totalSupply / arg1 * _burnFee / 100 != stor7 / totalSupply:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not arg1 * _fundFee / 100:
                if 0 > arg1 * stor7 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg1 * _burnFee / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > (arg1 * stor7 / totalSupply) - (arg1 * _burnFee / 100 * stor7 / totalSupply):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((arg1 * stor7 / totalSupply) - (arg1 * _burnFee / 100 * stor7 / totalSupply))
            require arg1 * _fundFee / 100
            if arg1 * _fundFee / 100 * stor7 / totalSupply / arg1 * _fundFee / 100 != stor7 / totalSupply:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if 0 > arg1 * stor7 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            if arg1 * _burnFee / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            if arg1 * _fundFee / 100 * stor7 / totalSupply > (arg1 * stor7 / totalSupply) - (arg1 * _burnFee / 100 * stor7 / totalSupply):
                revert with 0, 'SafeMath: subtraction overflow'
            return ((arg1 * stor7 / totalSupply) - (arg1 * _burnFee / 100 * stor7 / totalSupply) - (arg1 * _fundFee / 100 * stor7 / totalSupply))
        require arg1 * _taxFee / 100
        if arg1 * _taxFee / 100 * stor7 / totalSupply / arg1 * _taxFee / 100 != stor7 / totalSupply:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not arg1 * _burnFee / 100:
            if not arg1 * _fundFee / 100:
                if arg1 * _taxFee / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 100 * stor7 / totalSupply):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 100 * stor7 / totalSupply))
            require arg1 * _fundFee / 100
            if arg1 * _fundFee / 100 * stor7 / totalSupply / arg1 * _fundFee / 100 != stor7 / totalSupply:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if arg1 * _taxFee / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 > (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 100 * stor7 / totalSupply):
                revert with 0, 'SafeMath: subtraction overflow'
            if arg1 * _fundFee / 100 * stor7 / totalSupply > (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 100 * stor7 / totalSupply):
                revert with 0, 'SafeMath: subtraction overflow'
            return ((arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 100 * stor7 / totalSupply) - (arg1 * _fundFee / 100 * stor7 / totalSupply))
        require arg1 * _burnFee / 100
        if arg1 * _burnFee / 100 * stor7 / totalSupply / arg1 * _burnFee / 100 != stor7 / totalSupply:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not arg1 * _fundFee / 100:
            if arg1 * _taxFee / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            if arg1 * _burnFee / 100 * stor7 / totalSupply > (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 100 * stor7 / totalSupply):
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 > (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 100 * stor7 / totalSupply) - (arg1 * _burnFee / 100 * stor7 / totalSupply):
                revert with 0, 'SafeMath: subtraction overflow'
            return ((arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 100 * stor7 / totalSupply) - (arg1 * _burnFee / 100 * stor7 / totalSupply))
        require arg1 * _fundFee / 100
        if arg1 * _fundFee / 100 * stor7 / totalSupply / arg1 * _fundFee / 100 != stor7 / totalSupply:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if arg1 * _taxFee / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
            revert with 0, 'SafeMath: subtraction overflow'
        if arg1 * _burnFee / 100 * stor7 / totalSupply > (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 100 * stor7 / totalSupply):
            revert with 0, 'SafeMath: subtraction overflow'
        if arg1 * _fundFee / 100 * stor7 / totalSupply > (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 100 * stor7 / totalSupply) - (arg1 * _burnFee / 100 * stor7 / totalSupply):
            revert with 0, 'SafeMath: subtraction overflow'
        return ((arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 100 * stor7 / totalSupply) - (arg1 * _burnFee / 100 * stor7 / totalSupply) - (arg1 * _fundFee / 100 * stor7 / totalSupply))
    if not arg1:
        mem[96] = 26
        mem[128] = 'SafeMath: division by zero'
        if not arg1:
            mem[160] = 26
            mem[192] = 'SafeMath: division by zero'
            if not arg1:
                mem[224] = 26
                mem[256] = 'SafeMath: division by zero'
                mem[288] = 30
                mem[320] = 'SafeMath: subtraction overflow'
                if 0 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                mem[352] = 30
                mem[384] = 'SafeMath: subtraction overflow'
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
                        _10064 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_10064] = 26
                        mem[_10064 + 32] = 'SafeMath: division by zero'
                        if totalSupply <= 0:
                            _10159 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_10159 + idx + 68] = mem[_10064 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_10159 + 68] = mem[_10159 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _10159 + -mem[64] + 100
                        require totalSupply
                        if not arg1:
                            return 0
                        require arg1
                        if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _11433 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_11433] = 30
                        mem[_11433 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor7 / totalSupply:
                            return (arg1 * stor7 / totalSupply)
                        _11711 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_11711 + idx + 68] = mem[_11433 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_11711 + 68] = mem[_11711 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _11711 + -mem[64] + 100
                    require idx < stor5.length
                    mem[0] = stor5[idx]
                    mem[32] = 2
                    if stor2[stor5[idx]] > s:
                        _10162 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_10162] = 26
                        mem[_10162 + 32] = 'SafeMath: division by zero'
                        if totalSupply <= 0:
                            _10304 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_10304 + idx + 68] = mem[_10162 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_10304 + 68] = mem[_10304 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _10304 + -mem[64] + 100
                        require totalSupply
                        if not arg1:
                            return 0
                        require arg1
                        if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _11714 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_11714] = 30
                        mem[_11714 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor7 / totalSupply:
                            return (arg1 * stor7 / totalSupply)
                        _12138 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_12138 + idx + 68] = mem[_11714 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_12138 + 68] = mem[_12138 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _12138 + -mem[64] + 100
                    require idx < stor5.length
                    mem[0] = stor5[idx]
                    mem[32] = 1
                    _10098 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_10098] = 30
                    mem[_10098 + 32] = 'SafeMath: subtraction overflow'
                    if stor1[stor5[idx]] > t:
                        _10208 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_10208 + idx + 68] = mem[_10098 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_10208 + 68] = mem[_10208 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _10208 + -mem[64] + 100
                    require idx < stor5.length
                    mem[0] = stor5[idx]
                    mem[32] = 2
                    _10607 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_10607] = 30
                    mem[_10607 + 32] = 'SafeMath: subtraction overflow'
                    if stor2[stor5[idx]] <= s:
                        idx = idx + 1
                        s = s - stor2[stor5[idx]]
                        t = t - stor1[stor5[idx]]
                        continue 
                    _10768 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_10768 + idx + 68] = mem[_10607 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_10768 + 68] = mem[_10768 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _10768 + -mem[64] + 100
                _9846 = mem[64]
                mem[64] = mem[64] + 64
                mem[_9846] = 26
                mem[_9846 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                if t >= stor7 / totalSupply:
                    _10301 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_10301] = 26
                    mem[_10301 + 32] = 'SafeMath: division by zero'
                    if s <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require s
                    if not arg1:
                        return 0
                    require arg1
                    if arg1 * t / s / arg1 != t / s:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (arg1 * t / s)
                _10302 = mem[64]
                mem[64] = mem[64] + 64
                mem[_10302] = 26
                mem[_10302 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                if not arg1:
                    return 0
                require arg1
                if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if 0 > arg1 * stor7 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
            else:
                require arg1
                if arg1 * _fundFee / arg1 != _fundFee:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                mem[224] = 26
                mem[256] = 'SafeMath: division by zero'
                mem[288] = 30
                mem[320] = 'SafeMath: subtraction overflow'
                if 0 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                mem[352] = 30
                mem[384] = 'SafeMath: subtraction overflow'
                mem[64] = 480
                mem[416] = 30
                mem[448] = 'SafeMath: subtraction overflow'
                if arg1 * _fundFee / 100 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                idx = 0
                s = totalSupply
                t = stor7
                while idx < stor5.length:
                    mem[0] = stor5[idx]
                    mem[32] = 1
                    if stor1[stor5[idx]] > t:
                        _10059 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_10059] = 26
                        mem[_10059 + 32] = 'SafeMath: division by zero'
                        if totalSupply <= 0:
                            _10155 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_10155 + idx + 68] = mem[_10059 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_10155 + 68] = mem[_10155 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _10155 + -mem[64] + 100
                        require totalSupply
                        if not arg1:
                            if not arg1 * _fundFee / 100:
                                return 0
                            require arg1 * _fundFee / 100
                            if arg1 * _fundFee / 100 * stor7 / totalSupply / arg1 * _fundFee / 100 != stor7 / totalSupply:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _11431 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_11431] = 30
                            mem[_11431 + 32] = 'SafeMath: subtraction overflow'
                            _12283 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12283] = 30
                            mem[_12283 + 32] = 'SafeMath: subtraction overflow'
                            _14266 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_14266] = 30
                            mem[_14266 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _fundFee / 100 * stor7 / totalSupply <= 0:
                                return 0
                            _15161 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_15161 + idx + 68] = mem[_14266 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_15161 + 68] = mem[_15161 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _15161 + -mem[64] + 100
                        require arg1
                        if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not arg1 * _fundFee / 100:
                            _11430 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_11430] = 30
                            mem[_11430 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= arg1 * stor7 / totalSupply:
                                return (arg1 * stor7 / totalSupply)
                            _11704 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_11704 + idx + 68] = mem[_11430 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_11704 + 68] = mem[_11704 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _11704 + -mem[64] + 100
                        require arg1 * _fundFee / 100
                        if arg1 * _fundFee / 100 * stor7 / totalSupply / arg1 * _fundFee / 100 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _11703 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_11703] = 30
                        mem[_11703 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor7 / totalSupply:
                            _12127 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_12127 + idx + 68] = mem[_11703 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_12127 + 68] = mem[_12127 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _12127 + -mem[64] + 100
                        _13003 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_13003] = 30
                        mem[_13003 + 32] = 'SafeMath: subtraction overflow'
                        _15160 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_15160] = 30
                        mem[_15160 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _fundFee / 100 * stor7 / totalSupply <= arg1 * stor7 / totalSupply:
                            return (arg1 * stor7 / totalSupply)
                        _16043 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_16043 + idx + 68] = mem[_15160 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_16043 + 68] = mem[_16043 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _16043 + -mem[64] + 100
                    require idx < stor5.length
                    mem[0] = stor5[idx]
                    mem[32] = 2
                    if stor2[stor5[idx]] <= s:
                        require idx < stor5.length
                        mem[0] = stor5[idx]
                        mem[32] = 1
                        _10096 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_10096] = 30
                        mem[_10096 + 32] = 'SafeMath: subtraction overflow'
                        if stor1[stor5[idx]] > t:
                            _10205 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_10205 + idx + 68] = mem[_10096 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_10205 + 68] = mem[_10205 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _10205 + -mem[64] + 100
                        require idx < stor5.length
                        mem[0] = stor5[idx]
                        mem[32] = 2
                        _10603 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_10603] = 30
                        mem[_10603 + 32] = 'SafeMath: subtraction overflow'
                        if stor2[stor5[idx]] <= s:
                            idx = idx + 1
                            s = s - stor2[stor5[idx]]
                            t = t - stor1[stor5[idx]]
                            continue 
                        _10761 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_10761 + idx + 68] = mem[_10603 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_10761 + 68] = mem[_10761 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _10761 + -mem[64] + 100
                    _10158 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_10158] = 26
                    mem[_10158 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _10298 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_10298 + idx + 68] = mem[_10158 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_10298 + 68] = mem[_10298 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _10298 + -mem[64] + 100
                    require totalSupply
                    if not arg1:
                        if not arg1 * _fundFee / 100:
                            return 0
                        require arg1 * _fundFee / 100
                        if arg1 * _fundFee / 100 * stor7 / totalSupply / arg1 * _fundFee / 100 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _11708 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_11708] = 30
                        mem[_11708 + 32] = 'SafeMath: subtraction overflow'
                        _13009 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_13009] = 30
                        mem[_13009 + 32] = 'SafeMath: subtraction overflow'
                        _15165 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_15165] = 30
                        mem[_15165 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _fundFee / 100 * stor7 / totalSupply <= 0:
                            return 0
                        _16048 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_16048 + idx + 68] = mem[_15165 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_16048 + 68] = mem[_16048 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _16048 + -mem[64] + 100
                    require arg1
                    if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not arg1 * _fundFee / 100:
                        _11707 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_11707] = 30
                        mem[_11707 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor7 / totalSupply:
                            return (arg1 * stor7 / totalSupply)
                        _12132 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_12132 + idx + 68] = mem[_11707 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_12132 + 68] = mem[_12132 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _12132 + -mem[64] + 100
                    require arg1 * _fundFee / 100
                    if arg1 * _fundFee / 100 * stor7 / totalSupply / arg1 * _fundFee / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _12131 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_12131] = 30
                    mem[_12131 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor7 / totalSupply:
                        _12727 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_12727 + idx + 68] = mem[_12131 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_12727 + 68] = mem[_12727 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _12727 + -mem[64] + 100
                    _13908 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_13908] = 30
                    mem[_13908 + 32] = 'SafeMath: subtraction overflow'
                    _16047 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_16047] = 30
                    mem[_16047 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _fundFee / 100 * stor7 / totalSupply <= arg1 * stor7 / totalSupply:
                        return (arg1 * stor7 / totalSupply)
                    _16877 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_16877 + idx + 68] = mem[_16047 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_16877 + 68] = mem[_16877 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _16877 + -mem[64] + 100
                _9839 = mem[64]
                mem[64] = mem[64] + 64
                mem[_9839] = 26
                mem[_9839 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                if t >= stor7 / totalSupply:
                    _10295 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_10295] = 26
                    mem[_10295 + 32] = 'SafeMath: division by zero'
                    if s <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require s
                    if not arg1:
                        if arg1 * _fundFee / 100:
                            require arg1 * _fundFee / 100
                            if arg1 * _fundFee / 100 * t / s / arg1 * _fundFee / 100 != t / s:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if arg1 * _fundFee / 100 * t / s > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                return 0
                        else:
                            return 0
                    require arg1
                    if arg1 * t / s / arg1 != t / s:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not arg1 * _fundFee / 100:
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        require arg1 * _fundFee / 100
                        if arg1 * _fundFee / 100 * t / s / arg1 * _fundFee / 100 != t / s:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if arg1 * _fundFee / 100 * t / s > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow'
                    return (arg1 * t / s)
                _10296 = mem[64]
                mem[64] = mem[64] + 64
                mem[_10296] = 26
                mem[_10296 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                if not arg1:
                    if arg1 * _fundFee / 100:
                        require arg1 * _fundFee / 100
                        if arg1 * _fundFee / 100 * stor7 / totalSupply / arg1 * _fundFee / 100 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if arg1 * _fundFee / 100 * stor7 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            return 0
                    else:
                        return 0
                require arg1
                if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not arg1 * _fundFee / 100:
                    if 0 > arg1 * stor7 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                else:
                    require arg1 * _fundFee / 100
                    if arg1 * _fundFee / 100 * stor7 / totalSupply / arg1 * _fundFee / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if 0 > arg1 * stor7 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg1 * _fundFee / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
        else:
            require arg1
            if arg1 * _burnFee / arg1 != _burnFee:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            mem[160] = 26
            mem[192] = 'SafeMath: division by zero'
            if not arg1:
                mem[224] = 26
                mem[256] = 'SafeMath: division by zero'
                mem[288] = 30
                mem[320] = 'SafeMath: subtraction overflow'
                if 0 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                mem[352] = 30
                mem[384] = 'SafeMath: subtraction overflow'
                if arg1 * _burnFee / 100 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                mem[64] = 480
                mem[416] = 30
                mem[448] = 'SafeMath: subtraction overflow'
                if 0 > arg1 - (arg1 * _burnFee / 100):
                    revert with 0, 'SafeMath: subtraction overflow'
                idx = 0
                s = totalSupply
                t = stor7
                while idx < stor5.length:
                    mem[0] = stor5[idx]
                    mem[32] = 1
                    if stor1[stor5[idx]] > t:
                        _10054 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_10054] = 26
                        mem[_10054 + 32] = 'SafeMath: division by zero'
                        if totalSupply <= 0:
                            _10151 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_10151 + idx + 68] = mem[_10054 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_10151 + 68] = mem[_10151 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _10151 + -mem[64] + 100
                        require totalSupply
                        if not arg1:
                            if not arg1 * _burnFee / 100:
                                return 0
                            require arg1 * _burnFee / 100
                            if arg1 * _burnFee / 100 * stor7 / totalSupply / arg1 * _burnFee / 100 != stor7 / totalSupply:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _11428 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_11428] = 30
                            mem[_11428 + 32] = 'SafeMath: subtraction overflow'
                            _12278 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12278] = 30
                            mem[_12278 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _burnFee / 100 * stor7 / totalSupply > 0:
                                _12994 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_12994 + idx + 68] = mem[_12278 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_12994 + 68] = mem[_12994 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _12994 + -mem[64] + 100
                            _14256 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_14256] = 30
                            mem[_14256 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= -1 * arg1 * _burnFee / 100 * stor7 / totalSupply:
                                return 0
                            _15149 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_15149 + idx + 68] = mem[_14256 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_15149 + 68] = mem[_15149 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _15149 + -mem[64] + 100
                        require arg1
                        if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not arg1 * _burnFee / 100:
                            _11427 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_11427] = 30
                            mem[_11427 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= arg1 * stor7 / totalSupply:
                                return (arg1 * stor7 / totalSupply)
                            _11696 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_11696 + idx + 68] = mem[_11427 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_11696 + 68] = mem[_11696 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _11696 + -mem[64] + 100
                        require arg1 * _burnFee / 100
                        if arg1 * _burnFee / 100 * stor7 / totalSupply / arg1 * _burnFee / 100 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _11695 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_11695] = 30
                        mem[_11695 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor7 / totalSupply:
                            _12115 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_12115 + idx + 68] = mem[_11695 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_12115 + 68] = mem[_12115 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _12115 + -mem[64] + 100
                        _12991 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12991] = 30
                        mem[_12991 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _burnFee / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                            _13890 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_13890 + idx + 68] = mem[_12991 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_13890 + 68] = mem[_13890 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _13890 + -mem[64] + 100
                        _15146 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_15146] = 30
                        mem[_15146 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= (arg1 * stor7 / totalSupply) - (arg1 * _burnFee / 100 * stor7 / totalSupply):
                            return (arg1 * stor7 / totalSupply)
                        _16029 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_16029 + idx + 68] = mem[_15146 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_16029 + 68] = mem[_16029 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _16029 + -mem[64] + 100
                    require idx < stor5.length
                    mem[0] = stor5[idx]
                    mem[32] = 2
                    if stor2[stor5[idx]] <= s:
                        require idx < stor5.length
                        mem[0] = stor5[idx]
                        mem[32] = 1
                        _10094 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_10094] = 30
                        mem[_10094 + 32] = 'SafeMath: subtraction overflow'
                        if stor1[stor5[idx]] > t:
                            _10202 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_10202 + idx + 68] = mem[_10094 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_10202 + 68] = mem[_10202 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _10202 + -mem[64] + 100
                        require idx < stor5.length
                        mem[0] = stor5[idx]
                        mem[32] = 2
                        _10599 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_10599] = 30
                        mem[_10599 + 32] = 'SafeMath: subtraction overflow'
                        if stor2[stor5[idx]] <= s:
                            idx = idx + 1
                            s = s - stor2[stor5[idx]]
                            t = t - stor1[stor5[idx]]
                            continue 
                        _10754 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_10754 + idx + 68] = mem[_10599 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_10754 + 68] = mem[_10754 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _10754 + -mem[64] + 100
                    _10154 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_10154] = 26
                    mem[_10154 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _10292 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_10292 + idx + 68] = mem[_10154 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_10292 + 68] = mem[_10292 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _10292 + -mem[64] + 100
                    require totalSupply
                    if not arg1:
                        if not arg1 * _burnFee / 100:
                            return 0
                        require arg1 * _burnFee / 100
                        if arg1 * _burnFee / 100 * stor7 / totalSupply / arg1 * _burnFee / 100 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _11700 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_11700] = 30
                        mem[_11700 + 32] = 'SafeMath: subtraction overflow'
                        _13000 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_13000] = 30
                        mem[_13000 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _burnFee / 100 * stor7 / totalSupply > 0:
                            _13897 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_13897 + idx + 68] = mem[_13000 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_13897 + 68] = mem[_13897 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _13897 + -mem[64] + 100
                        _15153 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_15153] = 30
                        mem[_15153 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -1 * arg1 * _burnFee / 100 * stor7 / totalSupply:
                            return 0
                        _16036 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_16036 + idx + 68] = mem[_15153 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_16036 + 68] = mem[_16036 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _16036 + -mem[64] + 100
                    require arg1
                    if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not arg1 * _burnFee / 100:
                        _11699 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_11699] = 30
                        mem[_11699 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor7 / totalSupply:
                            return (arg1 * stor7 / totalSupply)
                        _12120 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_12120 + idx + 68] = mem[_11699 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_12120 + 68] = mem[_12120 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _12120 + -mem[64] + 100
                    require arg1 * _burnFee / 100
                    if arg1 * _burnFee / 100 * stor7 / totalSupply / arg1 * _burnFee / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _12119 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_12119] = 30
                    mem[_12119 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor7 / totalSupply:
                        _12713 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_12713 + idx + 68] = mem[_12119 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_12713 + 68] = mem[_12713 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _12713 + -mem[64] + 100
                    _13894 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_13894] = 30
                    mem[_13894 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _burnFee / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                        _14793 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_14793 + idx + 68] = mem[_13894 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_14793 + 68] = mem[_14793 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _14793 + -mem[64] + 100
                    _16033 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_16033] = 30
                    mem[_16033 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (arg1 * stor7 / totalSupply) - (arg1 * _burnFee / 100 * stor7 / totalSupply):
                        return (arg1 * stor7 / totalSupply)
                    _16861 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_16861 + idx + 68] = mem[_16033 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_16861 + 68] = mem[_16861 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _16861 + -mem[64] + 100
                _9830 = mem[64]
                mem[64] = mem[64] + 64
                mem[_9830] = 26
                mem[_9830 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                if t >= stor7 / totalSupply:
                    _10289 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_10289] = 26
                    mem[_10289 + 32] = 'SafeMath: division by zero'
                    if s <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require s
                    if not arg1:
                        if arg1 * _burnFee / 100:
                            require arg1 * _burnFee / 100
                            if arg1 * _burnFee / 100 * t / s / arg1 * _burnFee / 100 != t / s:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if arg1 * _burnFee / 100 * t / s > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0 > -1 * arg1 * _burnFee / 100 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                return 0
                        else:
                            return 0
                    require arg1
                    if arg1 * t / s / arg1 != t / s:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not arg1 * _burnFee / 100:
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        require arg1 * _burnFee / 100
                        if arg1 * _burnFee / 100 * t / s / arg1 * _burnFee / 100 != t / s:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if arg1 * _burnFee / 100 * t / s > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 > (arg1 * t / s) - (arg1 * _burnFee / 100 * t / s):
                            revert with 0, 'SafeMath: subtraction overflow'
                    return (arg1 * t / s)
                _10290 = mem[64]
                mem[64] = mem[64] + 64
                mem[_10290] = 26
                mem[_10290 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                if not arg1:
                    if arg1 * _burnFee / 100:
                        require arg1 * _burnFee / 100
                        if arg1 * _burnFee / 100 * stor7 / totalSupply / arg1 * _burnFee / 100 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if arg1 * _burnFee / 100 * stor7 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 > -1 * arg1 * _burnFee / 100 * stor7 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            return 0
                    else:
                        return 0
                require arg1
                if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not arg1 * _burnFee / 100:
                    if 0 > arg1 * stor7 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                else:
                    require arg1 * _burnFee / 100
                    if arg1 * _burnFee / 100 * stor7 / totalSupply / arg1 * _burnFee / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if 0 > arg1 * stor7 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg1 * _burnFee / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > (arg1 * stor7 / totalSupply) - (arg1 * _burnFee / 100 * stor7 / totalSupply):
                        revert with 0, 'SafeMath: subtraction overflow'
            else:
                require arg1
                if arg1 * _fundFee / arg1 != _fundFee:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                mem[224] = 26
                mem[256] = 'SafeMath: division by zero'
                mem[288] = 30
                mem[320] = 'SafeMath: subtraction overflow'
                if 0 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                mem[352] = 30
                mem[384] = 'SafeMath: subtraction overflow'
                if arg1 * _burnFee / 100 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                mem[64] = 480
                mem[416] = 30
                mem[448] = 'SafeMath: subtraction overflow'
                if arg1 * _fundFee / 100 > arg1 - (arg1 * _burnFee / 100):
                    revert with 0, 'SafeMath: subtraction overflow'
                idx = 0
                s = totalSupply
                t = stor7
                while idx < stor5.length:
                    mem[0] = stor5[idx]
                    mem[32] = 1
                    if stor1[stor5[idx]] > t:
                        _10049 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_10049] = 26
                        mem[_10049 + 32] = 'SafeMath: division by zero'
                        if totalSupply <= 0:
                            _10147 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_10147 + idx + 68] = mem[_10049 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_10147 + 68] = mem[_10147 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _10147 + -mem[64] + 100
                        require totalSupply
                        if not arg1:
                            if not arg1 * _burnFee / 100:
                                if not arg1 * _fundFee / 100:
                                    return 0
                                require arg1 * _fundFee / 100
                                if arg1 * _fundFee / 100 * stor7 / totalSupply / arg1 * _fundFee / 100 != stor7 / totalSupply:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _11425 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_11425] = 30
                                mem[_11425 + 32] = 'SafeMath: subtraction overflow'
                                _12273 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_12273] = 30
                                mem[_12273 + 32] = 'SafeMath: subtraction overflow'
                                _14246 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_14246] = 30
                                mem[_14246 + 32] = 'SafeMath: subtraction overflow'
                                if arg1 * _fundFee / 100 * stor7 / totalSupply <= 0:
                                    return 0
                                _15133 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_15133 + idx + 68] = mem[_14246 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_15133 + 68] = mem[_15133 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _15133 + -mem[64] + 100
                            require arg1 * _burnFee / 100
                            if arg1 * _burnFee / 100 * stor7 / totalSupply / arg1 * _burnFee / 100 != stor7 / totalSupply:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if not arg1 * _fundFee / 100:
                                _11424 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_11424] = 30
                                mem[_11424 + 32] = 'SafeMath: subtraction overflow'
                                _12272 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_12272] = 30
                                mem[_12272 + 32] = 'SafeMath: subtraction overflow'
                                if arg1 * _burnFee / 100 * stor7 / totalSupply > 0:
                                    _12981 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_12981 + idx + 68] = mem[_12272 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_12981 + 68] = mem[_12981 + 70 len 30]
                                    revert with memory
                                      from mem[64]
                                       len _12981 + -mem[64] + 100
                                _14243 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_14243] = 30
                                mem[_14243 + 32] = 'SafeMath: subtraction overflow'
                                if 0 <= -1 * arg1 * _burnFee / 100 * stor7 / totalSupply:
                                    return 0
                                _15130 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_15130 + idx + 68] = mem[_14243 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_15130 + 68] = mem[_15130 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _15130 + -mem[64] + 100
                            require arg1 * _fundFee / 100
                            if arg1 * _fundFee / 100 * stor7 / totalSupply / arg1 * _fundFee / 100 != stor7 / totalSupply:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _11689 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_11689] = 30
                            mem[_11689 + 32] = 'SafeMath: subtraction overflow'
                            _12980 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12980] = 30
                            mem[_12980 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _burnFee / 100 * stor7 / totalSupply > 0:
                                _13868 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_13868 + idx + 68] = mem[_12980 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_13868 + 68] = mem[_13868 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _13868 + -mem[64] + 100
                            _15127 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_15127] = 30
                            mem[_15127 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _fundFee / 100 * stor7 / totalSupply <= -1 * arg1 * _burnFee / 100 * stor7 / totalSupply:
                                return 0
                            _16003 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_16003 + idx + 68] = mem[_15127 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_16003 + 68] = mem[_16003 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _16003 + -mem[64] + 100
                        require arg1
                        if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not arg1 * _burnFee / 100:
                            if not arg1 * _fundFee / 100:
                                _11423 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_11423] = 30
                                mem[_11423 + 32] = 'SafeMath: subtraction overflow'
                                if 0 <= arg1 * stor7 / totalSupply:
                                    return (arg1 * stor7 / totalSupply)
                                _11686 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_11686 + idx + 68] = mem[_11423 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_11686 + 68] = mem[_11686 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _11686 + -mem[64] + 100
                            require arg1 * _fundFee / 100
                            if arg1 * _fundFee / 100 * stor7 / totalSupply / arg1 * _fundFee / 100 != stor7 / totalSupply:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _11685 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_11685] = 30
                            mem[_11685 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor7 / totalSupply:
                                _12101 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_12101 + idx + 68] = mem[_11685 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_12101 + 68] = mem[_12101 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _12101 + -mem[64] + 100
                            _12977 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12977] = 30
                            mem[_12977 + 32] = 'SafeMath: subtraction overflow'
                            _15126 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_15126] = 30
                            mem[_15126 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _fundFee / 100 * stor7 / totalSupply <= arg1 * stor7 / totalSupply:
                                return (arg1 * stor7 / totalSupply)
                            _16000 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_16000 + idx + 68] = mem[_15126 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_16000 + 68] = mem[_16000 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _16000 + -mem[64] + 100
                        require arg1 * _burnFee / 100
                        if arg1 * _burnFee / 100 * stor7 / totalSupply / arg1 * _burnFee / 100 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not arg1 * _fundFee / 100:
                            _11684 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_11684] = 30
                            mem[_11684 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor7 / totalSupply:
                                _12098 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_12098 + idx + 68] = mem[_11684 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_12098 + 68] = mem[_12098 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _12098 + -mem[64] + 100
                            _12974 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12974] = 30
                            mem[_12974 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _burnFee / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                                _13865 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_13865 + idx + 68] = mem[_12974 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_13865 + 68] = mem[_13865 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _13865 + -mem[64] + 100
                            _15123 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_15123] = 30
                            mem[_15123 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= (arg1 * stor7 / totalSupply) - (arg1 * _burnFee / 100 * stor7 / totalSupply):
                                return (arg1 * stor7 / totalSupply)
                            _15997 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_15997 + idx + 68] = mem[_15123 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_15997 + 68] = mem[_15997 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _15997 + -mem[64] + 100
                        require arg1 * _fundFee / 100
                        if arg1 * _fundFee / 100 * stor7 / totalSupply / arg1 * _fundFee / 100 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _12097 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12097] = 30
                        mem[_12097 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor7 / totalSupply:
                            _12689 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_12689 + idx + 68] = mem[_12097 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_12689 + 68] = mem[_12689 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _12689 + -mem[64] + 100
                        _13862 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_13862] = 30
                        mem[_13862 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _burnFee / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                            _14763 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_14763 + idx + 68] = mem[_13862 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_14763 + 68] = mem[_14763 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _14763 + -mem[64] + 100
                        _15994 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_15994] = 30
                        mem[_15994 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _fundFee / 100 * stor7 / totalSupply <= (arg1 * stor7 / totalSupply) - (arg1 * _burnFee / 100 * stor7 / totalSupply):
                            return (arg1 * stor7 / totalSupply)
                        _16821 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_16821 + idx + 68] = mem[_15994 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_16821 + 68] = mem[_16821 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _16821 + -mem[64] + 100
                    require idx < stor5.length
                    mem[0] = stor5[idx]
                    mem[32] = 2
                    if stor2[stor5[idx]] <= s:
                        require idx < stor5.length
                        mem[0] = stor5[idx]
                        mem[32] = 1
                        _10092 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_10092] = 30
                        mem[_10092 + 32] = 'SafeMath: subtraction overflow'
                        if stor1[stor5[idx]] > t:
                            _10199 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_10199 + idx + 68] = mem[_10092 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_10199 + 68] = mem[_10199 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _10199 + -mem[64] + 100
                        require idx < stor5.length
                        mem[0] = stor5[idx]
                        mem[32] = 2
                        _10595 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_10595] = 30
                        mem[_10595 + 32] = 'SafeMath: subtraction overflow'
                        if stor2[stor5[idx]] <= s:
                            idx = idx + 1
                            s = s - stor2[stor5[idx]]
                            t = t - stor1[stor5[idx]]
                            continue 
                        _10747 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_10747 + idx + 68] = mem[_10595 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_10747 + 68] = mem[_10747 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _10747 + -mem[64] + 100
                    _10150 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_10150] = 26
                    mem[_10150 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _10286 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_10286 + idx + 68] = mem[_10150 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_10286 + 68] = mem[_10286 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _10286 + -mem[64] + 100
                    require totalSupply
                    if not arg1:
                        if not arg1 * _burnFee / 100:
                            if not arg1 * _fundFee / 100:
                                return 0
                            require arg1 * _fundFee / 100
                            if arg1 * _fundFee / 100 * stor7 / totalSupply / arg1 * _fundFee / 100 != stor7 / totalSupply:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _11692 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_11692] = 30
                            mem[_11692 + 32] = 'SafeMath: subtraction overflow'
                            _12988 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12988] = 30
                            mem[_12988 + 32] = 'SafeMath: subtraction overflow'
                            _15141 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_15141] = 30
                            mem[_15141 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _fundFee / 100 * stor7 / totalSupply <= 0:
                                return 0
                            _16018 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_16018 + idx + 68] = mem[_15141 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_16018 + 68] = mem[_16018 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _16018 + -mem[64] + 100
                        require arg1 * _burnFee / 100
                        if arg1 * _burnFee / 100 * stor7 / totalSupply / arg1 * _burnFee / 100 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not arg1 * _fundFee / 100:
                            _11691 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_11691] = 30
                            mem[_11691 + 32] = 'SafeMath: subtraction overflow'
                            _12987 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12987] = 30
                            mem[_12987 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _burnFee / 100 * stor7 / totalSupply > 0:
                                _13879 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_13879 + idx + 68] = mem[_12987 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_13879 + 68] = mem[_13879 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _13879 + -mem[64] + 100
                            _15138 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_15138] = 30
                            mem[_15138 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= -1 * arg1 * _burnFee / 100 * stor7 / totalSupply:
                                return 0
                            _16015 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_16015 + idx + 68] = mem[_15138 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_16015 + 68] = mem[_16015 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _16015 + -mem[64] + 100
                        require arg1 * _fundFee / 100
                        if arg1 * _fundFee / 100 * stor7 / totalSupply / arg1 * _fundFee / 100 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _12110 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12110] = 30
                        mem[_12110 + 32] = 'SafeMath: subtraction overflow'
                        _13878 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_13878] = 30
                        mem[_13878 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _burnFee / 100 * stor7 / totalSupply > 0:
                            _14775 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_14775 + idx + 68] = mem[_13878 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_14775 + 68] = mem[_14775 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _14775 + -mem[64] + 100
                        _16012 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_16012] = 30
                        mem[_16012 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _fundFee / 100 * stor7 / totalSupply <= -1 * arg1 * _burnFee / 100 * stor7 / totalSupply:
                            return 0
                        _16840 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_16840 + idx + 68] = mem[_16012 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_16840 + 68] = mem[_16840 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _16840 + -mem[64] + 100
                    require arg1
                    if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not arg1 * _burnFee / 100:
                        if not arg1 * _fundFee / 100:
                            _11690 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_11690] = 30
                            mem[_11690 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= arg1 * stor7 / totalSupply:
                                return (arg1 * stor7 / totalSupply)
                            _12107 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_12107 + idx + 68] = mem[_11690 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_12107 + 68] = mem[_12107 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _12107 + -mem[64] + 100
                        require arg1 * _fundFee / 100
                        if arg1 * _fundFee / 100 * stor7 / totalSupply / arg1 * _fundFee / 100 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _12106 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12106] = 30
                        mem[_12106 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor7 / totalSupply:
                            _12699 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_12699 + idx + 68] = mem[_12106 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_12699 + 68] = mem[_12699 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _12699 + -mem[64] + 100
                        _13875 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_13875] = 30
                        mem[_13875 + 32] = 'SafeMath: subtraction overflow'
                        _16011 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_16011] = 30
                        mem[_16011 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _fundFee / 100 * stor7 / totalSupply <= arg1 * stor7 / totalSupply:
                            return (arg1 * stor7 / totalSupply)
                        _16837 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_16837 + idx + 68] = mem[_16011 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_16837 + 68] = mem[_16837 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _16837 + -mem[64] + 100
                    require arg1 * _burnFee / 100
                    if arg1 * _burnFee / 100 * stor7 / totalSupply / arg1 * _burnFee / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not arg1 * _fundFee / 100:
                        _12105 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12105] = 30
                        mem[_12105 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor7 / totalSupply:
                            _12696 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_12696 + idx + 68] = mem[_12105 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_12696 + 68] = mem[_12696 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _12696 + -mem[64] + 100
                        _13872 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_13872] = 30
                        mem[_13872 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _burnFee / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                            _14772 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_14772 + idx + 68] = mem[_13872 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_14772 + 68] = mem[_14772 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _14772 + -mem[64] + 100
                        _16008 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_16008] = 30
                        mem[_16008 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= (arg1 * stor7 / totalSupply) - (arg1 * _burnFee / 100 * stor7 / totalSupply):
                            return (arg1 * stor7 / totalSupply)
                        _16834 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_16834 + idx + 68] = mem[_16008 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_16834 + 68] = mem[_16834 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _16834 + -mem[64] + 100
                    require arg1 * _fundFee / 100
                    if arg1 * _fundFee / 100 * stor7 / totalSupply / arg1 * _fundFee / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _12695 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_12695] = 30
                    mem[_12695 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor7 / totalSupply:
                        _13417 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_13417 + idx + 68] = mem[_12695 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_13417 + 68] = mem[_13417 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _13417 + -mem[64] + 100
                    _14769 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_14769] = 30
                    mem[_14769 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _burnFee / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                        _15576 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_15576 + idx + 68] = mem[_14769 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_15576 + 68] = mem[_15576 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _15576 + -mem[64] + 100
                    _16831 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_16831] = 30
                    mem[_16831 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _fundFee / 100 * stor7 / totalSupply <= (arg1 * stor7 / totalSupply) - (arg1 * _burnFee / 100 * stor7 / totalSupply):
                        return (arg1 * stor7 / totalSupply)
                    _17573 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_17573 + idx + 68] = mem[_16831 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_17573 + 68] = mem[_17573 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _17573 + -mem[64] + 100
                _9821 = mem[64]
                mem[64] = mem[64] + 64
                mem[_9821] = 26
                mem[_9821 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                if t >= stor7 / totalSupply:
                    _10283 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_10283] = 26
                    mem[_10283 + 32] = 'SafeMath: division by zero'
                    if s <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require s
                    if not arg1:
                        if not arg1 * _burnFee / 100:
                            if arg1 * _fundFee / 100:
                                require arg1 * _fundFee / 100
                                if arg1 * _fundFee / 100 * t / s / arg1 * _fundFee / 100 != t / s:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if arg1 * _fundFee / 100 * t / s > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            require arg1 * _burnFee / 100
                            if arg1 * _burnFee / 100 * t / s / arg1 * _burnFee / 100 != t / s:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if not arg1 * _fundFee / 100:
                                if arg1 * _burnFee / 100 * t / s > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if 0 > -1 * arg1 * _burnFee / 100 * t / s:
                                    revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                require arg1 * _fundFee / 100
                                if arg1 * _fundFee / 100 * t / s / arg1 * _fundFee / 100 != t / s:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if arg1 * _burnFee / 100 * t / s > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if arg1 * _fundFee / 100 * t / s > -1 * arg1 * _burnFee / 100 * t / s:
                                    revert with 0, 'SafeMath: subtraction overflow'
                        return 0
                    require arg1
                    if arg1 * t / s / arg1 != t / s:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not arg1 * _burnFee / 100:
                        if not arg1 * _fundFee / 100:
                            if 0 > arg1 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            require arg1 * _fundFee / 100
                            if arg1 * _fundFee / 100 * t / s / arg1 * _fundFee / 100 != t / s:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if 0 > arg1 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if arg1 * _fundFee / 100 * t / s > arg1 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        require arg1 * _burnFee / 100
                        if arg1 * _burnFee / 100 * t / s / arg1 * _burnFee / 100 != t / s:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not arg1 * _fundFee / 100:
                            if 0 > arg1 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if arg1 * _burnFee / 100 * t / s > arg1 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0 > (arg1 * t / s) - (arg1 * _burnFee / 100 * t / s):
                                revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            require arg1 * _fundFee / 100
                            if arg1 * _fundFee / 100 * t / s / arg1 * _fundFee / 100 != t / s:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if 0 > arg1 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if arg1 * _burnFee / 100 * t / s > arg1 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if arg1 * _fundFee / 100 * t / s > (arg1 * t / s) - (arg1 * _burnFee / 100 * t / s):
                                revert with 0, 'SafeMath: subtraction overflow'
                    return (arg1 * t / s)
                _10284 = mem[64]
                mem[64] = mem[64] + 64
                mem[_10284] = 26
                mem[_10284 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                if not arg1:
                    if not arg1 * _burnFee / 100:
                        if arg1 * _fundFee / 100:
                            require arg1 * _fundFee / 100
                            if arg1 * _fundFee / 100 * stor7 / totalSupply / arg1 * _fundFee / 100 != stor7 / totalSupply:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if arg1 * _fundFee / 100 * stor7 / totalSupply > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        require arg1 * _burnFee / 100
                        if arg1 * _burnFee / 100 * stor7 / totalSupply / arg1 * _burnFee / 100 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not arg1 * _fundFee / 100:
                            if arg1 * _burnFee / 100 * stor7 / totalSupply > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0 > -1 * arg1 * _burnFee / 100 * stor7 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            require arg1 * _fundFee / 100
                            if arg1 * _fundFee / 100 * stor7 / totalSupply / arg1 * _fundFee / 100 != stor7 / totalSupply:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if arg1 * _burnFee / 100 * stor7 / totalSupply > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if arg1 * _fundFee / 100 * stor7 / totalSupply > -1 * arg1 * _burnFee / 100 * stor7 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                    return 0
                require arg1
                if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not arg1 * _burnFee / 100:
                    if not arg1 * _fundFee / 100:
                        if 0 > arg1 * stor7 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        require arg1 * _fundFee / 100
                        if arg1 * _fundFee / 100 * stor7 / totalSupply / arg1 * _fundFee / 100 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if 0 > arg1 * stor7 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if arg1 * _fundFee / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                else:
                    require arg1 * _burnFee / 100
                    if arg1 * _burnFee / 100 * stor7 / totalSupply / arg1 * _burnFee / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not arg1 * _fundFee / 100:
                        if 0 > arg1 * stor7 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if arg1 * _burnFee / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 > (arg1 * stor7 / totalSupply) - (arg1 * _burnFee / 100 * stor7 / totalSupply):
                            revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        require arg1 * _fundFee / 100
                        if arg1 * _fundFee / 100 * stor7 / totalSupply / arg1 * _fundFee / 100 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if 0 > arg1 * stor7 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if arg1 * _burnFee / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if arg1 * _fundFee / 100 * stor7 / totalSupply > (arg1 * stor7 / totalSupply) - (arg1 * _burnFee / 100 * stor7 / totalSupply):
                            revert with 0, 'SafeMath: subtraction overflow'
    else:
        require arg1
        if arg1 * _taxFee / arg1 != _taxFee:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        mem[96] = 26
        mem[128] = 'SafeMath: division by zero'
        if not arg1:
            mem[160] = 26
            mem[192] = 'SafeMath: division by zero'
            if not arg1:
                mem[224] = 26
                mem[256] = 'SafeMath: division by zero'
                mem[288] = 30
                mem[320] = 'SafeMath: subtraction overflow'
                if arg1 * _taxFee / 100 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                mem[352] = 30
                mem[384] = 'SafeMath: subtraction overflow'
                if 0 > arg1 - (arg1 * _taxFee / 100):
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
                        _10044 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_10044] = 26
                        mem[_10044 + 32] = 'SafeMath: division by zero'
                        if totalSupply <= 0:
                            _10143 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_10143 + idx + 68] = mem[_10044 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_10143 + 68] = mem[_10143 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _10143 + -mem[64] + 100
                        require totalSupply
                        if not arg1:
                            if not arg1 * _taxFee / 100:
                                return 0
                            require arg1 * _taxFee / 100
                            if arg1 * _taxFee / 100 * stor7 / totalSupply / arg1 * _taxFee / 100 != stor7 / totalSupply:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _11421 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_11421] = 30
                            mem[_11421 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _taxFee / 100 * stor7 / totalSupply > 0:
                                _11677 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_11677 + idx + 68] = mem[_11421 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_11677 + 68] = mem[_11677 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _11677 + -mem[64] + 100
                            _12261 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12261] = 30
                            mem[_12261 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= -1 * arg1 * _taxFee / 100 * stor7 / totalSupply:
                                return 0
                            _12963 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_12963 + idx + 68] = mem[_12261 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_12963 + 68] = mem[_12963 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _12963 + -mem[64] + 100
                        require arg1
                        if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not arg1 * _taxFee / 100:
                            _11420 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_11420] = 30
                            mem[_11420 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= arg1 * stor7 / totalSupply:
                                return (arg1 * stor7 / totalSupply)
                            _11674 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_11674 + idx + 68] = mem[_11420 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_11674 + 68] = mem[_11674 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _11674 + -mem[64] + 100
                        require arg1 * _taxFee / 100
                        if arg1 * _taxFee / 100 * stor7 / totalSupply / arg1 * _taxFee / 100 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _11673 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_11673] = 30
                        mem[_11673 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                            _12079 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_12079 + idx + 68] = mem[_11673 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_12079 + 68] = mem[_12079 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _12079 + -mem[64] + 100
                        _12960 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12960] = 30
                        mem[_12960 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 100 * stor7 / totalSupply):
                            return (arg1 * stor7 / totalSupply)
                        _13842 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_13842 + idx + 68] = mem[_12960 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_13842 + 68] = mem[_13842 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _13842 + -mem[64] + 100
                    require idx < stor5.length
                    mem[0] = stor5[idx]
                    mem[32] = 2
                    if stor2[stor5[idx]] <= s:
                        require idx < stor5.length
                        mem[0] = stor5[idx]
                        mem[32] = 1
                        _10090 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_10090] = 30
                        mem[_10090 + 32] = 'SafeMath: subtraction overflow'
                        if stor1[stor5[idx]] > t:
                            _10196 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_10196 + idx + 68] = mem[_10090 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_10196 + 68] = mem[_10196 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _10196 + -mem[64] + 100
                        require idx < stor5.length
                        mem[0] = stor5[idx]
                        mem[32] = 2
                        _10591 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_10591] = 30
                        mem[_10591 + 32] = 'SafeMath: subtraction overflow'
                        if stor2[stor5[idx]] <= s:
                            idx = idx + 1
                            s = s - stor2[stor5[idx]]
                            t = t - stor1[stor5[idx]]
                            continue 
                        _10740 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_10740 + idx + 68] = mem[_10591 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_10740 + 68] = mem[_10740 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _10740 + -mem[64] + 100
                    _10146 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_10146] = 26
                    mem[_10146 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _10280 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_10280 + idx + 68] = mem[_10146 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_10280 + 68] = mem[_10280 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _10280 + -mem[64] + 100
                    require totalSupply
                    if not arg1:
                        if not arg1 * _taxFee / 100:
                            return 0
                        require arg1 * _taxFee / 100
                        if arg1 * _taxFee / 100 * stor7 / totalSupply / arg1 * _taxFee / 100 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _11681 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_11681] = 30
                        mem[_11681 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor7 / totalSupply > 0:
                            _12088 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_12088 + idx + 68] = mem[_11681 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_12088 + 68] = mem[_12088 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _12088 + -mem[64] + 100
                        _12969 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12969] = 30
                        mem[_12969 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -1 * arg1 * _taxFee / 100 * stor7 / totalSupply:
                            return 0
                        _13849 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_13849 + idx + 68] = mem[_12969 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_13849 + 68] = mem[_13849 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _13849 + -mem[64] + 100
                    require arg1
                    if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not arg1 * _taxFee / 100:
                        _11680 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_11680] = 30
                        mem[_11680 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor7 / totalSupply:
                            return (arg1 * stor7 / totalSupply)
                        _12085 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_12085 + idx + 68] = mem[_11680 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_12085 + 68] = mem[_12085 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _12085 + -mem[64] + 100
                    require arg1 * _taxFee / 100
                    if arg1 * _taxFee / 100 * stor7 / totalSupply / arg1 * _taxFee / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _12084 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_12084] = 30
                    mem[_12084 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                        _12672 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_12672 + idx + 68] = mem[_12084 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_12672 + 68] = mem[_12672 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _12672 + -mem[64] + 100
                    _13846 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_13846] = 30
                    mem[_13846 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 100 * stor7 / totalSupply):
                        return (arg1 * stor7 / totalSupply)
                    _14739 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_14739 + idx + 68] = mem[_13846 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_14739 + 68] = mem[_14739 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _14739 + -mem[64] + 100
                _9814 = mem[64]
                mem[64] = mem[64] + 64
                mem[_9814] = 26
                mem[_9814 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                if t >= stor7 / totalSupply:
                    _10277 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_10277] = 26
                    mem[_10277 + 32] = 'SafeMath: division by zero'
                    if s <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require s
                    if not arg1:
                        if arg1 * _taxFee / 100:
                            require arg1 * _taxFee / 100
                            if arg1 * _taxFee / 100 * t / s / arg1 * _taxFee / 100 != t / s:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if arg1 * _taxFee / 100 * t / s > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0 > -1 * arg1 * _taxFee / 100 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                return 0
                        else:
                            return 0
                    require arg1
                    if arg1 * t / s / arg1 != t / s:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not arg1 * _taxFee / 100:
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        require arg1 * _taxFee / 100
                        if arg1 * _taxFee / 100 * t / s / arg1 * _taxFee / 100 != t / s:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if arg1 * _taxFee / 100 * t / s > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 > (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s):
                            revert with 0, 'SafeMath: subtraction overflow'
                    return (arg1 * t / s)
                _10278 = mem[64]
                mem[64] = mem[64] + 64
                mem[_10278] = 26
                mem[_10278 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                if not arg1:
                    if arg1 * _taxFee / 100:
                        require arg1 * _taxFee / 100
                        if arg1 * _taxFee / 100 * stor7 / totalSupply / arg1 * _taxFee / 100 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if arg1 * _taxFee / 100 * stor7 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 > -1 * arg1 * _taxFee / 100 * stor7 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            return 0
                    else:
                        return 0
                require arg1
                if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not arg1 * _taxFee / 100:
                    if 0 > arg1 * stor7 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                else:
                    require arg1 * _taxFee / 100
                    if arg1 * _taxFee / 100 * stor7 / totalSupply / arg1 * _taxFee / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if arg1 * _taxFee / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 100 * stor7 / totalSupply):
                        revert with 0, 'SafeMath: subtraction overflow'
            else:
                require arg1
                if arg1 * _fundFee / arg1 != _fundFee:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                mem[224] = 26
                mem[256] = 'SafeMath: division by zero'
                mem[288] = 30
                mem[320] = 'SafeMath: subtraction overflow'
                if arg1 * _taxFee / 100 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                mem[352] = 30
                mem[384] = 'SafeMath: subtraction overflow'
                if 0 > arg1 - (arg1 * _taxFee / 100):
                    revert with 0, 'SafeMath: subtraction overflow'
                mem[64] = 480
                mem[416] = 30
                mem[448] = 'SafeMath: subtraction overflow'
                if arg1 * _fundFee / 100 > arg1 - (arg1 * _taxFee / 100):
                    revert with 0, 'SafeMath: subtraction overflow'
                idx = 0
                s = totalSupply
                t = stor7
                while idx < stor5.length:
                    mem[0] = stor5[idx]
                    mem[32] = 1
                    if stor1[stor5[idx]] > t:
                        _10039 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_10039] = 26
                        mem[_10039 + 32] = 'SafeMath: division by zero'
                        if totalSupply <= 0:
                            _10139 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_10139 + idx + 68] = mem[_10039 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_10139 + 68] = mem[_10139 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _10139 + -mem[64] + 100
                        require totalSupply
                        if not arg1:
                            if not arg1 * _taxFee / 100:
                                if not arg1 * _fundFee / 100:
                                    return 0
                                require arg1 * _fundFee / 100
                                if arg1 * _fundFee / 100 * stor7 / totalSupply / arg1 * _fundFee / 100 != stor7 / totalSupply:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _11418 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_11418] = 30
                                mem[_11418 + 32] = 'SafeMath: subtraction overflow'
                                _12256 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_12256] = 30
                                mem[_12256 + 32] = 'SafeMath: subtraction overflow'
                                _14211 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_14211] = 30
                                mem[_14211 + 32] = 'SafeMath: subtraction overflow'
                                if arg1 * _fundFee / 100 * stor7 / totalSupply <= 0:
                                    return 0
                                _15095 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_15095 + idx + 68] = mem[_14211 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_15095 + 68] = mem[_15095 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _15095 + -mem[64] + 100
                            require arg1 * _taxFee / 100
                            if arg1 * _taxFee / 100 * stor7 / totalSupply / arg1 * _taxFee / 100 != stor7 / totalSupply:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if not arg1 * _fundFee / 100:
                                _11417 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_11417] = 30
                                mem[_11417 + 32] = 'SafeMath: subtraction overflow'
                                if arg1 * _taxFee / 100 * stor7 / totalSupply > 0:
                                    _11665 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_11665 + idx + 68] = mem[_11417 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_11665 + 68] = mem[_11665 + 70 len 30]
                                    revert with memory
                                      from mem[64]
                                       len _11665 + -mem[64] + 100
                                _12253 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_12253] = 30
                                mem[_12253 + 32] = 'SafeMath: subtraction overflow'
                                if 0 <= -1 * arg1 * _taxFee / 100 * stor7 / totalSupply:
                                    return 0
                                _12948 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_12948 + idx + 68] = mem[_12253 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_12948 + 68] = mem[_12948 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _12948 + -mem[64] + 100
                            require arg1 * _fundFee / 100
                            if arg1 * _fundFee / 100 * stor7 / totalSupply / arg1 * _fundFee / 100 != stor7 / totalSupply:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _11664 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_11664] = 30
                            mem[_11664 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _taxFee / 100 * stor7 / totalSupply > 0:
                                _12062 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_12062 + idx + 68] = mem[_11664 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_12062 + 68] = mem[_12062 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _12062 + -mem[64] + 100
                            _12945 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12945] = 30
                            mem[_12945 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > -1 * arg1 * _taxFee / 100 * stor7 / totalSupply:
                                _13814 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_13814 + idx + 68] = mem[_12945 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_13814 + 68] = mem[_13814 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _13814 + -mem[64] + 100
                            _15092 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_15092] = 30
                            mem[_15092 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _fundFee / 100 * stor7 / totalSupply <= -1 * arg1 * _taxFee / 100 * stor7 / totalSupply:
                                return 0
                            _15957 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_15957 + idx + 68] = mem[_15092 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_15957 + 68] = mem[_15957 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _15957 + -mem[64] + 100
                        require arg1
                        if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not arg1 * _taxFee / 100:
                            if not arg1 * _fundFee / 100:
                                _11416 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_11416] = 30
                                mem[_11416 + 32] = 'SafeMath: subtraction overflow'
                                if 0 <= arg1 * stor7 / totalSupply:
                                    return (arg1 * stor7 / totalSupply)
                                _11661 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_11661 + idx + 68] = mem[_11416 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_11661 + 68] = mem[_11661 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _11661 + -mem[64] + 100
                            require arg1 * _fundFee / 100
                            if arg1 * _fundFee / 100 * stor7 / totalSupply / arg1 * _fundFee / 100 != stor7 / totalSupply:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _11660 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_11660] = 30
                            mem[_11660 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor7 / totalSupply:
                                _12058 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_12058 + idx + 68] = mem[_11660 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_12058 + 68] = mem[_12058 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _12058 + -mem[64] + 100
                            _12942 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12942] = 30
                            mem[_12942 + 32] = 'SafeMath: subtraction overflow'
                            _15091 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_15091] = 30
                            mem[_15091 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _fundFee / 100 * stor7 / totalSupply <= arg1 * stor7 / totalSupply:
                                return (arg1 * stor7 / totalSupply)
                            _15954 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_15954 + idx + 68] = mem[_15091 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_15954 + 68] = mem[_15954 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _15954 + -mem[64] + 100
                        require arg1 * _taxFee / 100
                        if arg1 * _taxFee / 100 * stor7 / totalSupply / arg1 * _taxFee / 100 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not arg1 * _fundFee / 100:
                            _11659 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_11659] = 30
                            mem[_11659 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _taxFee / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                                _12055 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_12055 + idx + 68] = mem[_11659 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_12055 + 68] = mem[_12055 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _12055 + -mem[64] + 100
                            _12939 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12939] = 30
                            mem[_12939 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 100 * stor7 / totalSupply):
                                return (arg1 * stor7 / totalSupply)
                            _13811 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_13811 + idx + 68] = mem[_12939 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_13811 + 68] = mem[_13811 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _13811 + -mem[64] + 100
                        require arg1 * _fundFee / 100
                        if arg1 * _fundFee / 100 * stor7 / totalSupply / arg1 * _fundFee / 100 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _12054 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12054] = 30
                        mem[_12054 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                            _12635 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_12635 + idx + 68] = mem[_12054 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_12635 + 68] = mem[_12635 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _12635 + -mem[64] + 100
                        _13808 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_13808] = 30
                        mem[_13808 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 100 * stor7 / totalSupply):
                            _14709 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_14709 + idx + 68] = mem[_13808 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_14709 + 68] = mem[_14709 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _14709 + -mem[64] + 100
                        _15951 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_15951] = 30
                        mem[_15951 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _fundFee / 100 * stor7 / totalSupply <= (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 100 * stor7 / totalSupply):
                            return (arg1 * stor7 / totalSupply)
                        _16769 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_16769 + idx + 68] = mem[_15951 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_16769 + 68] = mem[_16769 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _16769 + -mem[64] + 100
                    require idx < stor5.length
                    mem[0] = stor5[idx]
                    mem[32] = 2
                    if stor2[stor5[idx]] <= s:
                        require idx < stor5.length
                        mem[0] = stor5[idx]
                        mem[32] = 1
                        _10088 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_10088] = 30
                        mem[_10088 + 32] = 'SafeMath: subtraction overflow'
                        if stor1[stor5[idx]] > t:
                            _10193 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_10193 + idx + 68] = mem[_10088 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_10193 + 68] = mem[_10193 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _10193 + -mem[64] + 100
                        require idx < stor5.length
                        mem[0] = stor5[idx]
                        mem[32] = 2
                        _10587 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_10587] = 30
                        mem[_10587 + 32] = 'SafeMath: subtraction overflow'
                        if stor2[stor5[idx]] <= s:
                            idx = idx + 1
                            s = s - stor2[stor5[idx]]
                            t = t - stor1[stor5[idx]]
                            continue 
                        _10733 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_10733 + idx + 68] = mem[_10587 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_10733 + 68] = mem[_10733 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _10733 + -mem[64] + 100
                    _10142 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_10142] = 26
                    mem[_10142 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _10274 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_10274 + idx + 68] = mem[_10142 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_10274 + 68] = mem[_10274 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _10274 + -mem[64] + 100
                    require totalSupply
                    if not arg1:
                        if not arg1 * _taxFee / 100:
                            if not arg1 * _fundFee / 100:
                                return 0
                            require arg1 * _fundFee / 100
                            if arg1 * _fundFee / 100 * stor7 / totalSupply / arg1 * _fundFee / 100 != stor7 / totalSupply:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _11670 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_11670] = 30
                            mem[_11670 + 32] = 'SafeMath: subtraction overflow'
                            _12957 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12957] = 30
                            mem[_12957 + 32] = 'SafeMath: subtraction overflow'
                            _15103 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_15103] = 30
                            mem[_15103 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _fundFee / 100 * stor7 / totalSupply <= 0:
                                return 0
                            _15968 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_15968 + idx + 68] = mem[_15103 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_15968 + 68] = mem[_15968 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _15968 + -mem[64] + 100
                        require arg1 * _taxFee / 100
                        if arg1 * _taxFee / 100 * stor7 / totalSupply / arg1 * _taxFee / 100 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not arg1 * _fundFee / 100:
                            _11669 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_11669] = 30
                            mem[_11669 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _taxFee / 100 * stor7 / totalSupply > 0:
                                _12072 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_12072 + idx + 68] = mem[_11669 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_12072 + 68] = mem[_12072 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _12072 + -mem[64] + 100
                            _12954 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12954] = 30
                            mem[_12954 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= -1 * arg1 * _taxFee / 100 * stor7 / totalSupply:
                                return 0
                            _13827 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_13827 + idx + 68] = mem[_12954 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_13827 + 68] = mem[_13827 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _13827 + -mem[64] + 100
                        require arg1 * _fundFee / 100
                        if arg1 * _fundFee / 100 * stor7 / totalSupply / arg1 * _fundFee / 100 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _12071 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12071] = 30
                        mem[_12071 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor7 / totalSupply > 0:
                            _12651 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_12651 + idx + 68] = mem[_12071 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_12651 + 68] = mem[_12651 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _12651 + -mem[64] + 100
                        _13824 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_13824] = 30
                        mem[_13824 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > -1 * arg1 * _taxFee / 100 * stor7 / totalSupply:
                            _14721 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_14721 + idx + 68] = mem[_13824 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_14721 + 68] = mem[_14721 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _14721 + -mem[64] + 100
                        _15965 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_15965] = 30
                        mem[_15965 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _fundFee / 100 * stor7 / totalSupply <= -1 * arg1 * _taxFee / 100 * stor7 / totalSupply:
                            return 0
                        _16783 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_16783 + idx + 68] = mem[_15965 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_16783 + 68] = mem[_16783 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _16783 + -mem[64] + 100
                    require arg1
                    if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not arg1 * _taxFee / 100:
                        if not arg1 * _fundFee / 100:
                            _11668 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_11668] = 30
                            mem[_11668 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= arg1 * stor7 / totalSupply:
                                return (arg1 * stor7 / totalSupply)
                            _12068 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_12068 + idx + 68] = mem[_11668 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_12068 + 68] = mem[_12068 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _12068 + -mem[64] + 100
                        require arg1 * _fundFee / 100
                        if arg1 * _fundFee / 100 * stor7 / totalSupply / arg1 * _fundFee / 100 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _12067 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12067] = 30
                        mem[_12067 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor7 / totalSupply:
                            _12647 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_12647 + idx + 68] = mem[_12067 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_12647 + 68] = mem[_12647 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _12647 + -mem[64] + 100
                        _13821 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_13821] = 30
                        mem[_13821 + 32] = 'SafeMath: subtraction overflow'
                        _15964 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_15964] = 30
                        mem[_15964 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _fundFee / 100 * stor7 / totalSupply <= arg1 * stor7 / totalSupply:
                            return (arg1 * stor7 / totalSupply)
                        _16780 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_16780 + idx + 68] = mem[_15964 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_16780 + 68] = mem[_16780 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _16780 + -mem[64] + 100
                    require arg1 * _taxFee / 100
                    if arg1 * _taxFee / 100 * stor7 / totalSupply / arg1 * _taxFee / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not arg1 * _fundFee / 100:
                        _12066 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12066] = 30
                        mem[_12066 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                            _12644 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_12644 + idx + 68] = mem[_12066 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_12644 + 68] = mem[_12644 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _12644 + -mem[64] + 100
                        _13818 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_13818] = 30
                        mem[_13818 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 100 * stor7 / totalSupply):
                            return (arg1 * stor7 / totalSupply)
                        _14718 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_14718 + idx + 68] = mem[_13818 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_14718 + 68] = mem[_14718 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _14718 + -mem[64] + 100
                    require arg1 * _fundFee / 100
                    if arg1 * _fundFee / 100 * stor7 / totalSupply / arg1 * _fundFee / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _12643 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_12643] = 30
                    mem[_12643 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                        _13374 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_13374 + idx + 68] = mem[_12643 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_13374 + 68] = mem[_13374 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _13374 + -mem[64] + 100
                    _14715 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_14715] = 30
                    mem[_14715 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 100 * stor7 / totalSupply):
                        _15536 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_15536 + idx + 68] = mem[_14715 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_15536 + 68] = mem[_15536 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _15536 + -mem[64] + 100
                    _16777 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_16777] = 30
                    mem[_16777 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _fundFee / 100 * stor7 / totalSupply <= (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 100 * stor7 / totalSupply):
                        return (arg1 * stor7 / totalSupply)
                    _17521 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_17521 + idx + 68] = mem[_16777 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_17521 + 68] = mem[_17521 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _17521 + -mem[64] + 100
                _9805 = mem[64]
                mem[64] = mem[64] + 64
                mem[_9805] = 26
                mem[_9805 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                if t >= stor7 / totalSupply:
                    _10271 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_10271] = 26
                    mem[_10271 + 32] = 'SafeMath: division by zero'
                    if s <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require s
                    if not arg1:
                        if not arg1 * _taxFee / 100:
                            if arg1 * _fundFee / 100:
                                require arg1 * _fundFee / 100
                                if arg1 * _fundFee / 100 * t / s / arg1 * _fundFee / 100 != t / s:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if arg1 * _fundFee / 100 * t / s > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            require arg1 * _taxFee / 100
                            if arg1 * _taxFee / 100 * t / s / arg1 * _taxFee / 100 != t / s:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if not arg1 * _fundFee / 100:
                                if arg1 * _taxFee / 100 * t / s > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if 0 > -1 * arg1 * _taxFee / 100 * t / s:
                                    revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                require arg1 * _fundFee / 100
                                if arg1 * _fundFee / 100 * t / s / arg1 * _fundFee / 100 != t / s:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if arg1 * _taxFee / 100 * t / s > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if 0 > -1 * arg1 * _taxFee / 100 * t / s:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if arg1 * _fundFee / 100 * t / s > -1 * arg1 * _taxFee / 100 * t / s:
                                    revert with 0, 'SafeMath: subtraction overflow'
                        return 0
                    require arg1
                    if arg1 * t / s / arg1 != t / s:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not arg1 * _taxFee / 100:
                        if not arg1 * _fundFee / 100:
                            if 0 > arg1 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            require arg1 * _fundFee / 100
                            if arg1 * _fundFee / 100 * t / s / arg1 * _fundFee / 100 != t / s:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if 0 > arg1 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if arg1 * _fundFee / 100 * t / s > arg1 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        require arg1 * _taxFee / 100
                        if arg1 * _taxFee / 100 * t / s / arg1 * _taxFee / 100 != t / s:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not arg1 * _fundFee / 100:
                            if arg1 * _taxFee / 100 * t / s > arg1 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0 > (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s):
                                revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            require arg1 * _fundFee / 100
                            if arg1 * _fundFee / 100 * t / s / arg1 * _fundFee / 100 != t / s:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if arg1 * _taxFee / 100 * t / s > arg1 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0 > (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s):
                                revert with 0, 'SafeMath: subtraction overflow'
                            if arg1 * _fundFee / 100 * t / s > (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s):
                                revert with 0, 'SafeMath: subtraction overflow'
                    return (arg1 * t / s)
                _10272 = mem[64]
                mem[64] = mem[64] + 64
                mem[_10272] = 26
                mem[_10272 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                if not arg1:
                    if not arg1 * _taxFee / 100:
                        if arg1 * _fundFee / 100:
                            require arg1 * _fundFee / 100
                            if arg1 * _fundFee / 100 * stor7 / totalSupply / arg1 * _fundFee / 100 != stor7 / totalSupply:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if arg1 * _fundFee / 100 * stor7 / totalSupply > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        require arg1 * _taxFee / 100
                        if arg1 * _taxFee / 100 * stor7 / totalSupply / arg1 * _taxFee / 100 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not arg1 * _fundFee / 100:
                            if arg1 * _taxFee / 100 * stor7 / totalSupply > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0 > -1 * arg1 * _taxFee / 100 * stor7 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            require arg1 * _fundFee / 100
                            if arg1 * _fundFee / 100 * stor7 / totalSupply / arg1 * _fundFee / 100 != stor7 / totalSupply:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if arg1 * _taxFee / 100 * stor7 / totalSupply > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0 > -1 * arg1 * _taxFee / 100 * stor7 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if arg1 * _fundFee / 100 * stor7 / totalSupply > -1 * arg1 * _taxFee / 100 * stor7 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                    return 0
                require arg1
                if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not arg1 * _taxFee / 100:
                    if not arg1 * _fundFee / 100:
                        if 0 > arg1 * stor7 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        require arg1 * _fundFee / 100
                        if arg1 * _fundFee / 100 * stor7 / totalSupply / arg1 * _fundFee / 100 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if 0 > arg1 * stor7 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if arg1 * _fundFee / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                else:
                    require arg1 * _taxFee / 100
                    if arg1 * _taxFee / 100 * stor7 / totalSupply / arg1 * _taxFee / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not arg1 * _fundFee / 100:
                        if arg1 * _taxFee / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 > (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 100 * stor7 / totalSupply):
                            revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        require arg1 * _fundFee / 100
                        if arg1 * _fundFee / 100 * stor7 / totalSupply / arg1 * _fundFee / 100 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if arg1 * _taxFee / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 > (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 100 * stor7 / totalSupply):
                            revert with 0, 'SafeMath: subtraction overflow'
                        if arg1 * _fundFee / 100 * stor7 / totalSupply > (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 100 * stor7 / totalSupply):
                            revert with 0, 'SafeMath: subtraction overflow'
        else:
            require arg1
            if arg1 * _burnFee / arg1 != _burnFee:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            mem[160] = 26
            mem[192] = 'SafeMath: division by zero'
            if not arg1:
                mem[224] = 26
                mem[256] = 'SafeMath: division by zero'
                mem[288] = 30
                mem[320] = 'SafeMath: subtraction overflow'
                if arg1 * _taxFee / 100 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                mem[352] = 30
                mem[384] = 'SafeMath: subtraction overflow'
                if arg1 * _burnFee / 100 > arg1 - (arg1 * _taxFee / 100):
                    revert with 0, 'SafeMath: subtraction overflow'
                mem[64] = 480
                mem[416] = 30
                mem[448] = 'SafeMath: subtraction overflow'
                if 0 > arg1 - (arg1 * _taxFee / 100) - (arg1 * _burnFee / 100):
                    revert with 0, 'SafeMath: subtraction overflow'
                idx = 0
                s = totalSupply
                t = stor7
                while idx < stor5.length:
                    mem[0] = stor5[idx]
                    mem[32] = 1
                    if stor1[stor5[idx]] > t:
                        _10034 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_10034] = 26
                        mem[_10034 + 32] = 'SafeMath: division by zero'
                        if totalSupply <= 0:
                            _10135 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_10135 + idx + 68] = mem[_10034 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_10135 + 68] = mem[_10135 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _10135 + -mem[64] + 100
                        require totalSupply
                        if not arg1:
                            if not arg1 * _taxFee / 100:
                                if not arg1 * _burnFee / 100:
                                    return 0
                                require arg1 * _burnFee / 100
                                if arg1 * _burnFee / 100 * stor7 / totalSupply / arg1 * _burnFee / 100 != stor7 / totalSupply:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _11414 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_11414] = 30
                                mem[_11414 + 32] = 'SafeMath: subtraction overflow'
                                _12244 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_12244] = 30
                                mem[_12244 + 32] = 'SafeMath: subtraction overflow'
                                if arg1 * _burnFee / 100 * stor7 / totalSupply > 0:
                                    _12927 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_12927 + idx + 68] = mem[_12244 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_12927 + 68] = mem[_12927 + 70 len 30]
                                    revert with memory
                                      from mem[64]
                                       len _12927 + -mem[64] + 100
                                _14182 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_14182] = 30
                                mem[_14182 + 32] = 'SafeMath: subtraction overflow'
                                if 0 <= -1 * arg1 * _burnFee / 100 * stor7 / totalSupply:
                                    return 0
                                _15067 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_15067 + idx + 68] = mem[_14182 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_15067 + 68] = mem[_15067 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _15067 + -mem[64] + 100
                            require arg1 * _taxFee / 100
                            if arg1 * _taxFee / 100 * stor7 / totalSupply / arg1 * _taxFee / 100 != stor7 / totalSupply:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if not arg1 * _burnFee / 100:
                                _11413 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_11413] = 30
                                mem[_11413 + 32] = 'SafeMath: subtraction overflow'
                                if arg1 * _taxFee / 100 * stor7 / totalSupply > 0:
                                    _11651 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_11651 + idx + 68] = mem[_11413 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_11651 + 68] = mem[_11651 + 70 len 30]
                                    revert with memory
                                      from mem[64]
                                       len _11651 + -mem[64] + 100
                                _12241 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_12241] = 30
                                mem[_12241 + 32] = 'SafeMath: subtraction overflow'
                                if 0 <= -1 * arg1 * _taxFee / 100 * stor7 / totalSupply:
                                    return 0
                                _12924 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_12924 + idx + 68] = mem[_12241 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_12924 + 68] = mem[_12924 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _12924 + -mem[64] + 100
                            require arg1 * _burnFee / 100
                            if arg1 * _burnFee / 100 * stor7 / totalSupply / arg1 * _burnFee / 100 != stor7 / totalSupply:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _11650 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_11650] = 30
                            mem[_11650 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _taxFee / 100 * stor7 / totalSupply > 0:
                                _12035 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_12035 + idx + 68] = mem[_11650 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_12035 + 68] = mem[_12035 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _12035 + -mem[64] + 100
                            _12921 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12921] = 30
                            mem[_12921 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _burnFee / 100 * stor7 / totalSupply > -1 * arg1 * _taxFee / 100 * stor7 / totalSupply:
                                _13774 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_13774 + idx + 68] = mem[_12921 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_13774 + 68] = mem[_13774 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _13774 + -mem[64] + 100
                            _15064 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_15064] = 30
                            mem[_15064 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= (-1 * arg1 * _taxFee / 100 * stor7 / totalSupply) - (arg1 * _burnFee / 100 * stor7 / totalSupply):
                                return 0
                            _15923 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_15923 + idx + 68] = mem[_15064 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_15923 + 68] = mem[_15923 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _15923 + -mem[64] + 100
                        require arg1
                        if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not arg1 * _taxFee / 100:
                            if not arg1 * _burnFee / 100:
                                _11412 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_11412] = 30
                                mem[_11412 + 32] = 'SafeMath: subtraction overflow'
                                if 0 <= arg1 * stor7 / totalSupply:
                                    return (arg1 * stor7 / totalSupply)
                                _11647 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_11647 + idx + 68] = mem[_11412 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_11647 + 68] = mem[_11647 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _11647 + -mem[64] + 100
                            require arg1 * _burnFee / 100
                            if arg1 * _burnFee / 100 * stor7 / totalSupply / arg1 * _burnFee / 100 != stor7 / totalSupply:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _11646 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_11646] = 30
                            mem[_11646 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor7 / totalSupply:
                                _12031 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_12031 + idx + 68] = mem[_11646 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_12031 + 68] = mem[_12031 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _12031 + -mem[64] + 100
                            _12918 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12918] = 30
                            mem[_12918 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _burnFee / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                                _13771 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_13771 + idx + 68] = mem[_12918 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_13771 + 68] = mem[_13771 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _13771 + -mem[64] + 100
                            _15061 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_15061] = 30
                            mem[_15061 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= (arg1 * stor7 / totalSupply) - (arg1 * _burnFee / 100 * stor7 / totalSupply):
                                return (arg1 * stor7 / totalSupply)
                            _15920 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_15920 + idx + 68] = mem[_15061 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_15920 + 68] = mem[_15920 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _15920 + -mem[64] + 100
                        require arg1 * _taxFee / 100
                        if arg1 * _taxFee / 100 * stor7 / totalSupply / arg1 * _taxFee / 100 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not arg1 * _burnFee / 100:
                            _11645 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_11645] = 30
                            mem[_11645 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _taxFee / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                                _12028 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_12028 + idx + 68] = mem[_11645 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_12028 + 68] = mem[_12028 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _12028 + -mem[64] + 100
                            _12915 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12915] = 30
                            mem[_12915 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 100 * stor7 / totalSupply):
                                return (arg1 * stor7 / totalSupply)
                            _13768 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_13768 + idx + 68] = mem[_12915 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_13768 + 68] = mem[_13768 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _13768 + -mem[64] + 100
                        require arg1 * _burnFee / 100
                        if arg1 * _burnFee / 100 * stor7 / totalSupply / arg1 * _burnFee / 100 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _12027 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12027] = 30
                        mem[_12027 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                            _12597 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_12597 + idx + 68] = mem[_12027 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_12597 + 68] = mem[_12597 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _12597 + -mem[64] + 100
                        _13765 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_13765] = 30
                        mem[_13765 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _burnFee / 100 * stor7 / totalSupply > (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 100 * stor7 / totalSupply):
                            _14663 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_14663 + idx + 68] = mem[_13765 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_14663 + 68] = mem[_14663 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _14663 + -mem[64] + 100
                        _15917 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_15917] = 30
                        mem[_15917 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 100 * stor7 / totalSupply) - (arg1 * _burnFee / 100 * stor7 / totalSupply):
                            return (arg1 * stor7 / totalSupply)
                        _16731 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_16731 + idx + 68] = mem[_15917 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_16731 + 68] = mem[_16731 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _16731 + -mem[64] + 100
                    require idx < stor5.length
                    mem[0] = stor5[idx]
                    mem[32] = 2
                    if stor2[stor5[idx]] <= s:
                        require idx < stor5.length
                        mem[0] = stor5[idx]
                        mem[32] = 1
                        _10086 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_10086] = 30
                        mem[_10086 + 32] = 'SafeMath: subtraction overflow'
                        if stor1[stor5[idx]] > t:
                            _10190 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_10190 + idx + 68] = mem[_10086 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_10190 + 68] = mem[_10190 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _10190 + -mem[64] + 100
                        require idx < stor5.length
                        mem[0] = stor5[idx]
                        mem[32] = 2
                        _10583 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_10583] = 30
                        mem[_10583 + 32] = 'SafeMath: subtraction overflow'
                        if stor2[stor5[idx]] <= s:
                            idx = idx + 1
                            s = s - stor2[stor5[idx]]
                            t = t - stor1[stor5[idx]]
                            continue 
                        _10726 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_10726 + idx + 68] = mem[_10583 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_10726 + 68] = mem[_10726 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _10726 + -mem[64] + 100
                    _10138 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_10138] = 26
                    mem[_10138 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _10268 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_10268 + idx + 68] = mem[_10138 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_10268 + 68] = mem[_10268 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _10268 + -mem[64] + 100
                    require totalSupply
                    if not arg1:
                        if not arg1 * _taxFee / 100:
                            if not arg1 * _burnFee / 100:
                                return 0
                            require arg1 * _burnFee / 100
                            if arg1 * _burnFee / 100 * stor7 / totalSupply / arg1 * _burnFee / 100 != stor7 / totalSupply:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _11656 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_11656] = 30
                            mem[_11656 + 32] = 'SafeMath: subtraction overflow'
                            _12936 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12936] = 30
                            mem[_12936 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _burnFee / 100 * stor7 / totalSupply > 0:
                                _13791 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_13791 + idx + 68] = mem[_12936 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_13791 + 68] = mem[_13791 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _13791 + -mem[64] + 100
                            _15075 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_15075] = 30
                            mem[_15075 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= -1 * arg1 * _burnFee / 100 * stor7 / totalSupply:
                                return 0
                            _15936 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_15936 + idx + 68] = mem[_15075 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_15936 + 68] = mem[_15936 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _15936 + -mem[64] + 100
                        require arg1 * _taxFee / 100
                        if arg1 * _taxFee / 100 * stor7 / totalSupply / arg1 * _taxFee / 100 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not arg1 * _burnFee / 100:
                            _11655 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_11655] = 30
                            mem[_11655 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _taxFee / 100 * stor7 / totalSupply > 0:
                                _12045 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_12045 + idx + 68] = mem[_11655 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_12045 + 68] = mem[_12045 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _12045 + -mem[64] + 100
                            _12933 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12933] = 30
                            mem[_12933 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= -1 * arg1 * _taxFee / 100 * stor7 / totalSupply:
                                return 0
                            _13788 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_13788 + idx + 68] = mem[_12933 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_13788 + 68] = mem[_13788 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _13788 + -mem[64] + 100
                        require arg1 * _burnFee / 100
                        if arg1 * _burnFee / 100 * stor7 / totalSupply / arg1 * _burnFee / 100 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _12044 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12044] = 30
                        mem[_12044 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor7 / totalSupply > 0:
                            _12613 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_12613 + idx + 68] = mem[_12044 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_12613 + 68] = mem[_12613 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _12613 + -mem[64] + 100
                        _13785 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_13785] = 30
                        mem[_13785 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _burnFee / 100 * stor7 / totalSupply > -1 * arg1 * _taxFee / 100 * stor7 / totalSupply:
                            _14680 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_14680 + idx + 68] = mem[_13785 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_14680 + 68] = mem[_14680 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _14680 + -mem[64] + 100
                        _15933 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_15933] = 30
                        mem[_15933 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= (-1 * arg1 * _taxFee / 100 * stor7 / totalSupply) - (arg1 * _burnFee / 100 * stor7 / totalSupply):
                            return 0
                        _16745 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_16745 + idx + 68] = mem[_15933 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_16745 + 68] = mem[_16745 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _16745 + -mem[64] + 100
                    require arg1
                    if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not arg1 * _taxFee / 100:
                        if not arg1 * _burnFee / 100:
                            _11654 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_11654] = 30
                            mem[_11654 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= arg1 * stor7 / totalSupply:
                                return (arg1 * stor7 / totalSupply)
                            _12041 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_12041 + idx + 68] = mem[_11654 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_12041 + 68] = mem[_12041 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _12041 + -mem[64] + 100
                        require arg1 * _burnFee / 100
                        if arg1 * _burnFee / 100 * stor7 / totalSupply / arg1 * _burnFee / 100 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _12040 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12040] = 30
                        mem[_12040 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor7 / totalSupply:
                            _12609 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_12609 + idx + 68] = mem[_12040 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_12609 + 68] = mem[_12609 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _12609 + -mem[64] + 100
                        _13782 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_13782] = 30
                        mem[_13782 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _burnFee / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                            _14677 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_14677 + idx + 68] = mem[_13782 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_14677 + 68] = mem[_14677 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _14677 + -mem[64] + 100
                        _15930 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_15930] = 30
                        mem[_15930 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= (arg1 * stor7 / totalSupply) - (arg1 * _burnFee / 100 * stor7 / totalSupply):
                            return (arg1 * stor7 / totalSupply)
                        _16742 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_16742 + idx + 68] = mem[_15930 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_16742 + 68] = mem[_16742 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _16742 + -mem[64] + 100
                    require arg1 * _taxFee / 100
                    if arg1 * _taxFee / 100 * stor7 / totalSupply / arg1 * _taxFee / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not arg1 * _burnFee / 100:
                        _12039 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12039] = 30
                        mem[_12039 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                            _12606 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_12606 + idx + 68] = mem[_12039 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_12606 + 68] = mem[_12606 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _12606 + -mem[64] + 100
                        _13779 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_13779] = 30
                        mem[_13779 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 100 * stor7 / totalSupply):
                            return (arg1 * stor7 / totalSupply)
                        _14674 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_14674 + idx + 68] = mem[_13779 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_14674 + 68] = mem[_14674 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _14674 + -mem[64] + 100
                    require arg1 * _burnFee / 100
                    if arg1 * _burnFee / 100 * stor7 / totalSupply / arg1 * _burnFee / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _12605 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_12605] = 30
                    mem[_12605 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                        _13337 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_13337 + idx + 68] = mem[_12605 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_13337 + 68] = mem[_13337 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _13337 + -mem[64] + 100
                    _14671 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_14671] = 30
                    mem[_14671 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _burnFee / 100 * stor7 / totalSupply > (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 100 * stor7 / totalSupply):
                        _15505 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_15505 + idx + 68] = mem[_14671 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_15505 + 68] = mem[_15505 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _15505 + -mem[64] + 100
                    _16739 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_16739] = 30
                    mem[_16739 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 100 * stor7 / totalSupply) - (arg1 * _burnFee / 100 * stor7 / totalSupply):
                        return (arg1 * stor7 / totalSupply)
                    _17484 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_17484 + idx + 68] = mem[_16739 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_17484 + 68] = mem[_17484 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _17484 + -mem[64] + 100
                _9796 = mem[64]
                mem[64] = mem[64] + 64
                mem[_9796] = 26
                mem[_9796 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                if t >= stor7 / totalSupply:
                    _10265 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_10265] = 26
                    mem[_10265 + 32] = 'SafeMath: division by zero'
                    if s <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require s
                    if not arg1:
                        if not arg1 * _taxFee / 100:
                            if arg1 * _burnFee / 100:
                                require arg1 * _burnFee / 100
                                if arg1 * _burnFee / 100 * t / s / arg1 * _burnFee / 100 != t / s:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if arg1 * _burnFee / 100 * t / s > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if 0 > -1 * arg1 * _burnFee / 100 * t / s:
                                    revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            require arg1 * _taxFee / 100
                            if arg1 * _taxFee / 100 * t / s / arg1 * _taxFee / 100 != t / s:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if not arg1 * _burnFee / 100:
                                if arg1 * _taxFee / 100 * t / s > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if 0 > -1 * arg1 * _taxFee / 100 * t / s:
                                    revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                require arg1 * _burnFee / 100
                                if arg1 * _burnFee / 100 * t / s / arg1 * _burnFee / 100 != t / s:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if arg1 * _taxFee / 100 * t / s > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if arg1 * _burnFee / 100 * t / s > -1 * arg1 * _taxFee / 100 * t / s:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if 0 > (-1 * arg1 * _taxFee / 100 * t / s) - (arg1 * _burnFee / 100 * t / s):
                                    revert with 0, 'SafeMath: subtraction overflow'
                        return 0
                    require arg1
                    if arg1 * t / s / arg1 != t / s:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not arg1 * _taxFee / 100:
                        if not arg1 * _burnFee / 100:
                            if 0 > arg1 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            require arg1 * _burnFee / 100
                            if arg1 * _burnFee / 100 * t / s / arg1 * _burnFee / 100 != t / s:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if 0 > arg1 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if arg1 * _burnFee / 100 * t / s > arg1 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0 > (arg1 * t / s) - (arg1 * _burnFee / 100 * t / s):
                                revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        require arg1 * _taxFee / 100
                        if arg1 * _taxFee / 100 * t / s / arg1 * _taxFee / 100 != t / s:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not arg1 * _burnFee / 100:
                            if arg1 * _taxFee / 100 * t / s > arg1 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0 > (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s):
                                revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            require arg1 * _burnFee / 100
                            if arg1 * _burnFee / 100 * t / s / arg1 * _burnFee / 100 != t / s:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if arg1 * _taxFee / 100 * t / s > arg1 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if arg1 * _burnFee / 100 * t / s > (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s):
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0 > (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s) - (arg1 * _burnFee / 100 * t / s):
                                revert with 0, 'SafeMath: subtraction overflow'
                    return (arg1 * t / s)
                _10266 = mem[64]
                mem[64] = mem[64] + 64
                mem[_10266] = 26
                mem[_10266 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                if not arg1:
                    if not arg1 * _taxFee / 100:
                        if arg1 * _burnFee / 100:
                            require arg1 * _burnFee / 100
                            if arg1 * _burnFee / 100 * stor7 / totalSupply / arg1 * _burnFee / 100 != stor7 / totalSupply:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if arg1 * _burnFee / 100 * stor7 / totalSupply > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0 > -1 * arg1 * _burnFee / 100 * stor7 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        require arg1 * _taxFee / 100
                        if arg1 * _taxFee / 100 * stor7 / totalSupply / arg1 * _taxFee / 100 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not arg1 * _burnFee / 100:
                            if arg1 * _taxFee / 100 * stor7 / totalSupply > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0 > -1 * arg1 * _taxFee / 100 * stor7 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            require arg1 * _burnFee / 100
                            if arg1 * _burnFee / 100 * stor7 / totalSupply / arg1 * _burnFee / 100 != stor7 / totalSupply:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if arg1 * _taxFee / 100 * stor7 / totalSupply > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if arg1 * _burnFee / 100 * stor7 / totalSupply > -1 * arg1 * _taxFee / 100 * stor7 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0 > (-1 * arg1 * _taxFee / 100 * stor7 / totalSupply) - (arg1 * _burnFee / 100 * stor7 / totalSupply):
                                revert with 0, 'SafeMath: subtraction overflow'
                    return 0
                require arg1
                if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not arg1 * _taxFee / 100:
                    if not arg1 * _burnFee / 100:
                        if 0 > arg1 * stor7 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        require arg1 * _burnFee / 100
                        if arg1 * _burnFee / 100 * stor7 / totalSupply / arg1 * _burnFee / 100 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if 0 > arg1 * stor7 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if arg1 * _burnFee / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 > (arg1 * stor7 / totalSupply) - (arg1 * _burnFee / 100 * stor7 / totalSupply):
                            revert with 0, 'SafeMath: subtraction overflow'
                else:
                    require arg1 * _taxFee / 100
                    if arg1 * _taxFee / 100 * stor7 / totalSupply / arg1 * _taxFee / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not arg1 * _burnFee / 100:
                        if arg1 * _taxFee / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 > (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 100 * stor7 / totalSupply):
                            revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        require arg1 * _burnFee / 100
                        if arg1 * _burnFee / 100 * stor7 / totalSupply / arg1 * _burnFee / 100 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if arg1 * _taxFee / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if arg1 * _burnFee / 100 * stor7 / totalSupply > (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 100 * stor7 / totalSupply):
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 > (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 100 * stor7 / totalSupply) - (arg1 * _burnFee / 100 * stor7 / totalSupply):
                            revert with 0, 'SafeMath: subtraction overflow'
            else:
                require arg1
                if arg1 * _fundFee / arg1 != _fundFee:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                mem[224] = 26
                mem[256] = 'SafeMath: division by zero'
                mem[288] = 30
                mem[320] = 'SafeMath: subtraction overflow'
                if arg1 * _taxFee / 100 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                mem[352] = 30
                mem[384] = 'SafeMath: subtraction overflow'
                if arg1 * _burnFee / 100 > arg1 - (arg1 * _taxFee / 100):
                    revert with 0, 'SafeMath: subtraction overflow'
                mem[64] = 480
                mem[416] = 30
                mem[448] = 'SafeMath: subtraction overflow'
                if arg1 * _fundFee / 100 > arg1 - (arg1 * _taxFee / 100) - (arg1 * _burnFee / 100):
                    revert with 0, 'SafeMath: subtraction overflow'
                idx = 0
                s = totalSupply
                t = stor7
                while idx < stor5.length:
                    mem[0] = stor5[idx]
                    mem[32] = 1
                    if stor1[stor5[idx]] > t:
                        _10029 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_10029] = 26
                        mem[_10029 + 32] = 'SafeMath: division by zero'
                        if totalSupply <= 0:
                            _10131 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_10131 + idx + 68] = mem[_10029 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_10131 + 68] = mem[_10131 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _10131 + -mem[64] + 100
                        require totalSupply
                        if not arg1:
                            if not arg1 * _taxFee / 100:
                                if not arg1 * _burnFee / 100:
                                    if not arg1 * _fundFee / 100:
                                        return 0
                                    require arg1 * _fundFee / 100
                                    if arg1 * _fundFee / 100 * stor7 / totalSupply / arg1 * _fundFee / 100 != stor7 / totalSupply:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _11410 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_11410] = 30
                                    mem[_11410 + 32] = 'SafeMath: subtraction overflow'
                                    _12234 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_12234] = 30
                                    mem[_12234 + 32] = 'SafeMath: subtraction overflow'
                                    _14147 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_14147] = 30
                                    mem[_14147 + 32] = 'SafeMath: subtraction overflow'
                                    if arg1 * _fundFee / 100 * stor7 / totalSupply <= 0:
                                        return 0
                                    _15032 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_15032 + idx + 68] = mem[_14147 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_15032 + 68] = mem[_15032 + 70 len 30]
                                    revert with memory
                                      from mem[64]
                                       len _15032 + -mem[64] + 100
                                require arg1 * _burnFee / 100
                                if arg1 * _burnFee / 100 * stor7 / totalSupply / arg1 * _burnFee / 100 != stor7 / totalSupply:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if not arg1 * _fundFee / 100:
                                    _11409 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_11409] = 30
                                    mem[_11409 + 32] = 'SafeMath: subtraction overflow'
                                    _12233 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_12233] = 30
                                    mem[_12233 + 32] = 'SafeMath: subtraction overflow'
                                    if arg1 * _burnFee / 100 * stor7 / totalSupply > 0:
                                        _12902 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[_12902 + idx + 68] = mem[_12233 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_12902 + 68] = mem[_12902 + 70 len 30]
                                        revert with memory
                                          from mem[64]
                                           len _12902 + -mem[64] + 100
                                    _14144 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_14144] = 30
                                    mem[_14144 + 32] = 'SafeMath: subtraction overflow'
                                    if 0 <= -1 * arg1 * _burnFee / 100 * stor7 / totalSupply:
                                        return 0
                                    _15029 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_15029 + idx + 68] = mem[_14144 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_15029 + 68] = mem[_15029 + 70 len 30]
                                    revert with memory
                                      from mem[64]
                                       len _15029 + -mem[64] + 100
                                require arg1 * _fundFee / 100
                                if arg1 * _fundFee / 100 * stor7 / totalSupply / arg1 * _fundFee / 100 != stor7 / totalSupply:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _11638 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_11638] = 30
                                mem[_11638 + 32] = 'SafeMath: subtraction overflow'
                                _12901 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_12901] = 30
                                mem[_12901 + 32] = 'SafeMath: subtraction overflow'
                                if arg1 * _burnFee / 100 * stor7 / totalSupply > 0:
                                    _13725 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_13725 + idx + 68] = mem[_12901 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_13725 + 68] = mem[_13725 + 70 len 30]
                                    revert with memory
                                      from mem[64]
                                       len _13725 + -mem[64] + 100
                                _15026 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_15026] = 30
                                mem[_15026 + 32] = 'SafeMath: subtraction overflow'
                                if arg1 * _fundFee / 100 * stor7 / totalSupply <= -1 * arg1 * _burnFee / 100 * stor7 / totalSupply:
                                    return 0
                                _15873 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_15873 + idx + 68] = mem[_15026 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_15873 + 68] = mem[_15873 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _15873 + -mem[64] + 100
                            require arg1 * _taxFee / 100
                            if arg1 * _taxFee / 100 * stor7 / totalSupply / arg1 * _taxFee / 100 != stor7 / totalSupply:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if not arg1 * _burnFee / 100:
                                if not arg1 * _fundFee / 100:
                                    _11408 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_11408] = 30
                                    mem[_11408 + 32] = 'SafeMath: subtraction overflow'
                                    if arg1 * _taxFee / 100 * stor7 / totalSupply > 0:
                                        _11635 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[_11635 + idx + 68] = mem[_11408 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_11635 + 68] = mem[_11635 + 70 len 30]
                                        revert with memory
                                          from mem[64]
                                           len _11635 + -mem[64] + 100
                                    _12230 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_12230] = 30
                                    mem[_12230 + 32] = 'SafeMath: subtraction overflow'
                                    if 0 <= -1 * arg1 * _taxFee / 100 * stor7 / totalSupply:
                                        return 0
                                    _12898 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_12898 + idx + 68] = mem[_12230 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_12898 + 68] = mem[_12898 + 70 len 30]
                                    revert with memory
                                      from mem[64]
                                       len _12898 + -mem[64] + 100
                                require arg1 * _fundFee / 100
                                if arg1 * _fundFee / 100 * stor7 / totalSupply / arg1 * _fundFee / 100 != stor7 / totalSupply:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _11634 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_11634] = 30
                                mem[_11634 + 32] = 'SafeMath: subtraction overflow'
                                if arg1 * _taxFee / 100 * stor7 / totalSupply > 0:
                                    _12005 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_12005 + idx + 68] = mem[_11634 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_12005 + 68] = mem[_12005 + 70 len 30]
                                    revert with memory
                                      from mem[64]
                                       len _12005 + -mem[64] + 100
                                _12895 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_12895] = 30
                                mem[_12895 + 32] = 'SafeMath: subtraction overflow'
                                if 0 > -1 * arg1 * _taxFee / 100 * stor7 / totalSupply:
                                    _13721 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_13721 + idx + 68] = mem[_12895 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_13721 + 68] = mem[_13721 + 70 len 30]
                                    revert with memory
                                      from mem[64]
                                       len _13721 + -mem[64] + 100
                                _15023 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_15023] = 30
                                mem[_15023 + 32] = 'SafeMath: subtraction overflow'
                                if arg1 * _fundFee / 100 * stor7 / totalSupply <= -1 * arg1 * _taxFee / 100 * stor7 / totalSupply:
                                    return 0
                                _15870 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_15870 + idx + 68] = mem[_15023 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_15870 + 68] = mem[_15870 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _15870 + -mem[64] + 100
                            require arg1 * _burnFee / 100
                            if arg1 * _burnFee / 100 * stor7 / totalSupply / arg1 * _burnFee / 100 != stor7 / totalSupply:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if not arg1 * _fundFee / 100:
                                _11633 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_11633] = 30
                                mem[_11633 + 32] = 'SafeMath: subtraction overflow'
                                if arg1 * _taxFee / 100 * stor7 / totalSupply > 0:
                                    _12002 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_12002 + idx + 68] = mem[_11633 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_12002 + 68] = mem[_12002 + 70 len 30]
                                    revert with memory
                                      from mem[64]
                                       len _12002 + -mem[64] + 100
                                _12892 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_12892] = 30
                                mem[_12892 + 32] = 'SafeMath: subtraction overflow'
                                if arg1 * _burnFee / 100 * stor7 / totalSupply > -1 * arg1 * _taxFee / 100 * stor7 / totalSupply:
                                    _13718 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_13718 + idx + 68] = mem[_12892 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_13718 + 68] = mem[_13718 + 70 len 30]
                                    revert with memory
                                      from mem[64]
                                       len _13718 + -mem[64] + 100
                                _15020 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_15020] = 30
                                mem[_15020 + 32] = 'SafeMath: subtraction overflow'
                                if 0 <= (-1 * arg1 * _taxFee / 100 * stor7 / totalSupply) - (arg1 * _burnFee / 100 * stor7 / totalSupply):
                                    return 0
                                _15867 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_15867 + idx + 68] = mem[_15020 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_15867 + 68] = mem[_15867 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _15867 + -mem[64] + 100
                            require arg1 * _fundFee / 100
                            if arg1 * _fundFee / 100 * stor7 / totalSupply / arg1 * _fundFee / 100 != stor7 / totalSupply:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _12001 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12001] = 30
                            mem[_12001 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _taxFee / 100 * stor7 / totalSupply > 0:
                                _12552 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_12552 + idx + 68] = mem[_12001 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_12552 + 68] = mem[_12552 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _12552 + -mem[64] + 100
                            _13715 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_13715] = 30
                            mem[_13715 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _burnFee / 100 * stor7 / totalSupply > -1 * arg1 * _taxFee / 100 * stor7 / totalSupply:
                                _14596 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_14596 + idx + 68] = mem[_13715 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_14596 + 68] = mem[_14596 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _14596 + -mem[64] + 100
                            _15864 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_15864] = 30
                            mem[_15864 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _fundFee / 100 * stor7 / totalSupply <= (-1 * arg1 * _taxFee / 100 * stor7 / totalSupply) - (arg1 * _burnFee / 100 * stor7 / totalSupply):
                                return 0
                            _16668 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_16668 + idx + 68] = mem[_15864 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_16668 + 68] = mem[_16668 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _16668 + -mem[64] + 100
                        require arg1
                        if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not arg1 * _taxFee / 100:
                            if not arg1 * _burnFee / 100:
                                if not arg1 * _fundFee / 100:
                                    _11407 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_11407] = 30
                                    mem[_11407 + 32] = 'SafeMath: subtraction overflow'
                                    if 0 <= arg1 * stor7 / totalSupply:
                                        return (arg1 * stor7 / totalSupply)
                                    _11630 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_11630 + idx + 68] = mem[_11407 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_11630 + 68] = mem[_11630 + 70 len 30]
                                    revert with memory
                                      from mem[64]
                                       len _11630 + -mem[64] + 100
                                require arg1 * _fundFee / 100
                                if arg1 * _fundFee / 100 * stor7 / totalSupply / arg1 * _fundFee / 100 != stor7 / totalSupply:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _11629 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_11629] = 30
                                mem[_11629 + 32] = 'SafeMath: subtraction overflow'
                                if 0 > arg1 * stor7 / totalSupply:
                                    _11997 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_11997 + idx + 68] = mem[_11629 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_11997 + 68] = mem[_11997 + 70 len 30]
                                    revert with memory
                                      from mem[64]
                                       len _11997 + -mem[64] + 100
                                _12889 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_12889] = 30
                                mem[_12889 + 32] = 'SafeMath: subtraction overflow'
                                _15019 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_15019] = 30
                                mem[_15019 + 32] = 'SafeMath: subtraction overflow'
                                if arg1 * _fundFee / 100 * stor7 / totalSupply <= arg1 * stor7 / totalSupply:
                                    return (arg1 * stor7 / totalSupply)
                                _15861 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_15861 + idx + 68] = mem[_15019 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_15861 + 68] = mem[_15861 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _15861 + -mem[64] + 100
                            require arg1 * _burnFee / 100
                            if arg1 * _burnFee / 100 * stor7 / totalSupply / arg1 * _burnFee / 100 != stor7 / totalSupply:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if not arg1 * _fundFee / 100:
                                _11628 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_11628] = 30
                                mem[_11628 + 32] = 'SafeMath: subtraction overflow'
                                if 0 > arg1 * stor7 / totalSupply:
                                    _11994 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_11994 + idx + 68] = mem[_11628 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_11994 + 68] = mem[_11994 + 70 len 30]
                                    revert with memory
                                      from mem[64]
                                       len _11994 + -mem[64] + 100
                                _12886 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_12886] = 30
                                mem[_12886 + 32] = 'SafeMath: subtraction overflow'
                                if arg1 * _burnFee / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                                    _13712 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_13712 + idx + 68] = mem[_12886 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_13712 + 68] = mem[_13712 + 70 len 30]
                                    revert with memory
                                      from mem[64]
                                       len _13712 + -mem[64] + 100
                                _15016 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_15016] = 30
                                mem[_15016 + 32] = 'SafeMath: subtraction overflow'
                                if 0 <= (arg1 * stor7 / totalSupply) - (arg1 * _burnFee / 100 * stor7 / totalSupply):
                                    return (arg1 * stor7 / totalSupply)
                                _15858 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_15858 + idx + 68] = mem[_15016 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_15858 + 68] = mem[_15858 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _15858 + -mem[64] + 100
                            require arg1 * _fundFee / 100
                            if arg1 * _fundFee / 100 * stor7 / totalSupply / arg1 * _fundFee / 100 != stor7 / totalSupply:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _11993 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_11993] = 30
                            mem[_11993 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor7 / totalSupply:
                                _12546 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_12546 + idx + 68] = mem[_11993 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_12546 + 68] = mem[_12546 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _12546 + -mem[64] + 100
                            _13709 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_13709] = 30
                            mem[_13709 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _burnFee / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                                _14592 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_14592 + idx + 68] = mem[_13709 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_14592 + 68] = mem[_14592 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _14592 + -mem[64] + 100
                            _15855 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_15855] = 30
                            mem[_15855 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _fundFee / 100 * stor7 / totalSupply <= (arg1 * stor7 / totalSupply) - (arg1 * _burnFee / 100 * stor7 / totalSupply):
                                return (arg1 * stor7 / totalSupply)
                            _16663 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_16663 + idx + 68] = mem[_15855 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_16663 + 68] = mem[_16663 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _16663 + -mem[64] + 100
                        require arg1 * _taxFee / 100
                        if arg1 * _taxFee / 100 * stor7 / totalSupply / arg1 * _taxFee / 100 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not arg1 * _burnFee / 100:
                            if not arg1 * _fundFee / 100:
                                _11627 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_11627] = 30
                                mem[_11627 + 32] = 'SafeMath: subtraction overflow'
                                if arg1 * _taxFee / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                                    _11990 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_11990 + idx + 68] = mem[_11627 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_11990 + 68] = mem[_11990 + 70 len 30]
                                    revert with memory
                                      from mem[64]
                                       len _11990 + -mem[64] + 100
                                _12883 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_12883] = 30
                                mem[_12883 + 32] = 'SafeMath: subtraction overflow'
                                if 0 <= (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 100 * stor7 / totalSupply):
                                    return (arg1 * stor7 / totalSupply)
                                _13706 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_13706 + idx + 68] = mem[_12883 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_13706 + 68] = mem[_13706 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _13706 + -mem[64] + 100
                            require arg1 * _fundFee / 100
                            if arg1 * _fundFee / 100 * stor7 / totalSupply / arg1 * _fundFee / 100 != stor7 / totalSupply:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _11989 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_11989] = 30
                            mem[_11989 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _taxFee / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                                _12542 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_12542 + idx + 68] = mem[_11989 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_12542 + 68] = mem[_12542 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _12542 + -mem[64] + 100
                            _13703 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_13703] = 30
                            mem[_13703 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 100 * stor7 / totalSupply):
                                _14588 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_14588 + idx + 68] = mem[_13703 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_14588 + 68] = mem[_14588 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _14588 + -mem[64] + 100
                            _15852 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_15852] = 30
                            mem[_15852 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _fundFee / 100 * stor7 / totalSupply <= (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 100 * stor7 / totalSupply):
                                return (arg1 * stor7 / totalSupply)
                            _16660 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_16660 + idx + 68] = mem[_15852 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_16660 + 68] = mem[_16660 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _16660 + -mem[64] + 100
                        require arg1 * _burnFee / 100
                        if arg1 * _burnFee / 100 * stor7 / totalSupply / arg1 * _burnFee / 100 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not arg1 * _fundFee / 100:
                            _11988 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_11988] = 30
                            mem[_11988 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _taxFee / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                                _12539 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_12539 + idx + 68] = mem[_11988 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_12539 + 68] = mem[_12539 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _12539 + -mem[64] + 100
                            _13700 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_13700] = 30
                            mem[_13700 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _burnFee / 100 * stor7 / totalSupply > (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 100 * stor7 / totalSupply):
                                _14585 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_14585 + idx + 68] = mem[_13700 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_14585 + 68] = mem[_14585 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _14585 + -mem[64] + 100
                            _15849 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_15849] = 30
                            mem[_15849 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 100 * stor7 / totalSupply) - (arg1 * _burnFee / 100 * stor7 / totalSupply):
                                return (arg1 * stor7 / totalSupply)
                            _16657 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_16657 + idx + 68] = mem[_15849 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_16657 + 68] = mem[_16657 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _16657 + -mem[64] + 100
                        require arg1 * _fundFee / 100
                        if arg1 * _fundFee / 100 * stor7 / totalSupply / arg1 * _fundFee / 100 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _12538 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12538] = 30
                        mem[_12538 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                            _13275 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_13275 + idx + 68] = mem[_12538 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_13275 + 68] = mem[_13275 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _13275 + -mem[64] + 100
                        _14582 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_14582] = 30
                        mem[_14582 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _burnFee / 100 * stor7 / totalSupply > (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 100 * stor7 / totalSupply):
                            _15439 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_15439 + idx + 68] = mem[_14582 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_15439 + 68] = mem[_15439 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _15439 + -mem[64] + 100
                        _16654 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_16654] = 30
                        mem[_16654 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _fundFee / 100 * stor7 / totalSupply <= (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 100 * stor7 / totalSupply) - (arg1 * _burnFee / 100 * stor7 / totalSupply):
                            return (arg1 * stor7 / totalSupply)
                        _17411 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_17411 + idx + 68] = mem[_16654 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_17411 + 68] = mem[_17411 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _17411 + -mem[64] + 100
                    require idx < stor5.length
                    mem[0] = stor5[idx]
                    mem[32] = 2
                    if stor2[stor5[idx]] <= s:
                        require idx < stor5.length
                        mem[0] = stor5[idx]
                        mem[32] = 1
                        _10084 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_10084] = 30
                        mem[_10084 + 32] = 'SafeMath: subtraction overflow'
                        if stor1[stor5[idx]] > t:
                            _10187 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_10187 + idx + 68] = mem[_10084 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_10187 + 68] = mem[_10187 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _10187 + -mem[64] + 100
                        require idx < stor5.length
                        mem[0] = stor5[idx]
                        mem[32] = 2
                        _10579 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_10579] = 30
                        mem[_10579 + 32] = 'SafeMath: subtraction overflow'
                        if stor2[stor5[idx]] <= s:
                            idx = idx + 1
                            s = s - stor2[stor5[idx]]
                            t = t - stor1[stor5[idx]]
                            continue 
                        _10719 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_10719 + idx + 68] = mem[_10579 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_10719 + 68] = mem[_10719 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _10719 + -mem[64] + 100
                    _10134 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_10134] = 26
                    mem[_10134 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _10262 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_10262 + idx + 68] = mem[_10134 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_10262 + 68] = mem[_10262 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _10262 + -mem[64] + 100
                    require totalSupply
                    if not arg1:
                        if not arg1 * _taxFee / 100:
                            if not arg1 * _burnFee / 100:
                                if not arg1 * _fundFee / 100:
                                    return 0
                                require arg1 * _fundFee / 100
                                if arg1 * _fundFee / 100 * stor7 / totalSupply / arg1 * _fundFee / 100 != stor7 / totalSupply:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _11642 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_11642] = 30
                                mem[_11642 + 32] = 'SafeMath: subtraction overflow'
                                _12912 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_12912] = 30
                                mem[_12912 + 32] = 'SafeMath: subtraction overflow'
                                _15047 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_15047] = 30
                                mem[_15047 + 32] = 'SafeMath: subtraction overflow'
                                if arg1 * _fundFee / 100 * stor7 / totalSupply <= 0:
                                    return 0
                                _15898 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_15898 + idx + 68] = mem[_15047 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_15898 + 68] = mem[_15898 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _15898 + -mem[64] + 100
                            require arg1 * _burnFee / 100
                            if arg1 * _burnFee / 100 * stor7 / totalSupply / arg1 * _burnFee / 100 != stor7 / totalSupply:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if not arg1 * _fundFee / 100:
                                _11641 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_11641] = 30
                                mem[_11641 + 32] = 'SafeMath: subtraction overflow'
                                _12911 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_12911] = 30
                                mem[_12911 + 32] = 'SafeMath: subtraction overflow'
                                if arg1 * _burnFee / 100 * stor7 / totalSupply > 0:
                                    _13748 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_13748 + idx + 68] = mem[_12911 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_13748 + 68] = mem[_13748 + 70 len 30]
                                    revert with memory
                                      from mem[64]
                                       len _13748 + -mem[64] + 100
                                _15044 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_15044] = 30
                                mem[_15044 + 32] = 'SafeMath: subtraction overflow'
                                if 0 <= -1 * arg1 * _burnFee / 100 * stor7 / totalSupply:
                                    return 0
                                _15895 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_15895 + idx + 68] = mem[_15044 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_15895 + 68] = mem[_15895 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _15895 + -mem[64] + 100
                            require arg1 * _fundFee / 100
                            if arg1 * _fundFee / 100 * stor7 / totalSupply / arg1 * _fundFee / 100 != stor7 / totalSupply:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _12020 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12020] = 30
                            mem[_12020 + 32] = 'SafeMath: subtraction overflow'
                            _13747 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_13747] = 30
                            mem[_13747 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _burnFee / 100 * stor7 / totalSupply > 0:
                                _14629 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_14629 + idx + 68] = mem[_13747 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_14629 + 68] = mem[_14629 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _14629 + -mem[64] + 100
                            _15892 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_15892] = 30
                            mem[_15892 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _fundFee / 100 * stor7 / totalSupply <= -1 * arg1 * _burnFee / 100 * stor7 / totalSupply:
                                return 0
                            _16702 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_16702 + idx + 68] = mem[_15892 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_16702 + 68] = mem[_16702 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _16702 + -mem[64] + 100
                        require arg1 * _taxFee / 100
                        if arg1 * _taxFee / 100 * stor7 / totalSupply / arg1 * _taxFee / 100 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not arg1 * _burnFee / 100:
                            if not arg1 * _fundFee / 100:
                                _11640 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_11640] = 30
                                mem[_11640 + 32] = 'SafeMath: subtraction overflow'
                                if arg1 * _taxFee / 100 * stor7 / totalSupply > 0:
                                    _12017 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_12017 + idx + 68] = mem[_11640 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_12017 + 68] = mem[_12017 + 70 len 30]
                                    revert with memory
                                      from mem[64]
                                       len _12017 + -mem[64] + 100
                                _12908 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_12908] = 30
                                mem[_12908 + 32] = 'SafeMath: subtraction overflow'
                                if 0 <= -1 * arg1 * _taxFee / 100 * stor7 / totalSupply:
                                    return 0
                                _13744 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_13744 + idx + 68] = mem[_12908 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_13744 + 68] = mem[_13744 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _13744 + -mem[64] + 100
                            require arg1 * _fundFee / 100
                            if arg1 * _fundFee / 100 * stor7 / totalSupply / arg1 * _fundFee / 100 != stor7 / totalSupply:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _12016 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12016] = 30
                            mem[_12016 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _taxFee / 100 * stor7 / totalSupply > 0:
                                _12575 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_12575 + idx + 68] = mem[_12016 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_12575 + 68] = mem[_12575 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _12575 + -mem[64] + 100
                            _13741 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_13741] = 30
                            mem[_13741 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > -1 * arg1 * _taxFee / 100 * stor7 / totalSupply:
                                _14625 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_14625 + idx + 68] = mem[_13741 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_14625 + 68] = mem[_14625 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _14625 + -mem[64] + 100
                            _15889 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_15889] = 30
                            mem[_15889 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _fundFee / 100 * stor7 / totalSupply <= -1 * arg1 * _taxFee / 100 * stor7 / totalSupply:
                                return 0
                            _16699 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_16699 + idx + 68] = mem[_15889 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_16699 + 68] = mem[_16699 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _16699 + -mem[64] + 100
                        require arg1 * _burnFee / 100
                        if arg1 * _burnFee / 100 * stor7 / totalSupply / arg1 * _burnFee / 100 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not arg1 * _fundFee / 100:
                            _12015 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12015] = 30
                            mem[_12015 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _taxFee / 100 * stor7 / totalSupply > 0:
                                _12572 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_12572 + idx + 68] = mem[_12015 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_12572 + 68] = mem[_12572 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _12572 + -mem[64] + 100
                            _13738 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_13738] = 30
                            mem[_13738 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _burnFee / 100 * stor7 / totalSupply > -1 * arg1 * _taxFee / 100 * stor7 / totalSupply:
                                _14622 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_14622 + idx + 68] = mem[_13738 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_14622 + 68] = mem[_14622 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _14622 + -mem[64] + 100
                            _15886 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_15886] = 30
                            mem[_15886 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= (-1 * arg1 * _taxFee / 100 * stor7 / totalSupply) - (arg1 * _burnFee / 100 * stor7 / totalSupply):
                                return 0
                            _16696 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_16696 + idx + 68] = mem[_15886 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_16696 + 68] = mem[_16696 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _16696 + -mem[64] + 100
                        require arg1 * _fundFee / 100
                        if arg1 * _fundFee / 100 * stor7 / totalSupply / arg1 * _fundFee / 100 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _12571 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12571] = 30
                        mem[_12571 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor7 / totalSupply > 0:
                            _13302 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_13302 + idx + 68] = mem[_12571 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_13302 + 68] = mem[_13302 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _13302 + -mem[64] + 100
                        _14619 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_14619] = 30
                        mem[_14619 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _burnFee / 100 * stor7 / totalSupply > -1 * arg1 * _taxFee / 100 * stor7 / totalSupply:
                            _15465 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_15465 + idx + 68] = mem[_14619 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_15465 + 68] = mem[_15465 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _15465 + -mem[64] + 100
                        _16693 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_16693] = 30
                        mem[_16693 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _fundFee / 100 * stor7 / totalSupply <= (-1 * arg1 * _taxFee / 100 * stor7 / totalSupply) - (arg1 * _burnFee / 100 * stor7 / totalSupply):
                            return 0
                        _17445 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_17445 + idx + 68] = mem[_16693 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_17445 + 68] = mem[_17445 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _17445 + -mem[64] + 100
                    require arg1
                    if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not arg1 * _taxFee / 100:
                        if not arg1 * _burnFee / 100:
                            if not arg1 * _fundFee / 100:
                                _11639 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_11639] = 30
                                mem[_11639 + 32] = 'SafeMath: subtraction overflow'
                                if 0 <= arg1 * stor7 / totalSupply:
                                    return (arg1 * stor7 / totalSupply)
                                _12012 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_12012 + idx + 68] = mem[_11639 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_12012 + 68] = mem[_12012 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _12012 + -mem[64] + 100
                            require arg1 * _fundFee / 100
                            if arg1 * _fundFee / 100 * stor7 / totalSupply / arg1 * _fundFee / 100 != stor7 / totalSupply:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _12011 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12011] = 30
                            mem[_12011 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor7 / totalSupply:
                                _12567 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_12567 + idx + 68] = mem[_12011 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_12567 + 68] = mem[_12567 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _12567 + -mem[64] + 100
                            _13735 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_13735] = 30
                            mem[_13735 + 32] = 'SafeMath: subtraction overflow'
                            _15885 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_15885] = 30
                            mem[_15885 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _fundFee / 100 * stor7 / totalSupply <= arg1 * stor7 / totalSupply:
                                return (arg1 * stor7 / totalSupply)
                            _16690 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_16690 + idx + 68] = mem[_15885 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_16690 + 68] = mem[_16690 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _16690 + -mem[64] + 100
                        require arg1 * _burnFee / 100
                        if arg1 * _burnFee / 100 * stor7 / totalSupply / arg1 * _burnFee / 100 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not arg1 * _fundFee / 100:
                            _12010 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12010] = 30
                            mem[_12010 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor7 / totalSupply:
                                _12564 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_12564 + idx + 68] = mem[_12010 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_12564 + 68] = mem[_12564 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _12564 + -mem[64] + 100
                            _13732 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_13732] = 30
                            mem[_13732 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _burnFee / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                                _14616 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_14616 + idx + 68] = mem[_13732 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_14616 + 68] = mem[_14616 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _14616 + -mem[64] + 100
                            _15882 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_15882] = 30
                            mem[_15882 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= (arg1 * stor7 / totalSupply) - (arg1 * _burnFee / 100 * stor7 / totalSupply):
                                return (arg1 * stor7 / totalSupply)
                            _16687 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_16687 + idx + 68] = mem[_15882 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_16687 + 68] = mem[_16687 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _16687 + -mem[64] + 100
                        require arg1 * _fundFee / 100
                        if arg1 * _fundFee / 100 * stor7 / totalSupply / arg1 * _fundFee / 100 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _12563 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12563] = 30
                        mem[_12563 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor7 / totalSupply:
                            _13296 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_13296 + idx + 68] = mem[_12563 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_13296 + 68] = mem[_13296 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _13296 + -mem[64] + 100
                        _14613 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_14613] = 30
                        mem[_14613 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _burnFee / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                            _15461 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_15461 + idx + 68] = mem[_14613 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_15461 + 68] = mem[_15461 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _15461 + -mem[64] + 100
                        _16684 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_16684] = 30
                        mem[_16684 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _fundFee / 100 * stor7 / totalSupply <= (arg1 * stor7 / totalSupply) - (arg1 * _burnFee / 100 * stor7 / totalSupply):
                            return (arg1 * stor7 / totalSupply)
                        _17440 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_17440 + idx + 68] = mem[_16684 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_17440 + 68] = mem[_17440 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _17440 + -mem[64] + 100
                    require arg1 * _taxFee / 100
                    if arg1 * _taxFee / 100 * stor7 / totalSupply / arg1 * _taxFee / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not arg1 * _burnFee / 100:
                        if not arg1 * _fundFee / 100:
                            _12009 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12009] = 30
                            mem[_12009 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _taxFee / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                                _12560 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_12560 + idx + 68] = mem[_12009 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_12560 + 68] = mem[_12560 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _12560 + -mem[64] + 100
                            _13729 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_13729] = 30
                            mem[_13729 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 100 * stor7 / totalSupply):
                                return (arg1 * stor7 / totalSupply)
                            _14610 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_14610 + idx + 68] = mem[_13729 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_14610 + 68] = mem[_14610 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _14610 + -mem[64] + 100
                        require arg1 * _fundFee / 100
                        if arg1 * _fundFee / 100 * stor7 / totalSupply / arg1 * _fundFee / 100 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _12559 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12559] = 30
                        mem[_12559 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                            _13292 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_13292 + idx + 68] = mem[_12559 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_13292 + 68] = mem[_13292 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _13292 + -mem[64] + 100
                        _14607 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_14607] = 30
                        mem[_14607 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 100 * stor7 / totalSupply):
                            _15457 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_15457 + idx + 68] = mem[_14607 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_15457 + 68] = mem[_15457 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _15457 + -mem[64] + 100
                        _16681 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_16681] = 30
                        mem[_16681 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _fundFee / 100 * stor7 / totalSupply <= (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 100 * stor7 / totalSupply):
                            return (arg1 * stor7 / totalSupply)
                        _17437 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_17437 + idx + 68] = mem[_16681 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_17437 + 68] = mem[_17437 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _17437 + -mem[64] + 100
                    require arg1 * _burnFee / 100
                    if arg1 * _burnFee / 100 * stor7 / totalSupply / arg1 * _burnFee / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not arg1 * _fundFee / 100:
                        _12558 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12558] = 30
                        mem[_12558 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                            _13289 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_13289 + idx + 68] = mem[_12558 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_13289 + 68] = mem[_13289 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _13289 + -mem[64] + 100
                        _14604 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_14604] = 30
                        mem[_14604 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _burnFee / 100 * stor7 / totalSupply > (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 100 * stor7 / totalSupply):
                            _15454 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_15454 + idx + 68] = mem[_14604 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_15454 + 68] = mem[_15454 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _15454 + -mem[64] + 100
                        _16678 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_16678] = 30
                        mem[_16678 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 100 * stor7 / totalSupply) - (arg1 * _burnFee / 100 * stor7 / totalSupply):
                            return (arg1 * stor7 / totalSupply)
                        _17434 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_17434 + idx + 68] = mem[_16678 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_17434 + 68] = mem[_17434 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _17434 + -mem[64] + 100
                    require arg1 * _fundFee / 100
                    if arg1 * _fundFee / 100 * stor7 / totalSupply / arg1 * _fundFee / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _13288 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_13288] = 30
                    mem[_13288 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                        _14148 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_14148 + idx + 68] = mem[_13288 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_14148 + 68] = mem[_14148 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _14148 + -mem[64] + 100
                    _15451 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_15451] = 30
                    mem[_15451 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _burnFee / 100 * stor7 / totalSupply > (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 100 * stor7 / totalSupply):
                        _16246 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_16246 + idx + 68] = mem[_15451 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_16246 + 68] = mem[_16246 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _16246 + -mem[64] + 100
                    _17431 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_17431] = 30
                    mem[_17431 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _fundFee / 100 * stor7 / totalSupply <= (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 100 * stor7 / totalSupply) - (arg1 * _burnFee / 100 * stor7 / totalSupply):
                        return (arg1 * stor7 / totalSupply)
                    _18100 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_18100 + idx + 68] = mem[_17431 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_18100 + 68] = mem[_18100 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _18100 + -mem[64] + 100
                _9787 = mem[64]
                mem[64] = mem[64] + 64
                mem[_9787] = 26
                mem[_9787 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                if t >= stor7 / totalSupply:
                    _10259 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_10259] = 26
                    mem[_10259 + 32] = 'SafeMath: division by zero'
                    if s <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require s
                    if not arg1:
                        if not arg1 * _taxFee / 100:
                            if not arg1 * _burnFee / 100:
                                if arg1 * _fundFee / 100:
                                    require arg1 * _fundFee / 100
                                    if arg1 * _fundFee / 100 * t / s / arg1 * _fundFee / 100 != t / s:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if arg1 * _fundFee / 100 * t / s > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                require arg1 * _burnFee / 100
                                if arg1 * _burnFee / 100 * t / s / arg1 * _burnFee / 100 != t / s:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if not arg1 * _fundFee / 100:
                                    if arg1 * _burnFee / 100 * t / s > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if 0 > -1 * arg1 * _burnFee / 100 * t / s:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                else:
                                    require arg1 * _fundFee / 100
                                    if arg1 * _fundFee / 100 * t / s / arg1 * _fundFee / 100 != t / s:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if arg1 * _burnFee / 100 * t / s > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg1 * _fundFee / 100 * t / s > -1 * arg1 * _burnFee / 100 * t / s:
                                        revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            require arg1 * _taxFee / 100
                            if arg1 * _taxFee / 100 * t / s / arg1 * _taxFee / 100 != t / s:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if not arg1 * _burnFee / 100:
                                if not arg1 * _fundFee / 100:
                                    if arg1 * _taxFee / 100 * t / s > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if 0 > -1 * arg1 * _taxFee / 100 * t / s:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                else:
                                    require arg1 * _fundFee / 100
                                    if arg1 * _fundFee / 100 * t / s / arg1 * _fundFee / 100 != t / s:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if arg1 * _taxFee / 100 * t / s > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if 0 > -1 * arg1 * _taxFee / 100 * t / s:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg1 * _fundFee / 100 * t / s > -1 * arg1 * _taxFee / 100 * t / s:
                                        revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                require arg1 * _burnFee / 100
                                if arg1 * _burnFee / 100 * t / s / arg1 * _burnFee / 100 != t / s:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if not arg1 * _fundFee / 100:
                                    if arg1 * _taxFee / 100 * t / s > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg1 * _burnFee / 100 * t / s > -1 * arg1 * _taxFee / 100 * t / s:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if 0 > (-1 * arg1 * _taxFee / 100 * t / s) - (arg1 * _burnFee / 100 * t / s):
                                        revert with 0, 'SafeMath: subtraction overflow'
                                else:
                                    require arg1 * _fundFee / 100
                                    if arg1 * _fundFee / 100 * t / s / arg1 * _fundFee / 100 != t / s:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if arg1 * _taxFee / 100 * t / s > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg1 * _burnFee / 100 * t / s > -1 * arg1 * _taxFee / 100 * t / s:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg1 * _fundFee / 100 * t / s > (-1 * arg1 * _taxFee / 100 * t / s) - (arg1 * _burnFee / 100 * t / s):
                                        revert with 0, 'SafeMath: subtraction overflow'
                        return 0
                    require arg1
                    if arg1 * t / s / arg1 != t / s:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not arg1 * _taxFee / 100:
                        if not arg1 * _burnFee / 100:
                            if not arg1 * _fundFee / 100:
                                if 0 > arg1 * t / s:
                                    revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                require arg1 * _fundFee / 100
                                if arg1 * _fundFee / 100 * t / s / arg1 * _fundFee / 100 != t / s:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if 0 > arg1 * t / s:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if arg1 * _fundFee / 100 * t / s > arg1 * t / s:
                                    revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            require arg1 * _burnFee / 100
                            if arg1 * _burnFee / 100 * t / s / arg1 * _burnFee / 100 != t / s:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if not arg1 * _fundFee / 100:
                                if 0 > arg1 * t / s:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if arg1 * _burnFee / 100 * t / s > arg1 * t / s:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if 0 > (arg1 * t / s) - (arg1 * _burnFee / 100 * t / s):
                                    revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                require arg1 * _fundFee / 100
                                if arg1 * _fundFee / 100 * t / s / arg1 * _fundFee / 100 != t / s:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if 0 > arg1 * t / s:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if arg1 * _burnFee / 100 * t / s > arg1 * t / s:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if arg1 * _fundFee / 100 * t / s > (arg1 * t / s) - (arg1 * _burnFee / 100 * t / s):
                                    revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        require arg1 * _taxFee / 100
                        if arg1 * _taxFee / 100 * t / s / arg1 * _taxFee / 100 != t / s:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not arg1 * _burnFee / 100:
                            if not arg1 * _fundFee / 100:
                                if arg1 * _taxFee / 100 * t / s > arg1 * t / s:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if 0 > (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s):
                                    revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                require arg1 * _fundFee / 100
                                if arg1 * _fundFee / 100 * t / s / arg1 * _fundFee / 100 != t / s:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if arg1 * _taxFee / 100 * t / s > arg1 * t / s:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if 0 > (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if arg1 * _fundFee / 100 * t / s > (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s):
                                    revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            require arg1 * _burnFee / 100
                            if arg1 * _burnFee / 100 * t / s / arg1 * _burnFee / 100 != t / s:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if not arg1 * _fundFee / 100:
                                if arg1 * _taxFee / 100 * t / s > arg1 * t / s:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if arg1 * _burnFee / 100 * t / s > (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if 0 > (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s) - (arg1 * _burnFee / 100 * t / s):
                                    revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                require arg1 * _fundFee / 100
                                if arg1 * _fundFee / 100 * t / s / arg1 * _fundFee / 100 != t / s:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if arg1 * _taxFee / 100 * t / s > arg1 * t / s:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if arg1 * _burnFee / 100 * t / s > (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if arg1 * _fundFee / 100 * t / s > (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s) - (arg1 * _burnFee / 100 * t / s):
                                    revert with 0, 'SafeMath: subtraction overflow'
                    return (arg1 * t / s)
                _10260 = mem[64]
                mem[64] = mem[64] + 64
                mem[_10260] = 26
                mem[_10260 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                if not arg1:
                    if not arg1 * _taxFee / 100:
                        if not arg1 * _burnFee / 100:
                            if arg1 * _fundFee / 100:
                                require arg1 * _fundFee / 100
                                if arg1 * _fundFee / 100 * stor7 / totalSupply / arg1 * _fundFee / 100 != stor7 / totalSupply:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if arg1 * _fundFee / 100 * stor7 / totalSupply > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            require arg1 * _burnFee / 100
                            if arg1 * _burnFee / 100 * stor7 / totalSupply / arg1 * _burnFee / 100 != stor7 / totalSupply:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if not arg1 * _fundFee / 100:
                                if arg1 * _burnFee / 100 * stor7 / totalSupply > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if 0 > -1 * arg1 * _burnFee / 100 * stor7 / totalSupply:
                                    revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                require arg1 * _fundFee / 100
                                if arg1 * _fundFee / 100 * stor7 / totalSupply / arg1 * _fundFee / 100 != stor7 / totalSupply:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if arg1 * _burnFee / 100 * stor7 / totalSupply > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if arg1 * _fundFee / 100 * stor7 / totalSupply > -1 * arg1 * _burnFee / 100 * stor7 / totalSupply:
                                    revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        require arg1 * _taxFee / 100
                        if arg1 * _taxFee / 100 * stor7 / totalSupply / arg1 * _taxFee / 100 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not arg1 * _burnFee / 100:
                            if not arg1 * _fundFee / 100:
                                if arg1 * _taxFee / 100 * stor7 / totalSupply > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if 0 > -1 * arg1 * _taxFee / 100 * stor7 / totalSupply:
                                    revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                require arg1 * _fundFee / 100
                                if arg1 * _fundFee / 100 * stor7 / totalSupply / arg1 * _fundFee / 100 != stor7 / totalSupply:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if arg1 * _taxFee / 100 * stor7 / totalSupply > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if 0 > -1 * arg1 * _taxFee / 100 * stor7 / totalSupply:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if arg1 * _fundFee / 100 * stor7 / totalSupply > -1 * arg1 * _taxFee / 100 * stor7 / totalSupply:
                                    revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            require arg1 * _burnFee / 100
                            if arg1 * _burnFee / 100 * stor7 / totalSupply / arg1 * _burnFee / 100 != stor7 / totalSupply:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if not arg1 * _fundFee / 100:
                                if arg1 * _taxFee / 100 * stor7 / totalSupply > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if arg1 * _burnFee / 100 * stor7 / totalSupply > -1 * arg1 * _taxFee / 100 * stor7 / totalSupply:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if 0 > (-1 * arg1 * _taxFee / 100 * stor7 / totalSupply) - (arg1 * _burnFee / 100 * stor7 / totalSupply):
                                    revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                require arg1 * _fundFee / 100
                                if arg1 * _fundFee / 100 * stor7 / totalSupply / arg1 * _fundFee / 100 != stor7 / totalSupply:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if arg1 * _taxFee / 100 * stor7 / totalSupply > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if arg1 * _burnFee / 100 * stor7 / totalSupply > -1 * arg1 * _taxFee / 100 * stor7 / totalSupply:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if arg1 * _fundFee / 100 * stor7 / totalSupply > (-1 * arg1 * _taxFee / 100 * stor7 / totalSupply) - (arg1 * _burnFee / 100 * stor7 / totalSupply):
                                    revert with 0, 'SafeMath: subtraction overflow'
                    return 0
                require arg1
                if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not arg1 * _taxFee / 100:
                    if not arg1 * _burnFee / 100:
                        if not arg1 * _fundFee / 100:
                            if 0 > arg1 * stor7 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            require arg1 * _fundFee / 100
                            if arg1 * _fundFee / 100 * stor7 / totalSupply / arg1 * _fundFee / 100 != stor7 / totalSupply:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if 0 > arg1 * stor7 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if arg1 * _fundFee / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        require arg1 * _burnFee / 100
                        if arg1 * _burnFee / 100 * stor7 / totalSupply / arg1 * _burnFee / 100 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not arg1 * _fundFee / 100:
                            if 0 > arg1 * stor7 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if arg1 * _burnFee / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0 > (arg1 * stor7 / totalSupply) - (arg1 * _burnFee / 100 * stor7 / totalSupply):
                                revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            require arg1 * _fundFee / 100
                            if arg1 * _fundFee / 100 * stor7 / totalSupply / arg1 * _fundFee / 100 != stor7 / totalSupply:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if 0 > arg1 * stor7 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if arg1 * _burnFee / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if arg1 * _fundFee / 100 * stor7 / totalSupply > (arg1 * stor7 / totalSupply) - (arg1 * _burnFee / 100 * stor7 / totalSupply):
                                revert with 0, 'SafeMath: subtraction overflow'
                else:
                    require arg1 * _taxFee / 100
                    if arg1 * _taxFee / 100 * stor7 / totalSupply / arg1 * _taxFee / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not arg1 * _burnFee / 100:
                        if not arg1 * _fundFee / 100:
                            if arg1 * _taxFee / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0 > (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 100 * stor7 / totalSupply):
                                revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            require arg1 * _fundFee / 100
                            if arg1 * _fundFee / 100 * stor7 / totalSupply / arg1 * _fundFee / 100 != stor7 / totalSupply:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if arg1 * _taxFee / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0 > (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 100 * stor7 / totalSupply):
                                revert with 0, 'SafeMath: subtraction overflow'
                            if arg1 * _fundFee / 100 * stor7 / totalSupply > (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 100 * stor7 / totalSupply):
                                revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        require arg1 * _burnFee / 100
                        if arg1 * _burnFee / 100 * stor7 / totalSupply / arg1 * _burnFee / 100 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not arg1 * _fundFee / 100:
                            if arg1 * _taxFee / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if arg1 * _burnFee / 100 * stor7 / totalSupply > (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 100 * stor7 / totalSupply):
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0 > (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 100 * stor7 / totalSupply) - (arg1 * _burnFee / 100 * stor7 / totalSupply):
                                revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            require arg1 * _fundFee / 100
                            if arg1 * _fundFee / 100 * stor7 / totalSupply / arg1 * _fundFee / 100 != stor7 / totalSupply:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if arg1 * _taxFee / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if arg1 * _burnFee / 100 * stor7 / totalSupply > (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 100 * stor7 / totalSupply):
                                revert with 0, 'SafeMath: subtraction overflow'
                            if arg1 * _fundFee / 100 * stor7 / totalSupply > (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 100 * stor7 / totalSupply) - (arg1 * _burnFee / 100 * stor7 / totalSupply):
                                revert with 0, 'SafeMath: subtraction overflow'
    return (arg1 * stor7 / totalSupply)
}



}

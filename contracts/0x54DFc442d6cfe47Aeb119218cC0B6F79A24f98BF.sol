contract main {




// =====================  Runtime code  =====================


address viewOwner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
uint8 decimals;
array of uint256 symbol;
array of uint256 name;
address stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 latestRoll;
uint256 stor13;
uint256 stor14;
uint256 stor15;
uint256 stor16;
uint256 stor17;
uint256 stor18;
uint256 stor19;

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

function getOwner() payable {
    return viewOwner
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function latestRoll() payable {
    return latestRoll
}

function viewOwner() payable {
    return viewOwner
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function sub_dfa2d9f0(?) payable {
    return stor17, stor18, stor19
}

function renounceOwnership() payable {
    if stor7 != msg.sender:
        revert with 0, 'You are not the owner'
    emit OwnershipTransferred(viewOwner, 0);
    viewOwner = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor7 != msg.sender:
        revert with 0, 'You are not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x734f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(viewOwner, arg1);
    viewOwner = arg1
}

function mint(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor7 != msg.sender:
        revert with 0, 'You are not the owner'
    if not msg.sender:
        revert with 0, 'BEP20: mint to the zero address'
    if totalSupply + arg1 < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += arg1
    if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(msg.sender)] += arg1
    emit Transfer(arg1, 0, msg.sender);
    return 1
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
                    0x6f42455032303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[stor7][address(arg1)] = arg2
    emit Approval(arg2, stor7, arg1);
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
        revert with 0, 32, 34, 0x6f42455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    allowance[stor7][address(arg1)] = allowance[address(msg.sender)][address(arg1)] - arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), stor7, arg1);
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
                    0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6f42455032303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[stor7][address(arg1)] = allowance[address(msg.sender)][address(arg1)] + arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), stor7, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
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
    return 1
}

function sub_e13b3320(?) payable {
    require calldata.size - 4 >= 64
    if stor7 != msg.sender:
        revert with 0, 'You are not the owner'
    if not this.address:
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
    if arg1 > balanceOf[address(this.address)]:
        revert with 0, 
                    32,
                    38,
                    0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[166 len 26],
                    mem[218 len 6]
    balanceOf[address(this.address)] -= arg1
    if balanceOf[address(arg2)] + arg1 < balanceOf[address(arg2)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg2)] += arg1
    emit Transfer(arg1, this.address, arg2);
}

function sub_0bef5112(?) payable {
    require calldata.size - 4 >= 32
    if stor7 != msg.sender:
        revert with 0, 'You are not the owner'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if arg1 > balanceOf[address(msg.sender)]:
        revert with 0, 
                    32,
                    38,
                    0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[166 len 26],
                    mem[218 len 6]
    balanceOf[address(msg.sender)] -= arg1
    if balanceOf[address(this.address)] + arg1 < balanceOf[address(this.address)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(this.address)] += arg1
    emit Transfer(arg1, msg.sender, this.address);
}

function pull(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor7 != msg.sender:
        revert with 0, 'You are not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if balanceOf[address(arg1)] > balanceOf[address(arg1)]:
        revert with 0, 
                    32,
                    38,
                    0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[166 len 26],
                    mem[218 len 6]
    balanceOf[address(arg1)] = 0
    if balanceOf[address(msg.sender)] + balanceOf[address(arg1)] < balanceOf[address(msg.sender)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(msg.sender)] += balanceOf[address(arg1)]
    emit Transfer(balanceOf[address(arg1)], arg1, msg.sender);
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
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
                    0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                    mem[264 len 24],
                    mem[312 len 8]
    if not arg1:
        revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
    if not msg.sender:
        revert with 0, 32, 34, 0x6f42455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
    allowance[stor7][address(msg.sender)] = allowance[address(arg1)][address(msg.sender)] - arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), stor7, msg.sender);
    return 1
}

function dice(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require balanceOf[address(this.address)] >= 2 * arg1
    require arg1 > 0
    require balanceOf[address(msg.sender)] > 0
    latestRoll = sha3(block.timestamp, block.difficulty, msg.sender, stor8, stor9, stor10, stor11, balanceOf[stor7], balanceOf[address(msg.sender)], stor7, stor13) % 101
    stor13 = latestRoll
    stor8++
    stor9++
    stor10++
    stor11++
    if latestRoll <= 55:
        if not msg.sender:
            revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[561 len 27]
        if not this.address:
            revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[559 len 29]
        if arg1 > balanceOf[address(msg.sender)]:
            revert with 0, 
                        32,
                        38,
                        0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                        mem[526 len 26],
                        mem[578 len 6]
        balanceOf[address(msg.sender)] -= arg1
        if balanceOf[address(this.address)] + arg1 < balanceOf[address(this.address)]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(this.address)] += arg1
        emit Transfer(arg1, msg.sender, this.address);
    else:
        if not this.address:
            revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[561 len 27]
        if not msg.sender:
            revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[559 len 29]
        if arg1 > balanceOf[address(this.address)]:
            revert with 0, 
                        32,
                        38,
                        0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                        mem[526 len 26],
                        mem[578 len 6]
        balanceOf[address(this.address)] -= arg1
        if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(msg.sender)] += arg1
        emit Transfer(arg1, this.address, msg.sender);
    return latestRoll
}

function sub_ce9f51b7(?) payable {
    require calldata.size - 4 >= 128
    require balanceOf[address(this.address)] >= 9 * arg1
    require arg2 < 100
    require arg3 < 100
    require arg4 < 100
    require arg1 > 0
    require balanceOf[address(msg.sender)] > 0
    stor14 = arg2
    stor15 = arg3
    stor16 = arg4
    stor9 += sha3(block.timestamp, block.difficulty, msg.sender, stor8, stor9, stor10, stor11, balanceOf[stor7], balanceOf[address(msg.sender)], stor7, stor13) % 101
    stor10 += sha3(block.timestamp, block.difficulty, msg.sender, stor8, stor9, stor10, stor11, balanceOf[stor7], balanceOf[address(msg.sender)], stor7, stor13) % 101
    stor10 += sha3(block.timestamp, block.difficulty, msg.sender, stor8, stor9, stor10, stor11, balanceOf[stor7], balanceOf[address(msg.sender)], stor7, stor13) % 101
    stor17 = sha3(block.timestamp, block.difficulty, msg.sender, stor8, stor9, stor10, stor11, balanceOf[stor7], balanceOf[address(msg.sender)], stor7, stor13) % 101
    stor8 += sha3(block.timestamp, block.difficulty, msg.sender, stor8, stor9, stor10, stor11, balanceOf[stor7], balanceOf[address(msg.sender)], stor7, stor13) % 101
    stor9 += sha3(block.timestamp, block.difficulty, msg.sender, stor8, stor9, stor10, stor11, balanceOf[stor7], balanceOf[address(msg.sender)], stor7, stor13) % 101
    stor10 += sha3(block.timestamp, block.difficulty, msg.sender, stor8, stor9, stor10, stor11, balanceOf[stor7], balanceOf[address(msg.sender)], stor7, stor13) % 101
    stor10 += sha3(block.timestamp, block.difficulty, msg.sender, stor8, stor9, stor10, stor11, balanceOf[stor7], balanceOf[address(msg.sender)], stor7, stor13) % 101
    stor18 = sha3(block.timestamp, block.difficulty, msg.sender, stor8, stor9, stor10, stor11, balanceOf[stor7], balanceOf[address(msg.sender)], stor7, stor13) % 101
    stor9 += sha3(block.timestamp, block.difficulty, msg.sender, stor8, stor9, stor10, stor11, balanceOf[stor7], balanceOf[address(msg.sender)], stor7, stor13) % 101
    stor10 += sha3(block.timestamp, block.difficulty, msg.sender, stor8, stor9, stor10, stor11, balanceOf[stor7], balanceOf[address(msg.sender)], stor7, stor13) % 101
    stor10 += sha3(block.timestamp, block.difficulty, msg.sender, stor8, stor9, stor10, stor11, balanceOf[stor7], balanceOf[address(msg.sender)], stor7, stor13) % 101
    stor19 = sha3(block.timestamp, block.difficulty, msg.sender, stor8, stor9, stor10, stor11, balanceOf[stor7], balanceOf[address(msg.sender)], stor7, stor13) % 101
    if stor17 != stor14:
        if stor18 != stor15:
            if stor17 == stor14:
                if not this.address:
                    revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[4881 len 27]
                if not msg.sender:
                    revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[4879 len 29]
                if arg1 / 2 > balanceOf[address(this.address)]:
                    revert with 0, 
                                32,
                                38,
                                0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                mem[4846 len 26],
                                mem[4898 len 6]
                balanceOf[address(this.address)] -= arg1 / 2
                if balanceOf[address(msg.sender)] + (arg1 / 2) < balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(msg.sender)] += arg1 / 2
                emit Transfer((arg1 / 2), this.address, msg.sender);
            else:
                if stor18 == stor15:
                    if not this.address:
                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[4881 len 27]
                    if not msg.sender:
                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[4879 len 29]
                    if arg1 / 2 > balanceOf[address(this.address)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[4846 len 26],
                                    mem[4898 len 6]
                    balanceOf[address(this.address)] -= arg1 / 2
                    if balanceOf[address(msg.sender)] + (arg1 / 2) < balanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(msg.sender)] += arg1 / 2
                    emit Transfer((arg1 / 2), this.address, msg.sender);
                else:
                    if stor19 != stor16:
                        if not msg.sender:
                            revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[4881 len 27]
                        if not this.address:
                            revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[4879 len 29]
                        if arg1 > balanceOf[address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[4846 len 26],
                                        mem[4898 len 6]
                        balanceOf[address(msg.sender)] -= arg1
                        if balanceOf[address(this.address)] + arg1 < balanceOf[address(this.address)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(this.address)] += arg1
                        emit Transfer(arg1, msg.sender, this.address);
                    else:
                        if not this.address:
                            revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[4881 len 27]
                        if not msg.sender:
                            revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[4879 len 29]
                        if arg1 / 2 > balanceOf[address(this.address)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[4846 len 26],
                                        mem[4898 len 6]
                        balanceOf[address(this.address)] -= arg1 / 2
                        if balanceOf[address(msg.sender)] + (arg1 / 2) < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(msg.sender)] += arg1 / 2
                        emit Transfer((arg1 / 2), this.address, msg.sender);
        else:
            if stor19 == stor16:
                if not this.address:
                    revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[4881 len 27]
                if not msg.sender:
                    revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[4879 len 29]
                if arg1 > balanceOf[address(this.address)]:
                    revert with 0, 
                                32,
                                38,
                                0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                mem[4846 len 26],
                                mem[4898 len 6]
                balanceOf[address(this.address)] -= arg1
                if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(msg.sender)] += arg1
                emit Transfer(arg1, this.address, msg.sender);
            else:
                if stor17 == stor14:
                    if not this.address:
                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[4881 len 27]
                    if not msg.sender:
                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[4879 len 29]
                    if arg1 / 2 > balanceOf[address(this.address)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[4846 len 26],
                                    mem[4898 len 6]
                    balanceOf[address(this.address)] -= arg1 / 2
                    if balanceOf[address(msg.sender)] + (arg1 / 2) < balanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(msg.sender)] += arg1 / 2
                    emit Transfer((arg1 / 2), this.address, msg.sender);
                else:
                    if stor18 == stor15:
                        if not this.address:
                            revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[4881 len 27]
                        if not msg.sender:
                            revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[4879 len 29]
                        if arg1 / 2 > balanceOf[address(this.address)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[4846 len 26],
                                        mem[4898 len 6]
                        balanceOf[address(this.address)] -= arg1 / 2
                        if balanceOf[address(msg.sender)] + (arg1 / 2) < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(msg.sender)] += arg1 / 2
                        emit Transfer((arg1 / 2), this.address, msg.sender);
                    else:
                        if stor19 != stor16:
                            if not msg.sender:
                                revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[4881 len 27]
                            if not this.address:
                                revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[4879 len 29]
                            if arg1 > balanceOf[address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[4846 len 26],
                                            mem[4898 len 6]
                            balanceOf[address(msg.sender)] -= arg1
                            if balanceOf[address(this.address)] + arg1 < balanceOf[address(this.address)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(this.address)] += arg1
                            emit Transfer(arg1, msg.sender, this.address);
                        else:
                            if not this.address:
                                revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[4881 len 27]
                            if not msg.sender:
                                revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[4879 len 29]
                            if arg1 / 2 > balanceOf[address(this.address)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[4846 len 26],
                                            mem[4898 len 6]
                            balanceOf[address(this.address)] -= arg1 / 2
                            if balanceOf[address(msg.sender)] + (arg1 / 2) < balanceOf[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(msg.sender)] += arg1 / 2
                            emit Transfer((arg1 / 2), this.address, msg.sender);
    else:
        if stor18 != stor15:
            if stor17 != stor14:
                if stor18 != stor15:
                    if stor17 == stor14:
                        if not this.address:
                            revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[4881 len 27]
                        if not msg.sender:
                            revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[4879 len 29]
                        if arg1 / 2 > balanceOf[address(this.address)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[4846 len 26],
                                        mem[4898 len 6]
                        balanceOf[address(this.address)] -= arg1 / 2
                        if balanceOf[address(msg.sender)] + (arg1 / 2) < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(msg.sender)] += arg1 / 2
                        emit Transfer((arg1 / 2), this.address, msg.sender);
                    else:
                        if stor18 == stor15:
                            if not this.address:
                                revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[4881 len 27]
                            if not msg.sender:
                                revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[4879 len 29]
                            if arg1 / 2 > balanceOf[address(this.address)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[4846 len 26],
                                            mem[4898 len 6]
                            balanceOf[address(this.address)] -= arg1 / 2
                            if balanceOf[address(msg.sender)] + (arg1 / 2) < balanceOf[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(msg.sender)] += arg1 / 2
                            emit Transfer((arg1 / 2), this.address, msg.sender);
                        else:
                            if stor19 != stor16:
                                if not msg.sender:
                                    revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[4881 len 27]
                                if not this.address:
                                    revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[4879 len 29]
                                if arg1 > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[4846 len 26],
                                                mem[4898 len 6]
                                balanceOf[address(msg.sender)] -= arg1
                                if balanceOf[address(this.address)] + arg1 < balanceOf[address(this.address)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(this.address)] += arg1
                                emit Transfer(arg1, msg.sender, this.address);
                            else:
                                if not this.address:
                                    revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[4881 len 27]
                                if not msg.sender:
                                    revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[4879 len 29]
                                if arg1 / 2 > balanceOf[address(this.address)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[4846 len 26],
                                                mem[4898 len 6]
                                balanceOf[address(this.address)] -= arg1 / 2
                                if balanceOf[address(msg.sender)] + (arg1 / 2) < balanceOf[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(msg.sender)] += arg1 / 2
                                emit Transfer((arg1 / 2), this.address, msg.sender);
                else:
                    if stor19 == stor16:
                        if not this.address:
                            revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[4881 len 27]
                        if not msg.sender:
                            revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[4879 len 29]
                        if arg1 > balanceOf[address(this.address)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[4846 len 26],
                                        mem[4898 len 6]
                        balanceOf[address(this.address)] -= arg1
                        if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(msg.sender)] += arg1
                        emit Transfer(arg1, this.address, msg.sender);
                    else:
                        if stor17 == stor14:
                            if not this.address:
                                revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[4881 len 27]
                            if not msg.sender:
                                revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[4879 len 29]
                            if arg1 / 2 > balanceOf[address(this.address)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[4846 len 26],
                                            mem[4898 len 6]
                            balanceOf[address(this.address)] -= arg1 / 2
                            if balanceOf[address(msg.sender)] + (arg1 / 2) < balanceOf[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(msg.sender)] += arg1 / 2
                            emit Transfer((arg1 / 2), this.address, msg.sender);
                        else:
                            if stor18 == stor15:
                                if not this.address:
                                    revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[4881 len 27]
                                if not msg.sender:
                                    revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[4879 len 29]
                                if arg1 / 2 > balanceOf[address(this.address)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[4846 len 26],
                                                mem[4898 len 6]
                                balanceOf[address(this.address)] -= arg1 / 2
                                if balanceOf[address(msg.sender)] + (arg1 / 2) < balanceOf[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(msg.sender)] += arg1 / 2
                                emit Transfer((arg1 / 2), this.address, msg.sender);
                            else:
                                if stor19 != stor16:
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[4881 len 27]
                                    if not this.address:
                                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[4879 len 29]
                                    if arg1 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[4846 len 26],
                                                    mem[4898 len 6]
                                    balanceOf[address(msg.sender)] -= arg1
                                    if balanceOf[address(this.address)] + arg1 < balanceOf[address(this.address)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(this.address)] += arg1
                                    emit Transfer(arg1, msg.sender, this.address);
                                else:
                                    if not this.address:
                                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[4881 len 27]
                                    if not msg.sender:
                                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[4879 len 29]
                                    if arg1 / 2 > balanceOf[address(this.address)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[4846 len 26],
                                                    mem[4898 len 6]
                                    balanceOf[address(this.address)] -= arg1 / 2
                                    if balanceOf[address(msg.sender)] + (arg1 / 2) < balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(msg.sender)] += arg1 / 2
                                    emit Transfer((arg1 / 2), this.address, msg.sender);
            else:
                if stor18 == stor15:
                    if not this.address:
                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[4881 len 27]
                    if not msg.sender:
                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[4879 len 29]
                    if arg1 > balanceOf[address(this.address)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[4846 len 26],
                                    mem[4898 len 6]
                    balanceOf[address(this.address)] -= arg1
                    if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(msg.sender)] += arg1
                    emit Transfer(arg1, this.address, msg.sender);
                else:
                    if stor17 != stor14:
                        if stor18 != stor15:
                            if stor17 == stor14:
                                if not this.address:
                                    revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[4881 len 27]
                                if not msg.sender:
                                    revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[4879 len 29]
                                if arg1 / 2 > balanceOf[address(this.address)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[4846 len 26],
                                                mem[4898 len 6]
                                balanceOf[address(this.address)] -= arg1 / 2
                                if balanceOf[address(msg.sender)] + (arg1 / 2) < balanceOf[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(msg.sender)] += arg1 / 2
                                emit Transfer((arg1 / 2), this.address, msg.sender);
                            else:
                                if stor18 == stor15:
                                    if not this.address:
                                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[4881 len 27]
                                    if not msg.sender:
                                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[4879 len 29]
                                    if arg1 / 2 > balanceOf[address(this.address)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[4846 len 26],
                                                    mem[4898 len 6]
                                    balanceOf[address(this.address)] -= arg1 / 2
                                    if balanceOf[address(msg.sender)] + (arg1 / 2) < balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(msg.sender)] += arg1 / 2
                                    emit Transfer((arg1 / 2), this.address, msg.sender);
                                else:
                                    if stor19 != stor16:
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[4881 len 27]
                                        if not this.address:
                                            revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[4879 len 29]
                                        if arg1 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[4846 len 26],
                                                        mem[4898 len 6]
                                        balanceOf[address(msg.sender)] -= arg1
                                        if balanceOf[address(this.address)] + arg1 < balanceOf[address(this.address)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(this.address)] += arg1
                                        emit Transfer(arg1, msg.sender, this.address);
                                    else:
                                        if not this.address:
                                            revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[4881 len 27]
                                        if not msg.sender:
                                            revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[4879 len 29]
                                        if arg1 / 2 > balanceOf[address(this.address)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[4846 len 26],
                                                        mem[4898 len 6]
                                        balanceOf[address(this.address)] -= arg1 / 2
                                        if balanceOf[address(msg.sender)] + (arg1 / 2) < balanceOf[address(msg.sender)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(msg.sender)] += arg1 / 2
                                        emit Transfer((arg1 / 2), this.address, msg.sender);
                        else:
                            if stor19 == stor16:
                                if not this.address:
                                    revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[4881 len 27]
                                if not msg.sender:
                                    revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[4879 len 29]
                                if arg1 > balanceOf[address(this.address)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[4846 len 26],
                                                mem[4898 len 6]
                                balanceOf[address(this.address)] -= arg1
                                if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(msg.sender)] += arg1
                                emit Transfer(arg1, this.address, msg.sender);
                            else:
                                if stor17 == stor14:
                                    if not this.address:
                                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[4881 len 27]
                                    if not msg.sender:
                                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[4879 len 29]
                                    if arg1 / 2 > balanceOf[address(this.address)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[4846 len 26],
                                                    mem[4898 len 6]
                                    balanceOf[address(this.address)] -= arg1 / 2
                                    if balanceOf[address(msg.sender)] + (arg1 / 2) < balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(msg.sender)] += arg1 / 2
                                    emit Transfer((arg1 / 2), this.address, msg.sender);
                                else:
                                    if stor18 == stor15:
                                        if not this.address:
                                            revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[4881 len 27]
                                        if not msg.sender:
                                            revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[4879 len 29]
                                        if arg1 / 2 > balanceOf[address(this.address)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[4846 len 26],
                                                        mem[4898 len 6]
                                        balanceOf[address(this.address)] -= arg1 / 2
                                        if balanceOf[address(msg.sender)] + (arg1 / 2) < balanceOf[address(msg.sender)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(msg.sender)] += arg1 / 2
                                        emit Transfer((arg1 / 2), this.address, msg.sender);
                                    else:
                                        if stor19 != stor16:
                                            if not msg.sender:
                                                revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[4881 len 27]
                                            if not this.address:
                                                revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[4879 len 29]
                                            if arg1 > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[4846 len 26],
                                                            mem[4898 len 6]
                                            balanceOf[address(msg.sender)] -= arg1
                                            if balanceOf[address(this.address)] + arg1 < balanceOf[address(this.address)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(this.address)] += arg1
                                            emit Transfer(arg1, msg.sender, this.address);
                                        else:
                                            if not this.address:
                                                revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[4881 len 27]
                                            if not msg.sender:
                                                revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[4879 len 29]
                                            if arg1 / 2 > balanceOf[address(this.address)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[4846 len 26],
                                                            mem[4898 len 6]
                                            balanceOf[address(this.address)] -= arg1 / 2
                                            if balanceOf[address(msg.sender)] + (arg1 / 2) < balanceOf[address(msg.sender)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(msg.sender)] += arg1 / 2
                                            emit Transfer((arg1 / 2), this.address, msg.sender);
                    else:
                        if stor19 == stor16:
                            if not this.address:
                                revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[4881 len 27]
                            if not msg.sender:
                                revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[4879 len 29]
                            if arg1 > balanceOf[address(this.address)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[4846 len 26],
                                            mem[4898 len 6]
                            balanceOf[address(this.address)] -= arg1
                            if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(msg.sender)] += arg1
                            emit Transfer(arg1, this.address, msg.sender);
                        else:
                            if stor18 != stor15:
                                if stor17 == stor14:
                                    if not this.address:
                                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[4881 len 27]
                                    if not msg.sender:
                                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[4879 len 29]
                                    if arg1 / 2 > balanceOf[address(this.address)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[4846 len 26],
                                                    mem[4898 len 6]
                                    balanceOf[address(this.address)] -= arg1 / 2
                                    if balanceOf[address(msg.sender)] + (arg1 / 2) < balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(msg.sender)] += arg1 / 2
                                    emit Transfer((arg1 / 2), this.address, msg.sender);
                                else:
                                    if stor18 == stor15:
                                        if not this.address:
                                            revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[4881 len 27]
                                        if not msg.sender:
                                            revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[4879 len 29]
                                        if arg1 / 2 > balanceOf[address(this.address)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[4846 len 26],
                                                        mem[4898 len 6]
                                        balanceOf[address(this.address)] -= arg1 / 2
                                        if balanceOf[address(msg.sender)] + (arg1 / 2) < balanceOf[address(msg.sender)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(msg.sender)] += arg1 / 2
                                        emit Transfer((arg1 / 2), this.address, msg.sender);
                                    else:
                                        if stor19 != stor16:
                                            if not msg.sender:
                                                revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[4881 len 27]
                                            if not this.address:
                                                revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[4879 len 29]
                                            if arg1 > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[4846 len 26],
                                                            mem[4898 len 6]
                                            balanceOf[address(msg.sender)] -= arg1
                                            if balanceOf[address(this.address)] + arg1 < balanceOf[address(this.address)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(this.address)] += arg1
                                            emit Transfer(arg1, msg.sender, this.address);
                                        else:
                                            if not this.address:
                                                revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[4881 len 27]
                                            if not msg.sender:
                                                revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[4879 len 29]
                                            if arg1 / 2 > balanceOf[address(this.address)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[4846 len 26],
                                                            mem[4898 len 6]
                                            balanceOf[address(this.address)] -= arg1 / 2
                                            if balanceOf[address(msg.sender)] + (arg1 / 2) < balanceOf[address(msg.sender)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(msg.sender)] += arg1 / 2
                                            emit Transfer((arg1 / 2), this.address, msg.sender);
                            else:
                                if stor19 == stor16:
                                    if not this.address:
                                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[4881 len 27]
                                    if not msg.sender:
                                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[4879 len 29]
                                    if arg1 > balanceOf[address(this.address)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[4846 len 26],
                                                    mem[4898 len 6]
                                    balanceOf[address(this.address)] -= arg1
                                    if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(msg.sender)] += arg1
                                    emit Transfer(arg1, this.address, msg.sender);
                                else:
                                    if stor17 == stor14:
                                        if not this.address:
                                            revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[4881 len 27]
                                        if not msg.sender:
                                            revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[4879 len 29]
                                        if arg1 / 2 > balanceOf[address(this.address)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[4846 len 26],
                                                        mem[4898 len 6]
                                        balanceOf[address(this.address)] -= arg1 / 2
                                        if balanceOf[address(msg.sender)] + (arg1 / 2) < balanceOf[address(msg.sender)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(msg.sender)] += arg1 / 2
                                        emit Transfer((arg1 / 2), this.address, msg.sender);
                                    else:
                                        if stor18 == stor15:
                                            if not this.address:
                                                revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[4881 len 27]
                                            if not msg.sender:
                                                revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[4879 len 29]
                                            if arg1 / 2 > balanceOf[address(this.address)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[4846 len 26],
                                                            mem[4898 len 6]
                                            balanceOf[address(this.address)] -= arg1 / 2
                                            if balanceOf[address(msg.sender)] + (arg1 / 2) < balanceOf[address(msg.sender)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(msg.sender)] += arg1 / 2
                                            emit Transfer((arg1 / 2), this.address, msg.sender);
                                        else:
                                            if stor19 != stor16:
                                                if not msg.sender:
                                                    revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[4881 len 27]
                                                if not this.address:
                                                    revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[4879 len 29]
                                                if arg1 > balanceOf[address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                mem[4846 len 26],
                                                                mem[4898 len 6]
                                                balanceOf[address(msg.sender)] -= arg1
                                                if balanceOf[address(this.address)] + arg1 < balanceOf[address(this.address)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(this.address)] += arg1
                                                emit Transfer(arg1, msg.sender, this.address);
                                            else:
                                                if not this.address:
                                                    revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[4881 len 27]
                                                if not msg.sender:
                                                    revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[4879 len 29]
                                                if arg1 / 2 > balanceOf[address(this.address)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                mem[4846 len 26],
                                                                mem[4898 len 6]
                                                balanceOf[address(this.address)] -= arg1 / 2
                                                if balanceOf[address(msg.sender)] + (arg1 / 2) < balanceOf[address(msg.sender)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(msg.sender)] += arg1 / 2
                                                emit Transfer((arg1 / 2), this.address, msg.sender);
        else:
            if stor19 == stor16:
                if not this.address:
                    revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[4881 len 27]
                if not msg.sender:
                    revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[4879 len 29]
                if 2 * arg1 > balanceOf[address(this.address)]:
                    revert with 0, 
                                32,
                                38,
                                0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                mem[4846 len 26],
                                mem[4898 len 6]
                balanceOf[address(this.address)] -= 2 * arg1
                if balanceOf[address(msg.sender)] + (2 * arg1) < balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(msg.sender)] += 2 * arg1
                emit Transfer((2 * arg1), this.address, msg.sender);
            else:
                if stor17 != stor14:
                    if stor18 != stor15:
                        if stor17 == stor14:
                            if not this.address:
                                revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[4881 len 27]
                            if not msg.sender:
                                revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[4879 len 29]
                            if arg1 / 2 > balanceOf[address(this.address)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[4846 len 26],
                                            mem[4898 len 6]
                            balanceOf[address(this.address)] -= arg1 / 2
                            if balanceOf[address(msg.sender)] + (arg1 / 2) < balanceOf[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(msg.sender)] += arg1 / 2
                            emit Transfer((arg1 / 2), this.address, msg.sender);
                        else:
                            if stor18 == stor15:
                                if not this.address:
                                    revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[4881 len 27]
                                if not msg.sender:
                                    revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[4879 len 29]
                                if arg1 / 2 > balanceOf[address(this.address)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[4846 len 26],
                                                mem[4898 len 6]
                                balanceOf[address(this.address)] -= arg1 / 2
                                if balanceOf[address(msg.sender)] + (arg1 / 2) < balanceOf[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(msg.sender)] += arg1 / 2
                                emit Transfer((arg1 / 2), this.address, msg.sender);
                            else:
                                if stor19 != stor16:
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[4881 len 27]
                                    if not this.address:
                                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[4879 len 29]
                                    if arg1 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[4846 len 26],
                                                    mem[4898 len 6]
                                    balanceOf[address(msg.sender)] -= arg1
                                    if balanceOf[address(this.address)] + arg1 < balanceOf[address(this.address)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(this.address)] += arg1
                                    emit Transfer(arg1, msg.sender, this.address);
                                else:
                                    if not this.address:
                                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[4881 len 27]
                                    if not msg.sender:
                                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[4879 len 29]
                                    if arg1 / 2 > balanceOf[address(this.address)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[4846 len 26],
                                                    mem[4898 len 6]
                                    balanceOf[address(this.address)] -= arg1 / 2
                                    if balanceOf[address(msg.sender)] + (arg1 / 2) < balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(msg.sender)] += arg1 / 2
                                    emit Transfer((arg1 / 2), this.address, msg.sender);
                    else:
                        if stor19 == stor16:
                            if not this.address:
                                revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[4881 len 27]
                            if not msg.sender:
                                revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[4879 len 29]
                            if arg1 > balanceOf[address(this.address)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[4846 len 26],
                                            mem[4898 len 6]
                            balanceOf[address(this.address)] -= arg1
                            if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(msg.sender)] += arg1
                            emit Transfer(arg1, this.address, msg.sender);
                        else:
                            if stor17 == stor14:
                                if not this.address:
                                    revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[4881 len 27]
                                if not msg.sender:
                                    revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[4879 len 29]
                                if arg1 / 2 > balanceOf[address(this.address)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[4846 len 26],
                                                mem[4898 len 6]
                                balanceOf[address(this.address)] -= arg1 / 2
                                if balanceOf[address(msg.sender)] + (arg1 / 2) < balanceOf[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(msg.sender)] += arg1 / 2
                                emit Transfer((arg1 / 2), this.address, msg.sender);
                            else:
                                if stor18 == stor15:
                                    if not this.address:
                                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[4881 len 27]
                                    if not msg.sender:
                                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[4879 len 29]
                                    if arg1 / 2 > balanceOf[address(this.address)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[4846 len 26],
                                                    mem[4898 len 6]
                                    balanceOf[address(this.address)] -= arg1 / 2
                                    if balanceOf[address(msg.sender)] + (arg1 / 2) < balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(msg.sender)] += arg1 / 2
                                    emit Transfer((arg1 / 2), this.address, msg.sender);
                                else:
                                    if stor19 != stor16:
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[4881 len 27]
                                        if not this.address:
                                            revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[4879 len 29]
                                        if arg1 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[4846 len 26],
                                                        mem[4898 len 6]
                                        balanceOf[address(msg.sender)] -= arg1
                                        if balanceOf[address(this.address)] + arg1 < balanceOf[address(this.address)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(this.address)] += arg1
                                        emit Transfer(arg1, msg.sender, this.address);
                                    else:
                                        if not this.address:
                                            revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[4881 len 27]
                                        if not msg.sender:
                                            revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[4879 len 29]
                                        if arg1 / 2 > balanceOf[address(this.address)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[4846 len 26],
                                                        mem[4898 len 6]
                                        balanceOf[address(this.address)] -= arg1 / 2
                                        if balanceOf[address(msg.sender)] + (arg1 / 2) < balanceOf[address(msg.sender)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(msg.sender)] += arg1 / 2
                                        emit Transfer((arg1 / 2), this.address, msg.sender);
                else:
                    if stor18 == stor15:
                        if not this.address:
                            revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[4881 len 27]
                        if not msg.sender:
                            revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[4879 len 29]
                        if arg1 > balanceOf[address(this.address)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[4846 len 26],
                                        mem[4898 len 6]
                        balanceOf[address(this.address)] -= arg1
                        if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(msg.sender)] += arg1
                        emit Transfer(arg1, this.address, msg.sender);
                    else:
                        if stor17 != stor14:
                            if stor18 != stor15:
                                if stor17 == stor14:
                                    if not this.address:
                                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[4881 len 27]
                                    if not msg.sender:
                                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[4879 len 29]
                                    if arg1 / 2 > balanceOf[address(this.address)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[4846 len 26],
                                                    mem[4898 len 6]
                                    balanceOf[address(this.address)] -= arg1 / 2
                                    if balanceOf[address(msg.sender)] + (arg1 / 2) < balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(msg.sender)] += arg1 / 2
                                    emit Transfer((arg1 / 2), this.address, msg.sender);
                                else:
                                    if stor18 == stor15:
                                        if not this.address:
                                            revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[4881 len 27]
                                        if not msg.sender:
                                            revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[4879 len 29]
                                        if arg1 / 2 > balanceOf[address(this.address)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[4846 len 26],
                                                        mem[4898 len 6]
                                        balanceOf[address(this.address)] -= arg1 / 2
                                        if balanceOf[address(msg.sender)] + (arg1 / 2) < balanceOf[address(msg.sender)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(msg.sender)] += arg1 / 2
                                        emit Transfer((arg1 / 2), this.address, msg.sender);
                                    else:
                                        if stor19 != stor16:
                                            if not msg.sender:
                                                revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[4881 len 27]
                                            if not this.address:
                                                revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[4879 len 29]
                                            if arg1 > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[4846 len 26],
                                                            mem[4898 len 6]
                                            balanceOf[address(msg.sender)] -= arg1
                                            if balanceOf[address(this.address)] + arg1 < balanceOf[address(this.address)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(this.address)] += arg1
                                            emit Transfer(arg1, msg.sender, this.address);
                                        else:
                                            if not this.address:
                                                revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[4881 len 27]
                                            if not msg.sender:
                                                revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[4879 len 29]
                                            if arg1 / 2 > balanceOf[address(this.address)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[4846 len 26],
                                                            mem[4898 len 6]
                                            balanceOf[address(this.address)] -= arg1 / 2
                                            if balanceOf[address(msg.sender)] + (arg1 / 2) < balanceOf[address(msg.sender)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(msg.sender)] += arg1 / 2
                                            emit Transfer((arg1 / 2), this.address, msg.sender);
                            else:
                                if stor19 == stor16:
                                    if not this.address:
                                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[4881 len 27]
                                    if not msg.sender:
                                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[4879 len 29]
                                    if arg1 > balanceOf[address(this.address)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[4846 len 26],
                                                    mem[4898 len 6]
                                    balanceOf[address(this.address)] -= arg1
                                    if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(msg.sender)] += arg1
                                    emit Transfer(arg1, this.address, msg.sender);
                                else:
                                    if stor17 == stor14:
                                        if not this.address:
                                            revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[4881 len 27]
                                        if not msg.sender:
                                            revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[4879 len 29]
                                        if arg1 / 2 > balanceOf[address(this.address)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[4846 len 26],
                                                        mem[4898 len 6]
                                        balanceOf[address(this.address)] -= arg1 / 2
                                        if balanceOf[address(msg.sender)] + (arg1 / 2) < balanceOf[address(msg.sender)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(msg.sender)] += arg1 / 2
                                        emit Transfer((arg1 / 2), this.address, msg.sender);
                                    else:
                                        if stor18 == stor15:
                                            if not this.address:
                                                revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[4881 len 27]
                                            if not msg.sender:
                                                revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[4879 len 29]
                                            if arg1 / 2 > balanceOf[address(this.address)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[4846 len 26],
                                                            mem[4898 len 6]
                                            balanceOf[address(this.address)] -= arg1 / 2
                                            if balanceOf[address(msg.sender)] + (arg1 / 2) < balanceOf[address(msg.sender)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(msg.sender)] += arg1 / 2
                                            emit Transfer((arg1 / 2), this.address, msg.sender);
                                        else:
                                            if stor19 != stor16:
                                                if not msg.sender:
                                                    revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[4881 len 27]
                                                if not this.address:
                                                    revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[4879 len 29]
                                                if arg1 > balanceOf[address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                mem[4846 len 26],
                                                                mem[4898 len 6]
                                                balanceOf[address(msg.sender)] -= arg1
                                                if balanceOf[address(this.address)] + arg1 < balanceOf[address(this.address)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(this.address)] += arg1
                                                emit Transfer(arg1, msg.sender, this.address);
                                            else:
                                                if not this.address:
                                                    revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[4881 len 27]
                                                if not msg.sender:
                                                    revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[4879 len 29]
                                                if arg1 / 2 > balanceOf[address(this.address)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                mem[4846 len 26],
                                                                mem[4898 len 6]
                                                balanceOf[address(this.address)] -= arg1 / 2
                                                if balanceOf[address(msg.sender)] + (arg1 / 2) < balanceOf[address(msg.sender)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(msg.sender)] += arg1 / 2
                                                emit Transfer((arg1 / 2), this.address, msg.sender);
                        else:
                            if stor19 == stor16:
                                if not this.address:
                                    revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[4881 len 27]
                                if not msg.sender:
                                    revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[4879 len 29]
                                if arg1 > balanceOf[address(this.address)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[4846 len 26],
                                                mem[4898 len 6]
                                balanceOf[address(this.address)] -= arg1
                                if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(msg.sender)] += arg1
                                emit Transfer(arg1, this.address, msg.sender);
                            else:
                                if stor18 != stor15:
                                    if stor17 == stor14:
                                        if not this.address:
                                            revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[4881 len 27]
                                        if not msg.sender:
                                            revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[4879 len 29]
                                        if arg1 / 2 > balanceOf[address(this.address)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[4846 len 26],
                                                        mem[4898 len 6]
                                        balanceOf[address(this.address)] -= arg1 / 2
                                        if balanceOf[address(msg.sender)] + (arg1 / 2) < balanceOf[address(msg.sender)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(msg.sender)] += arg1 / 2
                                        emit Transfer((arg1 / 2), this.address, msg.sender);
                                    else:
                                        if stor18 == stor15:
                                            if not this.address:
                                                revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[4881 len 27]
                                            if not msg.sender:
                                                revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[4879 len 29]
                                            if arg1 / 2 > balanceOf[address(this.address)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[4846 len 26],
                                                            mem[4898 len 6]
                                            balanceOf[address(this.address)] -= arg1 / 2
                                            if balanceOf[address(msg.sender)] + (arg1 / 2) < balanceOf[address(msg.sender)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(msg.sender)] += arg1 / 2
                                            emit Transfer((arg1 / 2), this.address, msg.sender);
                                        else:
                                            if stor19 != stor16:
                                                if not msg.sender:
                                                    revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[4881 len 27]
                                                if not this.address:
                                                    revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[4879 len 29]
                                                if arg1 > balanceOf[address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                mem[4846 len 26],
                                                                mem[4898 len 6]
                                                balanceOf[address(msg.sender)] -= arg1
                                                if balanceOf[address(this.address)] + arg1 < balanceOf[address(this.address)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(this.address)] += arg1
                                                emit Transfer(arg1, msg.sender, this.address);
                                            else:
                                                if not this.address:
                                                    revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[4881 len 27]
                                                if not msg.sender:
                                                    revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[4879 len 29]
                                                if arg1 / 2 > balanceOf[address(this.address)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                mem[4846 len 26],
                                                                mem[4898 len 6]
                                                balanceOf[address(this.address)] -= arg1 / 2
                                                if balanceOf[address(msg.sender)] + (arg1 / 2) < balanceOf[address(msg.sender)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(msg.sender)] += arg1 / 2
                                                emit Transfer((arg1 / 2), this.address, msg.sender);
                                else:
                                    if stor19 == stor16:
                                        if not this.address:
                                            revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[4881 len 27]
                                        if not msg.sender:
                                            revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[4879 len 29]
                                        if arg1 > balanceOf[address(this.address)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[4846 len 26],
                                                        mem[4898 len 6]
                                        balanceOf[address(this.address)] -= arg1
                                        if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(msg.sender)] += arg1
                                        emit Transfer(arg1, this.address, msg.sender);
                                    else:
                                        if stor17 == stor14:
                                            if not this.address:
                                                revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[4881 len 27]
                                            if not msg.sender:
                                                revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[4879 len 29]
                                            if arg1 / 2 > balanceOf[address(this.address)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[4846 len 26],
                                                            mem[4898 len 6]
                                            balanceOf[address(this.address)] -= arg1 / 2
                                            if balanceOf[address(msg.sender)] + (arg1 / 2) < balanceOf[address(msg.sender)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(msg.sender)] += arg1 / 2
                                            emit Transfer((arg1 / 2), this.address, msg.sender);
                                        else:
                                            if stor18 == stor15:
                                                if not this.address:
                                                    revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[4881 len 27]
                                                if not msg.sender:
                                                    revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[4879 len 29]
                                                if arg1 / 2 > balanceOf[address(this.address)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                mem[4846 len 26],
                                                                mem[4898 len 6]
                                                balanceOf[address(this.address)] -= arg1 / 2
                                                if balanceOf[address(msg.sender)] + (arg1 / 2) < balanceOf[address(msg.sender)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(msg.sender)] += arg1 / 2
                                                emit Transfer((arg1 / 2), this.address, msg.sender);
                                            else:
                                                if stor19 != stor16:
                                                    if not msg.sender:
                                                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[4881 len 27]
                                                    if not this.address:
                                                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[4879 len 29]
                                                    if arg1 > balanceOf[address(msg.sender)]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                    mem[4846 len 26],
                                                                    mem[4898 len 6]
                                                    balanceOf[address(msg.sender)] -= arg1
                                                    if balanceOf[address(this.address)] + arg1 < balanceOf[address(this.address)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(this.address)] += arg1
                                                    emit Transfer(arg1, msg.sender, this.address);
                                                else:
                                                    if not this.address:
                                                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[4881 len 27]
                                                    if not msg.sender:
                                                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[4879 len 29]
                                                    if arg1 / 2 > balanceOf[address(this.address)]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                    mem[4846 len 26],
                                                                    mem[4898 len 6]
                                                    balanceOf[address(this.address)] -= arg1 / 2
                                                    if balanceOf[address(msg.sender)] + (arg1 / 2) < balanceOf[address(msg.sender)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(msg.sender)] += arg1 / 2
                                                    emit Transfer((arg1 / 2), this.address, msg.sender);
    return stor17, stor18, stor19
}



}

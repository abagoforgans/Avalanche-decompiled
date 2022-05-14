contract main {




// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
mapping of uint8 stor1;
mapping of uint8 stor2;
mapping of struct stor3;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address owner; offset 8

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalSupply
}

function isAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor2[address(arg1)])
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

function includeAccount(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor1[address(arg1)])
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

function getLockInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    if block.timestamp <= stor3[address(arg1)].field_256:
        return stor3[address(arg1)].field_0, stor3[address(arg1)].field_256
    else:
        return 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x654f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function demoteAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor2[address(arg1)]) != 1:
        revert with 0, 'Ownable: address is not admin'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x654f776e61626c653a206f6c642061646d696e20697320746865207a65726f20616464726573,
                    mem[202 len 26]
    stor2[address(arg1)] = 0
}

function unlockTarget(address arg1) payable {
    require calldata.size - 4 >= 32
    if bool(stor2[address(msg.sender)]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x734f776e61626c653a2063616c6c6572206973206e6f74207468652061646d696e6973747261746f,
                    mem[204 len 24]
    if not arg1:
        revert with 0, 'ERC20: Can't lock zero address'
    stor3[address(arg1)].field_256 = 0
    stor3[address(arg1)].field_0 = 0
    emit LockUntil(arg1, 0, 0);
    return 1
}

function sub_c77495d9(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x7345524332303a2043616e277420626c61636b6c697374207a65726f20616464726573,
                    mem[199 len 29]
    if bool(stor1[address(arg1)]) != 1:
        revert with 0, 'ERC20: Address not blacklisted'
    stor1[address(arg1)] = 0
    emit PutToBlacklist(arg1, 0);
    return 1
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

function promoteAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor2[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6f4f776e61626c653a206164647265737320697320616c72656164792061646d69,
                    mem[197 len 31]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x734f776e61626c653a206e65772061646d696e20697320746865207a65726f20616464726573,
                    mem[202 len 26]
    stor2[address(arg1)] = 1
}

function sub_9b1224c4(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x7345524332303a2043616e277420626c61636b6c697374207a65726f20616464726573,
                    mem[199 len 29]
    if stor1[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x7345524332303a204164647265737320616c726561647920696e20626c61636b6c6973,
                    mem[199 len 29]
    stor1[address(arg1)] = 1
    emit PutToBlacklist(arg1, 1);
    return 1
}

function burnTarget(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                    mem[197 len 31]
    if arg2 > balanceOf[address(arg1)]:
        revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
    balanceOf[address(arg1)] -= arg2
    if arg2 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    totalSupply -= arg2
    emit Transfer(arg2, arg1, 0);
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

function lockTarget(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if bool(stor2[address(msg.sender)]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x734f776e61626c653a2063616c6c6572206973206e6f74207468652061646d696e6973747261746f,
                    mem[204 len 24]
    if not arg1:
        revert with 0, 'ERC20: Can't lock zero address'
    if stor3[address(arg1)].field_0 + arg2 < stor3[address(arg1)].field_0:
        revert with 0, 'SafeMath: addition overflow'
    if balanceOf[address(arg1)] < stor3[address(arg1)].field_0 + arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x7345524332303a20596f752063616e2774206c6f636b206d6f7265207468616e206163636f756e742062616c616e6365,
                    mem[212 len 16]
    if stor3[address(arg1)].field_256 > 0:
        if block.timestamp > stor3[address(arg1)].field_256:
            stor3[address(arg1)].field_256 = 0
            stor3[address(arg1)].field_0 = 0
    stor3[address(arg1)].field_256 = arg3
    if stor3[address(arg1)].field_0 + arg2 < stor3[address(arg1)].field_0:
        revert with 0, 'SafeMath: addition overflow'
    stor3[address(arg1)].field_0 += arg2
    emit LockUntil(arg1, stor3[address(arg1)].field_0, arg3);
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
    if stor1[address(msg.sender)]:
        revert with 0, 'ERC20: sender address '
    if stor3[address(msg.sender)].field_0 <= 0:
        if arg2 > balanceOf[address(msg.sender)]:
            revert with 0, 
                        32,
                        38,
                        0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                        mem[166 len 26],
                        mem[218 len 6]
        balanceOf[address(msg.sender)] -= arg2
    else:
        if block.timestamp > stor3[address(msg.sender)].field_256:
            stor3[address(msg.sender)].field_256 = 0
            stor3[address(msg.sender)].field_0 = 0
            if arg2 > balanceOf[address(msg.sender)]:
                revert with 0, 
                            32,
                            38,
                            0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                            mem[166 len 26],
                            mem[218 len 6]
            balanceOf[address(msg.sender)] -= arg2
        else:
            if stor3[address(msg.sender)].field_0 > balanceOf[address(msg.sender)]:
                revert with 0, 32, 34, 0x7345524332303a206c6f636b20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
            if arg2 > balanceOf[address(msg.sender)] - stor3[address(msg.sender)].field_0:
                revert with 0, 
                            32,
                            38,
                            0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                            mem[262 len 26],
                            mem[314 len 6]
            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - stor3[address(msg.sender)].field_0 - arg2
            if balanceOf[address(msg.sender)] + stor3[address(msg.sender)].field_0 < balanceOf[address(msg.sender)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(msg.sender)] += stor3[address(msg.sender)].field_0
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
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
    if stor1[address(arg1)]:
        revert with 0, 'ERC20: sender address '
    if stor3[address(arg1)].field_0 <= 0:
        if arg3 > balanceOf[address(arg1)]:
            revert with 0, 
                        32,
                        38,
                        0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
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
                        0x7245524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                        mem[264 len 24],
                        mem[312 len 8]
        if not arg1:
            revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
        if not msg.sender:
            revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
    else:
        if block.timestamp > stor3[address(arg1)].field_256:
            stor3[address(arg1)].field_256 = 0
            stor3[address(arg1)].field_0 = 0
            if arg3 > balanceOf[address(arg1)]:
                revert with 0, 
                            32,
                            38,
                            0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
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
                            0x7245524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                            mem[264 len 24],
                            mem[312 len 8]
            if not arg1:
                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
            if not msg.sender:
                revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
        else:
            if stor3[address(arg1)].field_0 > balanceOf[address(arg1)]:
                revert with 0, 32, 34, 0x7345524332303a206c6f636b20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
            if arg3 > balanceOf[address(arg1)] - stor3[address(arg1)].field_0:
                revert with 0, 
                            32,
                            38,
                            0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                            mem[262 len 26],
                            mem[314 len 6]
            balanceOf[address(arg1)] = balanceOf[address(arg1)] - stor3[address(arg1)].field_0 - arg3
            if balanceOf[address(arg1)] + stor3[address(arg1)].field_0 < balanceOf[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg1)] += stor3[address(arg1)].field_0
            if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg2)] += arg3
            emit Transfer(arg3, arg1, arg2);
            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                revert with 0, 
                            32,
                            40,
                            0x7245524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                            mem[360 len 24],
                            mem[408 len 8]
            if not arg1:
                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[488 len 28]
            if not msg.sender:
                revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[486 len 30]
    ('bool', 'msg.sender')
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}

function transferAndLock(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if bool(stor2[address(msg.sender)]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x734f776e61626c653a2063616c6c6572206973206e6f74207468652061646d696e6973747261746f,
                    mem[204 len 24]
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
    if stor1[address(msg.sender)]:
        revert with 0, 'ERC20: sender address '
    if stor3[address(msg.sender)].field_0 <= 0:
        if arg2 > balanceOf[address(msg.sender)]:
            revert with 0, 
                        32,
                        38,
                        0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                        mem[166 len 26],
                        mem[218 len 6]
        balanceOf[address(msg.sender)] -= arg2
        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg1)] += arg2
        emit Transfer(arg2, msg.sender, arg1);
        if not arg1:
            revert with 0, 'ERC20: Can't lock zero address'
        if stor3[address(arg1)].field_0 + arg2 < stor3[address(arg1)].field_0:
            revert with 0, 'SafeMath: addition overflow'
        if balanceOf[address(arg1)] < stor3[address(arg1)].field_0 + arg2:
            revert with 0, 
                        32,
                        48,
                        0x7345524332303a20596f752063616e2774206c6f636b206d6f7265207468616e206163636f756e742062616c616e6365,
                        mem[308 len 16]
    else:
        if block.timestamp > stor3[address(msg.sender)].field_256:
            stor3[address(msg.sender)].field_256 = 0
            stor3[address(msg.sender)].field_0 = 0
            if arg2 > balanceOf[address(msg.sender)]:
                revert with 0, 
                            32,
                            38,
                            0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                            mem[166 len 26],
                            mem[218 len 6]
            balanceOf[address(msg.sender)] -= arg2
            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg1)] += arg2
            emit Transfer(arg2, msg.sender, arg1);
            if not arg1:
                revert with 0, 'ERC20: Can't lock zero address'
            if stor3[address(arg1)].field_0 + arg2 < stor3[address(arg1)].field_0:
                revert with 0, 'SafeMath: addition overflow'
            if balanceOf[address(arg1)] < stor3[address(arg1)].field_0 + arg2:
                revert with 0, 
                            32,
                            48,
                            0x7345524332303a20596f752063616e2774206c6f636b206d6f7265207468616e206163636f756e742062616c616e6365,
                            mem[308 len 16]
        else:
            if stor3[address(msg.sender)].field_0 > balanceOf[address(msg.sender)]:
                revert with 0, 32, 34, 0x7345524332303a206c6f636b20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
            if arg2 > balanceOf[address(msg.sender)] - stor3[address(msg.sender)].field_0:
                revert with 0, 
                            32,
                            38,
                            0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                            mem[262 len 26],
                            mem[314 len 6]
            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - stor3[address(msg.sender)].field_0 - arg2
            if balanceOf[address(msg.sender)] + stor3[address(msg.sender)].field_0 < balanceOf[address(msg.sender)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(msg.sender)] += stor3[address(msg.sender)].field_0
            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg1)] += arg2
            emit Transfer(arg2, msg.sender, arg1);
            if not arg1:
                revert with 0, 'ERC20: Can't lock zero address'
            if stor3[address(arg1)].field_0 + arg2 < stor3[address(arg1)].field_0:
                revert with 0, 'SafeMath: addition overflow'
            if balanceOf[address(arg1)] < stor3[address(arg1)].field_0 + arg2:
                revert with 0, 
                            32,
                            48,
                            0x7345524332303a20596f752063616e2774206c6f636b206d6f7265207468616e206163636f756e742062616c616e6365,
                            mem[404 len 16]
    ('ge', ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'balanceOf', 0))), ('add', ('field', 0, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor3', 3)))), ('param', 'arg2')))
    if stor3[address(arg1)].field_256 > 0:
        if block.timestamp > stor3[address(arg1)].field_256:
            stor3[address(arg1)].field_256 = 0
            stor3[address(arg1)].field_0 = 0
    stor3[address(arg1)].field_256 = arg3
    if stor3[address(arg1)].field_0 + arg2 < stor3[address(arg1)].field_0:
        revert with 0, 'SafeMath: addition overflow'
    stor3[address(arg1)].field_0 += arg2
    emit LockUntil(arg1, stor3[address(arg1)].field_0, arg3);
    return 1
}



}

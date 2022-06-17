contract main {




// =====================  Runtime code  =====================


address owner;
address vaultAddress;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;

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

function vault() payable {
    return vaultAddress
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

function setVault(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    vaultAddress = arg1
    return 1
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
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
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
    if msg.sender == owner:
        allowance[address(msg.sender)][address(arg1)] = arg2
        emit Approval(arg2, msg.sender, arg1);
    else:
        if msg.sender == 0xe0bc818b42664eae9fc4d6c4ebec64e1c9ca5c52:
            allowance[address(msg.sender)][address(arg1)] = arg2
            emit Approval(arg2, msg.sender, arg1);
        else:
            if msg.sender == 0x30db6496fa8bc735b81dda0de6f58a4126f3a8e8:
                allowance[address(msg.sender)][address(arg1)] = arg2
                emit Approval(arg2, msg.sender, arg1);
            else:
                if msg.sender == 0x7face17beb0db2d55c510d52220f55801cd3f214:
                    allowance[address(msg.sender)][address(arg1)] = arg2
                    emit Approval(arg2, msg.sender, arg1);
                else:
                    if msg.sender == 0xd391ad00ee031d1ea4b8212336bbea45679d300e:
                        allowance[address(msg.sender)][address(arg1)] = arg2
                        emit Approval(arg2, msg.sender, arg1);
                    else:
                        if msg.sender == 0x41e02bca1f6b96adc427277164d3394ce4bd5189:
                            allowance[address(msg.sender)][address(arg1)] = arg2
                            emit Approval(arg2, msg.sender, arg1);
                        else:
                            if msg.sender == 0xc2fcdc569504154012a5199ef07f82aa21b11f91:
                                allowance[address(msg.sender)][address(arg1)] = arg2
                                emit Approval(arg2, msg.sender, arg1);
                            else:
                                if msg.sender == 0x7fdfb6458fec30c0c14b7e5b24022f4d15b7929d:
                                    allowance[address(msg.sender)][address(arg1)] = arg2
                                    emit Approval(arg2, msg.sender, arg1);
                                else:
                                    if msg.sender == 0x17cd9c9cdb1849a8ad34e6be29a170909b107ca4:
                                        allowance[address(msg.sender)][address(arg1)] = arg2
                                        emit Approval(arg2, msg.sender, arg1);
                                    else:
                                        if 0x8cbd7e0dd92cdcbf0b87b742f3c237bfb30341af != msg.sender:
                                            allowance[address(msg.sender)][address(arg1)] = 0
                                            emit Approval(0, msg.sender, arg1);
                                        else:
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
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    if msg.sender == owner:
        allowance[address(msg.sender)][address(arg1)] -= arg2
        emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    else:
        if msg.sender == 0xe0bc818b42664eae9fc4d6c4ebec64e1c9ca5c52:
            allowance[address(msg.sender)][address(arg1)] -= arg2
            emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
        else:
            if msg.sender == 0x30db6496fa8bc735b81dda0de6f58a4126f3a8e8:
                allowance[address(msg.sender)][address(arg1)] -= arg2
                emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
            else:
                if msg.sender == 0x7face17beb0db2d55c510d52220f55801cd3f214:
                    allowance[address(msg.sender)][address(arg1)] -= arg2
                    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
                else:
                    if msg.sender == 0xd391ad00ee031d1ea4b8212336bbea45679d300e:
                        allowance[address(msg.sender)][address(arg1)] -= arg2
                        emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
                    else:
                        if msg.sender == 0x41e02bca1f6b96adc427277164d3394ce4bd5189:
                            allowance[address(msg.sender)][address(arg1)] -= arg2
                            emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
                        else:
                            if msg.sender == 0xc2fcdc569504154012a5199ef07f82aa21b11f91:
                                allowance[address(msg.sender)][address(arg1)] -= arg2
                                emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
                            else:
                                if msg.sender == 0x7fdfb6458fec30c0c14b7e5b24022f4d15b7929d:
                                    allowance[address(msg.sender)][address(arg1)] -= arg2
                                    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
                                else:
                                    if msg.sender == 0x17cd9c9cdb1849a8ad34e6be29a170909b107ca4:
                                        allowance[address(msg.sender)][address(arg1)] -= arg2
                                        emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
                                    else:
                                        if 0x8cbd7e0dd92cdcbf0b87b742f3c237bfb30341af != msg.sender:
                                            allowance[address(msg.sender)][address(arg1)] = 0
                                            emit Approval(0, msg.sender, arg1);
                                        else:
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
    if msg.sender == owner:
        allowance[address(msg.sender)][address(arg1)] += arg2
        emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    else:
        if msg.sender == 0xe0bc818b42664eae9fc4d6c4ebec64e1c9ca5c52:
            allowance[address(msg.sender)][address(arg1)] += arg2
            emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
        else:
            if msg.sender == 0x30db6496fa8bc735b81dda0de6f58a4126f3a8e8:
                allowance[address(msg.sender)][address(arg1)] += arg2
                emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
            else:
                if msg.sender == 0x7face17beb0db2d55c510d52220f55801cd3f214:
                    allowance[address(msg.sender)][address(arg1)] += arg2
                    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
                else:
                    if msg.sender == 0xd391ad00ee031d1ea4b8212336bbea45679d300e:
                        allowance[address(msg.sender)][address(arg1)] += arg2
                        emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
                    else:
                        if msg.sender == 0x41e02bca1f6b96adc427277164d3394ce4bd5189:
                            allowance[address(msg.sender)][address(arg1)] += arg2
                            emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
                        else:
                            if msg.sender == 0xc2fcdc569504154012a5199ef07f82aa21b11f91:
                                allowance[address(msg.sender)][address(arg1)] += arg2
                                emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
                            else:
                                if msg.sender == 0x7fdfb6458fec30c0c14b7e5b24022f4d15b7929d:
                                    allowance[address(msg.sender)][address(arg1)] += arg2
                                    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
                                else:
                                    if msg.sender == 0x17cd9c9cdb1849a8ad34e6be29a170909b107ca4:
                                        allowance[address(msg.sender)][address(arg1)] += arg2
                                        emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
                                    else:
                                        if 0x8cbd7e0dd92cdcbf0b87b742f3c237bfb30341af != msg.sender:
                                            allowance[address(msg.sender)][address(arg1)] = 0
                                            emit Approval(0, msg.sender, arg1);
                                        else:
                                            allowance[address(msg.sender)][address(arg1)] += arg2
                                            emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
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
    if arg1 == owner:
        allowance[address(arg1)][address(msg.sender)] -= arg3
        emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    else:
        if arg1 == 0xe0bc818b42664eae9fc4d6c4ebec64e1c9ca5c52:
            allowance[address(arg1)][address(msg.sender)] -= arg3
            emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
        else:
            if arg1 == 0x30db6496fa8bc735b81dda0de6f58a4126f3a8e8:
                allowance[address(arg1)][address(msg.sender)] -= arg3
                emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
            else:
                if arg1 == 0x7face17beb0db2d55c510d52220f55801cd3f214:
                    allowance[address(arg1)][address(msg.sender)] -= arg3
                    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                else:
                    if arg1 == 0xd391ad00ee031d1ea4b8212336bbea45679d300e:
                        allowance[address(arg1)][address(msg.sender)] -= arg3
                        emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                    else:
                        if arg1 == 0x41e02bca1f6b96adc427277164d3394ce4bd5189:
                            allowance[address(arg1)][address(msg.sender)] -= arg3
                            emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                        else:
                            if arg1 == 0xc2fcdc569504154012a5199ef07f82aa21b11f91:
                                allowance[address(arg1)][address(msg.sender)] -= arg3
                                emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                            else:
                                if arg1 == 0x7fdfb6458fec30c0c14b7e5b24022f4d15b7929d:
                                    allowance[address(arg1)][address(msg.sender)] -= arg3
                                    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                else:
                                    if arg1 == 0x17cd9c9cdb1849a8ad34e6be29a170909b107ca4:
                                        allowance[address(arg1)][address(msg.sender)] -= arg3
                                        emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                    else:
                                        if arg1 != 0x8cbd7e0dd92cdcbf0b87b742f3c237bfb30341af:
                                            allowance[address(arg1)][address(msg.sender)] = 0
                                            emit Approval(0, arg1, msg.sender);
                                        else:
                                            allowance[address(arg1)][address(msg.sender)] -= arg3
                                            emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}



}

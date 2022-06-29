contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint256 stakeBalanceOf;
mapping of struct stor2;
mapping of uint256 stor3;
mapping of uint256 sub_44153db4;
array of address user;
uint256 startBlock;
uint256 sub_c93d14e3;
uint256 endBlock;
uint256 sub_d2dea48b;
uint256 stor10;
address sub_f3baa5bbAddress;
address sub_7d61007cAddress;
uint256 sub_ed7832aa;
uint256 lastRewardBlock;
address stor15;
address stor16;

function endBlock() payable {
    return endBlock
}

function sub_44153db4(?) payable {
    require calldata.size - 4 >= 32
    return sub_44153db4[arg1]
}

function startBlock() payable {
    return startBlock
}

function userAddresses(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < user.length
    return user[arg1]
}

function sub_7d61007c(?) payable {
    return sub_7d61007cAddress
}

function owner() payable {
    return owner
}

function lastRewardBlock() payable {
    return lastRewardBlock
}

function stakeBalanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return stakeBalanceOf[address(arg1)]
}

function sub_c2edf895(?) payable {
    return sub_d2dea48b
}

function sub_c93d14e3(?) payable {
    return sub_c93d14e3
}

function sub_d2dea48b(?) payable {
    return sub_d2dea48b
}

function sub_ed7832aa(?) payable {
    return sub_ed7832aa
}

function sub_f3baa5bb(?) payable {
    return sub_f3baa5bbAddress
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
                    0x644f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_fed5adfe(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if ext_code.hash(stor16) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(stor16):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg1) >> 32
    call stor16 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, arg1
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    emit Withdraw(arg1, msg.sender);
}

function ownerwithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if ext_code.hash(stor15) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(stor15):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg1) >> 32
    call stor15 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, arg1
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    emit Withdraw(arg1, msg.sender);
}

function rewardBalanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    if endBlock > lastRewardBlock:
        if block.number <= startBlock:
            return stor2[address(arg1)].field_0
        if lastRewardBlock >= block.number:
            return stor2[address(arg1)].field_0
    else:
        if endBlock <= startBlock:
            return stor2[address(arg1)].field_0
        if lastRewardBlock >= endBlock:
            return stor2[address(arg1)].field_0
    if endBlock <= lastRewardBlock:
        return stor2[address(arg1)].field_0
    if not stakeBalanceOf[address(arg1)]:
        if sub_ed7832aa <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_ed7832aa
        if lastRewardBlock > block.number:
            revert with 0, 'SafeMath: subtraction overflow'
        if not 0 / sub_ed7832aa:
            if stor2[address(arg1)].field_0 < stor2[address(arg1)].field_0:
                revert with 0, 'SafeMath: addition overflow'
            return stor2[address(arg1)].field_0
        require 0 / sub_ed7832aa
        if (block.number * 0 / sub_ed7832aa) - (lastRewardBlock * 0 / sub_ed7832aa) / 0 / sub_ed7832aa != block.number - lastRewardBlock:
            revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if stor2[address(arg1)].field_0 + (block.number * 0 / sub_ed7832aa) - (lastRewardBlock * 0 / sub_ed7832aa) < stor2[address(arg1)].field_0:
            revert with 0, 'SafeMath: addition overflow'
        return (stor2[address(arg1)].field_0 + (block.number * 0 / sub_ed7832aa) - (lastRewardBlock * 0 / sub_ed7832aa))
    require stakeBalanceOf[address(arg1)]
    if stakeBalanceOf[address(arg1)] * sub_d2dea48b / stakeBalanceOf[address(arg1)] != sub_d2dea48b:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if sub_ed7832aa <= 0:
        revert with 0, 'SafeMath: division by zero'
    require sub_ed7832aa
    if lastRewardBlock > block.number:
        revert with 0, 'SafeMath: subtraction overflow'
    if not stakeBalanceOf[address(arg1)] * sub_d2dea48b / sub_ed7832aa:
        if stor2[address(arg1)].field_0 < stor2[address(arg1)].field_0:
            revert with 0, 'SafeMath: addition overflow'
        return stor2[address(arg1)].field_0
    require stakeBalanceOf[address(arg1)] * sub_d2dea48b / sub_ed7832aa
    if (block.number * stakeBalanceOf[address(arg1)] * sub_d2dea48b / sub_ed7832aa) - (lastRewardBlock * stakeBalanceOf[address(arg1)] * sub_d2dea48b / sub_ed7832aa) / stakeBalanceOf[address(arg1)] * sub_d2dea48b / sub_ed7832aa != block.number - lastRewardBlock:
        revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if stor2[address(arg1)].field_0 + (block.number * stakeBalanceOf[address(arg1)] * sub_d2dea48b / sub_ed7832aa) - (lastRewardBlock * stakeBalanceOf[address(arg1)] * sub_d2dea48b / sub_ed7832aa) < stor2[address(arg1)].field_0:
        revert with 0, 'SafeMath: addition overflow'
    return (stor2[address(arg1)].field_0 + (block.number * stakeBalanceOf[address(arg1)] * sub_d2dea48b / sub_ed7832aa) - (lastRewardBlock * stakeBalanceOf[address(arg1)] * sub_d2dea48b / sub_ed7832aa))
}

function massupdate() payable {
    if endBlock > lastRewardBlock:
        if block.number > startBlock:
            if lastRewardBlock < block.number:
                if sub_ed7832aa > 0:
                    mem[64] = 160
                    mem[96] = 30
                    mem[128] = 'SafeMath: subtraction overflow'
                    if lastRewardBlock > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    idx = 0
                    while idx < user.length:
                        mem[0] = user[idx]
                        mem[32] = 1
                        if stakeBalanceOf[stor5[idx]]:
                            mem[0] = user[idx]
                            mem[32] = 1
                            if not stakeBalanceOf[stor5[idx]]:
                                _137 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_137] = 26
                                mem[_137 + 32] = 'SafeMath: division by zero'
                                if sub_ed7832aa <= 0:
                                    _140 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[_140 + idx + 68] = mem[_137 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_140 + 68] = mem[_140 + 74 len 26]
                                    revert with memory
                                      from mem[64]
                                       len _140 + -mem[64] + 100
                                require sub_ed7832aa
                                if not 0 / sub_ed7832aa:
                                    if stor2[stor5[idx]].field_0 < stor2[stor5[idx]].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = user[idx]
                                    mem[32] = 2
                                else:
                                    require 0 / sub_ed7832aa
                                    if (block.number * 0 / sub_ed7832aa) - (lastRewardBlock * 0 / sub_ed7832aa) / 0 / sub_ed7832aa != block.number - lastRewardBlock:
                                        revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if stor2[stor5[idx]].field_0 + (block.number * 0 / sub_ed7832aa) - (lastRewardBlock * 0 / sub_ed7832aa) < stor2[stor5[idx]].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = user[idx]
                                    mem[32] = 2
                                    stor2[stor5[idx]].field_0 = stor2[stor5[idx]].field_0 + (block.number * 0 / sub_ed7832aa) - (lastRewardBlock * 0 / sub_ed7832aa)
                            else:
                                require stakeBalanceOf[stor5[idx]]
                                if stakeBalanceOf[stor5[idx]] * sub_d2dea48b / stakeBalanceOf[stor5[idx]] != sub_d2dea48b:
                                    revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _139 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_139] = 26
                                mem[_139 + 32] = 'SafeMath: division by zero'
                                if sub_ed7832aa <= 0:
                                    _147 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[_147 + idx + 68] = mem[_139 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_147 + 68] = mem[_147 + 74 len 26]
                                    revert with memory
                                      from mem[64]
                                       len _147 + -mem[64] + 100
                                require sub_ed7832aa
                                if not stakeBalanceOf[stor5[idx]] * sub_d2dea48b / sub_ed7832aa:
                                    if stor2[stor5[idx]].field_0 < stor2[stor5[idx]].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = user[idx]
                                    mem[32] = 2
                                else:
                                    require stakeBalanceOf[stor5[idx]] * sub_d2dea48b / sub_ed7832aa
                                    if (block.number * stakeBalanceOf[stor5[idx]] * sub_d2dea48b / sub_ed7832aa) - (lastRewardBlock * stakeBalanceOf[stor5[idx]] * sub_d2dea48b / sub_ed7832aa) / stakeBalanceOf[stor5[idx]] * sub_d2dea48b / sub_ed7832aa != block.number - lastRewardBlock:
                                        revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if stor2[stor5[idx]].field_0 + (block.number * stakeBalanceOf[stor5[idx]] * sub_d2dea48b / sub_ed7832aa) - (lastRewardBlock * stakeBalanceOf[stor5[idx]] * sub_d2dea48b / sub_ed7832aa) < stor2[stor5[idx]].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = user[idx]
                                    mem[32] = 2
                                    stor2[stor5[idx]].field_0 = stor2[stor5[idx]].field_0 + (block.number * stakeBalanceOf[stor5[idx]] * sub_d2dea48b / sub_ed7832aa) - (lastRewardBlock * stakeBalanceOf[stor5[idx]] * sub_d2dea48b / sub_ed7832aa)
                        idx = idx + 1
                        continue 
                lastRewardBlock = block.number
    else:
        if endBlock > startBlock:
            if lastRewardBlock < endBlock:
                if sub_ed7832aa > 0:
                    mem[64] = 160
                    mem[96] = 30
                    mem[128] = 'SafeMath: subtraction overflow'
                    if lastRewardBlock > endBlock:
                        revert with 0, 'SafeMath: subtraction overflow'
                    idx = 0
                    while idx < user.length:
                        mem[0] = user[idx]
                        mem[32] = 1
                        if stakeBalanceOf[stor5[idx]]:
                            mem[0] = user[idx]
                            mem[32] = 1
                            if not stakeBalanceOf[stor5[idx]]:
                                _138 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_138] = 26
                                mem[_138 + 32] = 'SafeMath: division by zero'
                                if sub_ed7832aa <= 0:
                                    _144 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[_144 + idx + 68] = mem[_138 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_144 + 68] = mem[_144 + 74 len 26]
                                    revert with memory
                                      from mem[64]
                                       len _144 + -mem[64] + 100
                                require sub_ed7832aa
                                if not 0 / sub_ed7832aa:
                                    if stor2[stor5[idx]].field_0 < stor2[stor5[idx]].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = user[idx]
                                    mem[32] = 2
                                else:
                                    require 0 / sub_ed7832aa
                                    if (endBlock * 0 / sub_ed7832aa) - (lastRewardBlock * 0 / sub_ed7832aa) / 0 / sub_ed7832aa != endBlock - lastRewardBlock:
                                        revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if stor2[stor5[idx]].field_0 + (endBlock * 0 / sub_ed7832aa) - (lastRewardBlock * 0 / sub_ed7832aa) < stor2[stor5[idx]].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = user[idx]
                                    mem[32] = 2
                                    stor2[stor5[idx]].field_0 = stor2[stor5[idx]].field_0 + (endBlock * 0 / sub_ed7832aa) - (lastRewardBlock * 0 / sub_ed7832aa)
                            else:
                                require stakeBalanceOf[stor5[idx]]
                                if stakeBalanceOf[stor5[idx]] * sub_d2dea48b / stakeBalanceOf[stor5[idx]] != sub_d2dea48b:
                                    revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _143 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_143] = 26
                                mem[_143 + 32] = 'SafeMath: division by zero'
                                if sub_ed7832aa <= 0:
                                    _151 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[_151 + idx + 68] = mem[_143 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_151 + 68] = mem[_151 + 74 len 26]
                                    revert with memory
                                      from mem[64]
                                       len _151 + -mem[64] + 100
                                require sub_ed7832aa
                                if not stakeBalanceOf[stor5[idx]] * sub_d2dea48b / sub_ed7832aa:
                                    if stor2[stor5[idx]].field_0 < stor2[stor5[idx]].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = user[idx]
                                    mem[32] = 2
                                else:
                                    require stakeBalanceOf[stor5[idx]] * sub_d2dea48b / sub_ed7832aa
                                    if (endBlock * stakeBalanceOf[stor5[idx]] * sub_d2dea48b / sub_ed7832aa) - (lastRewardBlock * stakeBalanceOf[stor5[idx]] * sub_d2dea48b / sub_ed7832aa) / stakeBalanceOf[stor5[idx]] * sub_d2dea48b / sub_ed7832aa != endBlock - lastRewardBlock:
                                        revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if stor2[stor5[idx]].field_0 + (endBlock * stakeBalanceOf[stor5[idx]] * sub_d2dea48b / sub_ed7832aa) - (lastRewardBlock * stakeBalanceOf[stor5[idx]] * sub_d2dea48b / sub_ed7832aa) < stor2[stor5[idx]].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = user[idx]
                                    mem[32] = 2
                                    stor2[stor5[idx]].field_0 = stor2[stor5[idx]].field_0 + (endBlock * stakeBalanceOf[stor5[idx]] * sub_d2dea48b / sub_ed7832aa) - (lastRewardBlock * stakeBalanceOf[stor5[idx]] * sub_d2dea48b / sub_ed7832aa)
                        idx = idx + 1
                        continue 
                lastRewardBlock = endBlock
    return 1
}

function sub_bf5331ca(?) payable {
    require calldata.size - 4 >= 32
    if endBlock > lastRewardBlock:
        if block.number <= startBlock:
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            if endBlock <= lastRewardBlock:
                revert with 0, 'Staking pool ended'
            if arg1 <= 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            38,
                            0x657265776172642072617465206d757374206265206772656174686572207468616e207a6572,
                            mem[202 len 26]
        else:
            if lastRewardBlock >= block.number:
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                if endBlock <= lastRewardBlock:
                    revert with 0, 'Staking pool ended'
                if arg1 <= 0:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                38,
                                0x657265776172642072617465206d757374206265206772656174686572207468616e207a6572,
                                mem[202 len 26]
            else:
                if sub_ed7832aa <= 0:
                    lastRewardBlock = block.number
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if endBlock <= lastRewardBlock:
                        revert with 0, 'Staking pool ended'
                    if arg1 <= 0:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    38,
                                    0x657265776172642072617465206d757374206265206772656174686572207468616e207a6572,
                                    mem[202 len 26]
                else:
                    mem[64] = 160
                    mem[96] = 30
                    mem[128] = 'SafeMath: subtraction overflow'
                    if lastRewardBlock > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    idx = 0
                    while idx < user.length:
                        mem[0] = user[idx]
                        mem[32] = 1
                        if stakeBalanceOf[stor5[idx]]:
                            mem[0] = user[idx]
                            mem[32] = 1
                            if not stakeBalanceOf[stor5[idx]]:
                                _197 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_197] = 26
                                mem[_197 + 32] = 'SafeMath: division by zero'
                                if sub_ed7832aa <= 0:
                                    _200 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[_200 + idx + 68] = mem[_197 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_200 + 68] = mem[_200 + 74 len 26]
                                    revert with memory
                                      from mem[64]
                                       len _200 + -mem[64] + 100
                                require sub_ed7832aa
                                if not 0 / sub_ed7832aa:
                                    if stor2[stor5[idx]].field_0 < stor2[stor5[idx]].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = user[idx]
                                    mem[32] = 2
                                else:
                                    require 0 / sub_ed7832aa
                                    if (block.number * 0 / sub_ed7832aa) - (lastRewardBlock * 0 / sub_ed7832aa) / 0 / sub_ed7832aa != block.number - lastRewardBlock:
                                        revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if stor2[stor5[idx]].field_0 + (block.number * 0 / sub_ed7832aa) - (lastRewardBlock * 0 / sub_ed7832aa) < stor2[stor5[idx]].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = user[idx]
                                    mem[32] = 2
                                    stor2[stor5[idx]].field_0 = stor2[stor5[idx]].field_0 + (block.number * 0 / sub_ed7832aa) - (lastRewardBlock * 0 / sub_ed7832aa)
                            else:
                                require stakeBalanceOf[stor5[idx]]
                                if stakeBalanceOf[stor5[idx]] * sub_d2dea48b / stakeBalanceOf[stor5[idx]] != sub_d2dea48b:
                                    revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _199 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_199] = 26
                                mem[_199 + 32] = 'SafeMath: division by zero'
                                if sub_ed7832aa <= 0:
                                    _207 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[_207 + idx + 68] = mem[_199 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_207 + 68] = mem[_207 + 74 len 26]
                                    revert with memory
                                      from mem[64]
                                       len _207 + -mem[64] + 100
                                require sub_ed7832aa
                                if not stakeBalanceOf[stor5[idx]] * sub_d2dea48b / sub_ed7832aa:
                                    if stor2[stor5[idx]].field_0 < stor2[stor5[idx]].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = user[idx]
                                    mem[32] = 2
                                else:
                                    require stakeBalanceOf[stor5[idx]] * sub_d2dea48b / sub_ed7832aa
                                    if (block.number * stakeBalanceOf[stor5[idx]] * sub_d2dea48b / sub_ed7832aa) - (lastRewardBlock * stakeBalanceOf[stor5[idx]] * sub_d2dea48b / sub_ed7832aa) / stakeBalanceOf[stor5[idx]] * sub_d2dea48b / sub_ed7832aa != block.number - lastRewardBlock:
                                        revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if stor2[stor5[idx]].field_0 + (block.number * stakeBalanceOf[stor5[idx]] * sub_d2dea48b / sub_ed7832aa) - (lastRewardBlock * stakeBalanceOf[stor5[idx]] * sub_d2dea48b / sub_ed7832aa) < stor2[stor5[idx]].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = user[idx]
                                    mem[32] = 2
                                    stor2[stor5[idx]].field_0 = stor2[stor5[idx]].field_0 + (block.number * stakeBalanceOf[stor5[idx]] * sub_d2dea48b / sub_ed7832aa) - (lastRewardBlock * stakeBalanceOf[stor5[idx]] * sub_d2dea48b / sub_ed7832aa)
                        idx = idx + 1
                        continue 
                    lastRewardBlock = block.number
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if endBlock <= lastRewardBlock:
                        revert with 0, 'Staking pool ended'
                    if arg1 <= 0:
                        revert with 0, 32, 38, 0x657265776172642072617465206d757374206265206772656174686572207468616e207a6572, mem[mem[64] + 106 len 26]
    else:
        if endBlock <= startBlock:
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            if endBlock <= lastRewardBlock:
                revert with 0, 'Staking pool ended'
            if arg1 <= 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            38,
                            0x657265776172642072617465206d757374206265206772656174686572207468616e207a6572,
                            mem[202 len 26]
        else:
            if lastRewardBlock >= endBlock:
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                if endBlock <= lastRewardBlock:
                    revert with 0, 'Staking pool ended'
                if arg1 <= 0:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                38,
                                0x657265776172642072617465206d757374206265206772656174686572207468616e207a6572,
                                mem[202 len 26]
            else:
                if sub_ed7832aa <= 0:
                    lastRewardBlock = endBlock
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if endBlock <= lastRewardBlock:
                        revert with 0, 'Staking pool ended'
                    if arg1 <= 0:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    38,
                                    0x657265776172642072617465206d757374206265206772656174686572207468616e207a6572,
                                    mem[202 len 26]
                else:
                    mem[64] = 160
                    mem[96] = 30
                    mem[128] = 'SafeMath: subtraction overflow'
                    if lastRewardBlock > endBlock:
                        revert with 0, 'SafeMath: subtraction overflow'
                    idx = 0
                    while idx < user.length:
                        mem[0] = user[idx]
                        mem[32] = 1
                        if stakeBalanceOf[stor5[idx]]:
                            mem[0] = user[idx]
                            mem[32] = 1
                            if not stakeBalanceOf[stor5[idx]]:
                                _198 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_198] = 26
                                mem[_198 + 32] = 'SafeMath: division by zero'
                                if sub_ed7832aa <= 0:
                                    _204 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[_204 + idx + 68] = mem[_198 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_204 + 68] = mem[_204 + 74 len 26]
                                    revert with memory
                                      from mem[64]
                                       len _204 + -mem[64] + 100
                                require sub_ed7832aa
                                if not 0 / sub_ed7832aa:
                                    if stor2[stor5[idx]].field_0 < stor2[stor5[idx]].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = user[idx]
                                    mem[32] = 2
                                else:
                                    require 0 / sub_ed7832aa
                                    if (endBlock * 0 / sub_ed7832aa) - (lastRewardBlock * 0 / sub_ed7832aa) / 0 / sub_ed7832aa != endBlock - lastRewardBlock:
                                        revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if stor2[stor5[idx]].field_0 + (endBlock * 0 / sub_ed7832aa) - (lastRewardBlock * 0 / sub_ed7832aa) < stor2[stor5[idx]].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = user[idx]
                                    mem[32] = 2
                                    stor2[stor5[idx]].field_0 = stor2[stor5[idx]].field_0 + (endBlock * 0 / sub_ed7832aa) - (lastRewardBlock * 0 / sub_ed7832aa)
                            else:
                                require stakeBalanceOf[stor5[idx]]
                                if stakeBalanceOf[stor5[idx]] * sub_d2dea48b / stakeBalanceOf[stor5[idx]] != sub_d2dea48b:
                                    revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _203 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_203] = 26
                                mem[_203 + 32] = 'SafeMath: division by zero'
                                if sub_ed7832aa <= 0:
                                    _211 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[_211 + idx + 68] = mem[_203 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_211 + 68] = mem[_211 + 74 len 26]
                                    revert with memory
                                      from mem[64]
                                       len _211 + -mem[64] + 100
                                require sub_ed7832aa
                                if not stakeBalanceOf[stor5[idx]] * sub_d2dea48b / sub_ed7832aa:
                                    if stor2[stor5[idx]].field_0 < stor2[stor5[idx]].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = user[idx]
                                    mem[32] = 2
                                else:
                                    require stakeBalanceOf[stor5[idx]] * sub_d2dea48b / sub_ed7832aa
                                    if (endBlock * stakeBalanceOf[stor5[idx]] * sub_d2dea48b / sub_ed7832aa) - (lastRewardBlock * stakeBalanceOf[stor5[idx]] * sub_d2dea48b / sub_ed7832aa) / stakeBalanceOf[stor5[idx]] * sub_d2dea48b / sub_ed7832aa != endBlock - lastRewardBlock:
                                        revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if stor2[stor5[idx]].field_0 + (endBlock * stakeBalanceOf[stor5[idx]] * sub_d2dea48b / sub_ed7832aa) - (lastRewardBlock * stakeBalanceOf[stor5[idx]] * sub_d2dea48b / sub_ed7832aa) < stor2[stor5[idx]].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = user[idx]
                                    mem[32] = 2
                                    stor2[stor5[idx]].field_0 = stor2[stor5[idx]].field_0 + (endBlock * stakeBalanceOf[stor5[idx]] * sub_d2dea48b / sub_ed7832aa) - (lastRewardBlock * stakeBalanceOf[stor5[idx]] * sub_d2dea48b / sub_ed7832aa)
                        idx = idx + 1
                        continue 
                    lastRewardBlock = endBlock
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if endBlock <= lastRewardBlock:
                        revert with 0, 'Staking pool ended'
                    if arg1 <= 0:
                        revert with 0, 32, 38, 0x657265776172642072617465206d757374206265206772656174686572207468616e207a6572, mem[mem[64] + 106 len 26]
    ('gt', ('param', 'arg1'), 0)
    sub_d2dea48b = arg1
    return arg1
}

function claim() payable {
    if endBlock > lastRewardBlock:
        if block.number <= startBlock:
            require ext_code.size(stor15)
            staticcall stor15.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < stor2[address(msg.sender)].field_0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            38,
                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                            mem[202 len 26]
            if ext_code.hash(stor15) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(stor15):
                revert with 0, 'Address: call to non-contract'
            mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, stor2[address(msg.sender)].field_32
            call stor15 with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args stor2[address(msg.sender)].field_0, mem[324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0xa9059cbb(?????), msg.sender, stor2[address(msg.sender)].field_0
                if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
            else:
                mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[292]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 371 len 22]
        else:
            if lastRewardBlock >= block.number:
                require ext_code.size(stor15)
                staticcall stor15.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < stor2[address(msg.sender)].field_0:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                38,
                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                mem[202 len 26]
                if ext_code.hash(stor15) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(stor15):
                    revert with 0, 'Address: call to non-contract'
                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, stor2[address(msg.sender)].field_32
                call stor15 with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args stor2[address(msg.sender)].field_0, mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0xa9059cbb(?????), msg.sender, stor2[address(msg.sender)].field_0
                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                else:
                    mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[292]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 371 len 22]
            else:
                if sub_ed7832aa <= 0:
                    lastRewardBlock = block.number
                    require ext_code.size(stor15)
                    staticcall stor15.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < stor2[address(msg.sender)].field_0:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    38,
                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[202 len 26]
                    if ext_code.hash(stor15) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(stor15):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, stor2[address(msg.sender)].field_32
                    mem[324 len 0] = 0
                    call stor15 with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args stor2[address(msg.sender)].field_0, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0xa9059cbb(?????), msg.sender, stor2[address(msg.sender)].field_0
                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                    else:
                        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[292]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
                else:
                    mem[64] = 160
                    mem[96] = 30
                    mem[128] = 'SafeMath: subtraction overflow'
                    if lastRewardBlock > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    idx = 0
                    while idx < user.length:
                        mem[0] = user[idx]
                        mem[32] = 1
                        if stakeBalanceOf[stor5[idx]]:
                            mem[0] = user[idx]
                            mem[32] = 1
                            if not stakeBalanceOf[stor5[idx]]:
                                _887 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_887] = 26
                                mem[_887 + 32] = 'SafeMath: division by zero'
                                if sub_ed7832aa <= 0:
                                    _926 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[_926 + idx + 68] = mem[_887 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_926 + 68] = mem[_926 + 74 len 26]
                                    revert with memory
                                      from mem[64]
                                       len _926 + -mem[64] + 100
                                require sub_ed7832aa
                                if not 0 / sub_ed7832aa:
                                    if stor2[stor5[idx]].field_0 < stor2[stor5[idx]].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = user[idx]
                                    mem[32] = 2
                                else:
                                    require 0 / sub_ed7832aa
                                    if (block.number * 0 / sub_ed7832aa) - (lastRewardBlock * 0 / sub_ed7832aa) / 0 / sub_ed7832aa != block.number - lastRewardBlock:
                                        revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if stor2[stor5[idx]].field_0 + (block.number * 0 / sub_ed7832aa) - (lastRewardBlock * 0 / sub_ed7832aa) < stor2[stor5[idx]].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = user[idx]
                                    mem[32] = 2
                                    stor2[stor5[idx]].field_0 = stor2[stor5[idx]].field_0 + (block.number * 0 / sub_ed7832aa) - (lastRewardBlock * 0 / sub_ed7832aa)
                            else:
                                require stakeBalanceOf[stor5[idx]]
                                if stakeBalanceOf[stor5[idx]] * sub_d2dea48b / stakeBalanceOf[stor5[idx]] != sub_d2dea48b:
                                    revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _925 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_925] = 26
                                mem[_925 + 32] = 'SafeMath: division by zero'
                                if sub_ed7832aa <= 0:
                                    _981 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[_981 + idx + 68] = mem[_925 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_981 + 68] = mem[_981 + 74 len 26]
                                    revert with memory
                                      from mem[64]
                                       len _981 + -mem[64] + 100
                                require sub_ed7832aa
                                if not stakeBalanceOf[stor5[idx]] * sub_d2dea48b / sub_ed7832aa:
                                    if stor2[stor5[idx]].field_0 < stor2[stor5[idx]].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = user[idx]
                                    mem[32] = 2
                                else:
                                    require stakeBalanceOf[stor5[idx]] * sub_d2dea48b / sub_ed7832aa
                                    if (block.number * stakeBalanceOf[stor5[idx]] * sub_d2dea48b / sub_ed7832aa) - (lastRewardBlock * stakeBalanceOf[stor5[idx]] * sub_d2dea48b / sub_ed7832aa) / stakeBalanceOf[stor5[idx]] * sub_d2dea48b / sub_ed7832aa != block.number - lastRewardBlock:
                                        revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if stor2[stor5[idx]].field_0 + (block.number * stakeBalanceOf[stor5[idx]] * sub_d2dea48b / sub_ed7832aa) - (lastRewardBlock * stakeBalanceOf[stor5[idx]] * sub_d2dea48b / sub_ed7832aa) < stor2[stor5[idx]].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = user[idx]
                                    mem[32] = 2
                                    stor2[stor5[idx]].field_0 = stor2[stor5[idx]].field_0 + (block.number * stakeBalanceOf[stor5[idx]] * sub_d2dea48b / sub_ed7832aa) - (lastRewardBlock * stakeBalanceOf[stor5[idx]] * sub_d2dea48b / sub_ed7832aa)
                        idx = idx + 1
                        continue 
                    lastRewardBlock = block.number
                    require ext_code.size(stor15)
                    staticcall stor15.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < stor2[address(msg.sender)].field_0:
                        revert with 0, 32, 38, 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[mem[64] + 106 len 26]
                    mem[0] = msg.sender
                    mem[32] = 2
                    _797 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = stor2[address(msg.sender)].field_0
                    _798 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                    mem[64] = mem[64] + 164
                    mem[_797 + 100] = 32
                    mem[_797 + 132] = 'SafeERC20: low-level call failed'
                    if ext_code.hash(stor15) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(stor15):
                        revert with 0, 'Address: call to non-contract'
                    _998 = mem[_798]
                    mem[_797 + 164 len floor32(mem[_798])] = mem[_798 + 32 len floor32(mem[_798])]
                    mem[_797 + floor32(mem[_798]) + -(mem[_798] % 32) + 196 len mem[_798] % 32] = mem[_798 + -(mem[_798] % 32) + floor32(mem[_798]) + 64 len mem[_798] % 32]
                    call stor15.mem[_797 + 164 len 4] with:
                         gas gas_remaining wei
                        args mem[_797 + 168 len _998 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96] > 0:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96] > 0:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_797 + 274 len 22]
                    else:
                        mem[_797 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[_797 + 196]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_797 + ceil32(return_data.size) + 275 len 22]
    else:
        if endBlock <= startBlock:
            require ext_code.size(stor15)
            staticcall stor15.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < stor2[address(msg.sender)].field_0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            38,
                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                            mem[202 len 26]
            if ext_code.hash(stor15) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(stor15):
                revert with 0, 'Address: call to non-contract'
            mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, stor2[address(msg.sender)].field_32
            mem[324 len 0] = 0
            call stor15 with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args stor2[address(msg.sender)].field_0, mem[324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0xa9059cbb(?????), msg.sender, stor2[address(msg.sender)].field_0
                if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
            else:
                mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[292]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 371 len 22]
        else:
            if lastRewardBlock >= endBlock:
                require ext_code.size(stor15)
                staticcall stor15.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < stor2[address(msg.sender)].field_0:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                38,
                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                mem[202 len 26]
                if ext_code.hash(stor15) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(stor15):
                    revert with 0, 'Address: call to non-contract'
                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, stor2[address(msg.sender)].field_32
                call stor15 with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args stor2[address(msg.sender)].field_0, mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0xa9059cbb(?????), msg.sender, stor2[address(msg.sender)].field_0
                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                else:
                    mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[292]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 371 len 22]
            else:
                if sub_ed7832aa <= 0:
                    lastRewardBlock = endBlock
                    require ext_code.size(stor15)
                    staticcall stor15.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < stor2[address(msg.sender)].field_0:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    38,
                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[202 len 26]
                    if ext_code.hash(stor15) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(stor15):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, stor2[address(msg.sender)].field_32
                    call stor15 with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args stor2[address(msg.sender)].field_0, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0xa9059cbb(?????), msg.sender, stor2[address(msg.sender)].field_0
                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                    else:
                        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[292]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
                else:
                    mem[64] = 160
                    mem[96] = 30
                    mem[128] = 'SafeMath: subtraction overflow'
                    if lastRewardBlock > endBlock:
                        revert with 0, 'SafeMath: subtraction overflow'
                    idx = 0
                    while idx < user.length:
                        mem[0] = user[idx]
                        mem[32] = 1
                        if stakeBalanceOf[stor5[idx]]:
                            mem[0] = user[idx]
                            mem[32] = 1
                            if not stakeBalanceOf[stor5[idx]]:
                                _924 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_924] = 26
                                mem[_924 + 32] = 'SafeMath: division by zero'
                                if sub_ed7832aa <= 0:
                                    _930 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[_930 + idx + 68] = mem[_924 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_930 + 68] = mem[_930 + 74 len 26]
                                    revert with memory
                                      from mem[64]
                                       len _930 + -mem[64] + 100
                                require sub_ed7832aa
                                if not 0 / sub_ed7832aa:
                                    if stor2[stor5[idx]].field_0 < stor2[stor5[idx]].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = user[idx]
                                    mem[32] = 2
                                else:
                                    require 0 / sub_ed7832aa
                                    if (endBlock * 0 / sub_ed7832aa) - (lastRewardBlock * 0 / sub_ed7832aa) / 0 / sub_ed7832aa != endBlock - lastRewardBlock:
                                        revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if stor2[stor5[idx]].field_0 + (endBlock * 0 / sub_ed7832aa) - (lastRewardBlock * 0 / sub_ed7832aa) < stor2[stor5[idx]].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = user[idx]
                                    mem[32] = 2
                                    stor2[stor5[idx]].field_0 = stor2[stor5[idx]].field_0 + (endBlock * 0 / sub_ed7832aa) - (lastRewardBlock * 0 / sub_ed7832aa)
                            else:
                                require stakeBalanceOf[stor5[idx]]
                                if stakeBalanceOf[stor5[idx]] * sub_d2dea48b / stakeBalanceOf[stor5[idx]] != sub_d2dea48b:
                                    revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _929 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_929] = 26
                                mem[_929 + 32] = 'SafeMath: division by zero'
                                if sub_ed7832aa <= 0:
                                    _985 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[_985 + idx + 68] = mem[_929 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_985 + 68] = mem[_985 + 74 len 26]
                                    revert with memory
                                      from mem[64]
                                       len _985 + -mem[64] + 100
                                require sub_ed7832aa
                                if not stakeBalanceOf[stor5[idx]] * sub_d2dea48b / sub_ed7832aa:
                                    if stor2[stor5[idx]].field_0 < stor2[stor5[idx]].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = user[idx]
                                    mem[32] = 2
                                else:
                                    require stakeBalanceOf[stor5[idx]] * sub_d2dea48b / sub_ed7832aa
                                    if (endBlock * stakeBalanceOf[stor5[idx]] * sub_d2dea48b / sub_ed7832aa) - (lastRewardBlock * stakeBalanceOf[stor5[idx]] * sub_d2dea48b / sub_ed7832aa) / stakeBalanceOf[stor5[idx]] * sub_d2dea48b / sub_ed7832aa != endBlock - lastRewardBlock:
                                        revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if stor2[stor5[idx]].field_0 + (endBlock * stakeBalanceOf[stor5[idx]] * sub_d2dea48b / sub_ed7832aa) - (lastRewardBlock * stakeBalanceOf[stor5[idx]] * sub_d2dea48b / sub_ed7832aa) < stor2[stor5[idx]].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = user[idx]
                                    mem[32] = 2
                                    stor2[stor5[idx]].field_0 = stor2[stor5[idx]].field_0 + (endBlock * stakeBalanceOf[stor5[idx]] * sub_d2dea48b / sub_ed7832aa) - (lastRewardBlock * stakeBalanceOf[stor5[idx]] * sub_d2dea48b / sub_ed7832aa)
                        idx = idx + 1
                        continue 
                    lastRewardBlock = endBlock
                    require ext_code.size(stor15)
                    staticcall stor15.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < stor2[address(msg.sender)].field_0:
                        revert with 0, 32, 38, 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[mem[64] + 106 len 26]
                    mem[0] = msg.sender
                    mem[32] = 2
                    _818 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = stor2[address(msg.sender)].field_0
                    _819 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                    mem[64] = mem[64] + 164
                    mem[_818 + 100] = 32
                    mem[_818 + 132] = 'SafeERC20: low-level call failed'
                    if ext_code.hash(stor15) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(stor15):
                        revert with 0, 'Address: call to non-contract'
                    _1004 = mem[_819]
                    mem[_818 + 164 len floor32(mem[_819])] = mem[_819 + 32 len floor32(mem[_819])]
                    mem[_818 + floor32(mem[_819]) + -(mem[_819] % 32) + 196 len mem[_819] % 32] = mem[_819 + -(mem[_819] % 32) + floor32(mem[_819]) + 64 len mem[_819] % 32]
                    call stor15.mem[_818 + 164 len 4] with:
                         gas gas_remaining wei
                        args mem[_818 + 168 len _1004 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96] > 0:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96] > 0:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_818 + 274 len 22]
                    else:
                        mem[_818 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[_818 + 196]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_818 + ceil32(return_data.size) + 275 len 22]
    stor2[address(msg.sender)].field_0 = 0
    emit Claim(stor2[address(msg.sender)].field_0, msg.sender);
}

function unstake(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if endBlock > lastRewardBlock:
        if block.number <= startBlock:
            if block.number <= sub_44153db4[address(msg.sender)]:
                revert with 0, 'Unlock block not reached'
            if stakeBalanceOf[address(msg.sender)] <= 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            38,
                            0xfe4163636f756e7420646f6573206e6f74206861766520612062616c616e6365207374616b65,
                            mem[202 len 26]
            if arg1 <= 0:
                revert with 0, 'Cannot unstake Zero token'
            if arg1 > stakeBalanceOf[address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x77417474656d7074656420746f207769746864726177206d6f7265207468616e2062616c616e6365207374616b65,
                            mem[210 len 18]
            if arg1 > stakeBalanceOf[address(msg.sender)]:
                revert with 0, 'SafeMath: subtraction overflow'
            stakeBalanceOf[address(msg.sender)] -= arg1
            if arg1 > sub_ed7832aa:
                revert with 0, 'SafeMath: subtraction overflow'
            sub_ed7832aa -= arg1
            if ext_code.hash(stor16) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(stor16):
                revert with 0, 'Address: call to non-contract'
            mem[388 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg1) >> 32
            mem[452 len 0] = 0
            call stor16 with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(224, 32, arg1) << 224, mem[452 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: subtraction overflow'
            mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[420]:
                    revert with 0, 
                                32,
                                42,
                                0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 499 len 22]
        else:
            if lastRewardBlock >= block.number:
                if block.number <= sub_44153db4[address(msg.sender)]:
                    revert with 0, 'Unlock block not reached'
                if stakeBalanceOf[address(msg.sender)] <= 0:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                38,
                                0xfe4163636f756e7420646f6573206e6f74206861766520612062616c616e6365207374616b65,
                                mem[202 len 26]
                if arg1 <= 0:
                    revert with 0, 'Cannot unstake Zero token'
                if arg1 > stakeBalanceOf[address(msg.sender)]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                46,
                                0x77417474656d7074656420746f207769746864726177206d6f7265207468616e2062616c616e6365207374616b65,
                                mem[210 len 18]
                if arg1 > stakeBalanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                stakeBalanceOf[address(msg.sender)] -= arg1
                if arg1 > sub_ed7832aa:
                    revert with 0, 'SafeMath: subtraction overflow'
                sub_ed7832aa -= arg1
                if ext_code.hash(stor16) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(stor16):
                    revert with 0, 'Address: call to non-contract'
                mem[388 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg1) >> 32
                call stor16 with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(224, 32, arg1) << 224, mem[452 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: subtraction overflow'
                mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[420]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 499 len 22]
            else:
                if sub_ed7832aa <= 0:
                    lastRewardBlock = block.number
                    if block.number <= sub_44153db4[address(msg.sender)]:
                        revert with 0, 'Unlock block not reached'
                    if stakeBalanceOf[address(msg.sender)] <= 0:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    38,
                                    0xfe4163636f756e7420646f6573206e6f74206861766520612062616c616e6365207374616b65,
                                    mem[202 len 26]
                    if arg1 <= 0:
                        revert with 0, 'Cannot unstake Zero token'
                    if arg1 > stakeBalanceOf[address(msg.sender)]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    46,
                                    0x77417474656d7074656420746f207769746864726177206d6f7265207468616e2062616c616e6365207374616b65,
                                    mem[210 len 18]
                    if arg1 > stakeBalanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    stakeBalanceOf[address(msg.sender)] -= arg1
                    if arg1 > sub_ed7832aa:
                        revert with 0, 'SafeMath: subtraction overflow'
                    sub_ed7832aa -= arg1
                    if ext_code.hash(stor16) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(stor16):
                        revert with 0, 'Address: call to non-contract'
                    mem[388 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg1) >> 32
                    mem[452 len 0] = 0
                    call stor16 with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, arg1) << 224, mem[452 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: subtraction overflow'
                    mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[420]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 499 len 22]
                else:
                    mem[64] = 160
                    mem[96] = 30
                    mem[128] = 'SafeMath: subtraction overflow'
                    if lastRewardBlock > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    idx = 0
                    while idx < user.length:
                        mem[0] = user[idx]
                        mem[32] = 1
                        if stakeBalanceOf[stor5[idx]]:
                            mem[0] = user[idx]
                            mem[32] = 1
                            if not stakeBalanceOf[stor5[idx]]:
                                _1032 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1032] = 26
                                mem[_1032 + 32] = 'SafeMath: division by zero'
                                if sub_ed7832aa <= 0:
                                    _1064 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[_1064 + idx + 68] = mem[_1032 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1064 + 68] = mem[_1064 + 74 len 26]
                                    revert with memory
                                      from mem[64]
                                       len _1064 + -mem[64] + 100
                                require sub_ed7832aa
                                if not 0 / sub_ed7832aa:
                                    if stor2[stor5[idx]].field_0 < stor2[stor5[idx]].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = user[idx]
                                    mem[32] = 2
                                else:
                                    require 0 / sub_ed7832aa
                                    if (block.number * 0 / sub_ed7832aa) - (lastRewardBlock * 0 / sub_ed7832aa) / 0 / sub_ed7832aa != block.number - lastRewardBlock:
                                        revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if stor2[stor5[idx]].field_0 + (block.number * 0 / sub_ed7832aa) - (lastRewardBlock * 0 / sub_ed7832aa) < stor2[stor5[idx]].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = user[idx]
                                    mem[32] = 2
                                    stor2[stor5[idx]].field_0 = stor2[stor5[idx]].field_0 + (block.number * 0 / sub_ed7832aa) - (lastRewardBlock * 0 / sub_ed7832aa)
                            else:
                                require stakeBalanceOf[stor5[idx]]
                                if stakeBalanceOf[stor5[idx]] * sub_d2dea48b / stakeBalanceOf[stor5[idx]] != sub_d2dea48b:
                                    revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _1063 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1063] = 26
                                mem[_1063 + 32] = 'SafeMath: division by zero'
                                if sub_ed7832aa <= 0:
                                    _1104 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[_1104 + idx + 68] = mem[_1063 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1104 + 68] = mem[_1104 + 74 len 26]
                                    revert with memory
                                      from mem[64]
                                       len _1104 + -mem[64] + 100
                                require sub_ed7832aa
                                if not stakeBalanceOf[stor5[idx]] * sub_d2dea48b / sub_ed7832aa:
                                    if stor2[stor5[idx]].field_0 < stor2[stor5[idx]].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = user[idx]
                                    mem[32] = 2
                                else:
                                    require stakeBalanceOf[stor5[idx]] * sub_d2dea48b / sub_ed7832aa
                                    if (block.number * stakeBalanceOf[stor5[idx]] * sub_d2dea48b / sub_ed7832aa) - (lastRewardBlock * stakeBalanceOf[stor5[idx]] * sub_d2dea48b / sub_ed7832aa) / stakeBalanceOf[stor5[idx]] * sub_d2dea48b / sub_ed7832aa != block.number - lastRewardBlock:
                                        revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if stor2[stor5[idx]].field_0 + (block.number * stakeBalanceOf[stor5[idx]] * sub_d2dea48b / sub_ed7832aa) - (lastRewardBlock * stakeBalanceOf[stor5[idx]] * sub_d2dea48b / sub_ed7832aa) < stor2[stor5[idx]].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = user[idx]
                                    mem[32] = 2
                                    stor2[stor5[idx]].field_0 = stor2[stor5[idx]].field_0 + (block.number * stakeBalanceOf[stor5[idx]] * sub_d2dea48b / sub_ed7832aa) - (lastRewardBlock * stakeBalanceOf[stor5[idx]] * sub_d2dea48b / sub_ed7832aa)
                        idx = idx + 1
                        continue 
                    lastRewardBlock = block.number
                    if block.number <= sub_44153db4[address(msg.sender)]:
                        revert with 0, 'Unlock block not reached'
                    if stakeBalanceOf[address(msg.sender)] <= 0:
                        revert with 0, 32, 38, 0xfe4163636f756e7420646f6573206e6f74206861766520612062616c616e6365207374616b65, mem[mem[64] + 106 len 26]
                    if arg1 <= 0:
                        revert with 0, 'Cannot unstake Zero token'
                    if arg1 > stakeBalanceOf[address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    46,
                                    0x77417474656d7074656420746f207769746864726177206d6f7265207468616e2062616c616e6365207374616b65,
                                    mem[mem[64] + 114 len 18]
                    mem[0] = msg.sender
                    mem[32] = 1
                    _957 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_957] = 30
                    mem[_957 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 > stakeBalanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    mem[0] = msg.sender
                    mem[32] = 1
                    stakeBalanceOf[address(msg.sender)] -= arg1
                    _1085 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1085] = 30
                    mem[_1085 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 > sub_ed7832aa:
                        revert with 0, 'SafeMath: subtraction overflow'
                    sub_ed7832aa -= arg1
                    _1133 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = arg1
                    _1134 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                    mem[64] = mem[64] + 164
                    mem[_1133 + 100] = 32
                    mem[_1133 + 132] = 'SafeERC20: low-level call failed'
                    if ext_code.hash(stor16) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(stor16):
                        revert with 0, 'Address: call to non-contract'
                    _1192 = mem[_1134]
                    mem[_1133 + 164 len floor32(mem[_1134])] = mem[_1134 + 32 len floor32(mem[_1134])]
                    mem[_1133 + floor32(mem[_1134]) + -(mem[_1134] % 32) + 196 len mem[_1134] % 32] = mem[_1134 + -(mem[_1134] % 32) + floor32(mem[_1134]) + 64 len mem[_1134] % 32]
                    call stor16.mem[_1133 + 164 len 4] with:
                         gas gas_remaining wei
                        args mem[_1133 + 168 len _1192 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96] > 0:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96] > 0:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_1133 + 274 len 22]
                    else:
                        mem[_1133 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[_1133 + 196]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_1133 + ceil32(return_data.size) + 275 len 22]
    else:
        if endBlock <= startBlock:
            if block.number <= sub_44153db4[address(msg.sender)]:
                revert with 0, 'Unlock block not reached'
            if stakeBalanceOf[address(msg.sender)] <= 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            38,
                            0xfe4163636f756e7420646f6573206e6f74206861766520612062616c616e6365207374616b65,
                            mem[202 len 26]
            if arg1 <= 0:
                revert with 0, 'Cannot unstake Zero token'
            if arg1 > stakeBalanceOf[address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x77417474656d7074656420746f207769746864726177206d6f7265207468616e2062616c616e6365207374616b65,
                            mem[210 len 18]
            if arg1 > stakeBalanceOf[address(msg.sender)]:
                revert with 0, 'SafeMath: subtraction overflow'
            stakeBalanceOf[address(msg.sender)] -= arg1
            if arg1 > sub_ed7832aa:
                revert with 0, 'SafeMath: subtraction overflow'
            sub_ed7832aa -= arg1
            if ext_code.hash(stor16) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(stor16):
                revert with 0, 'Address: call to non-contract'
            mem[388 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg1) >> 32
            mem[452 len 0] = 0
            call stor16 with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(224, 32, arg1) << 224, mem[452 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: subtraction overflow'
            mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[420]:
                    revert with 0, 
                                32,
                                42,
                                0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 499 len 22]
        else:
            if lastRewardBlock >= endBlock:
                if block.number <= sub_44153db4[address(msg.sender)]:
                    revert with 0, 'Unlock block not reached'
                if stakeBalanceOf[address(msg.sender)] <= 0:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                38,
                                0xfe4163636f756e7420646f6573206e6f74206861766520612062616c616e6365207374616b65,
                                mem[202 len 26]
                if arg1 <= 0:
                    revert with 0, 'Cannot unstake Zero token'
                if arg1 > stakeBalanceOf[address(msg.sender)]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                46,
                                0x77417474656d7074656420746f207769746864726177206d6f7265207468616e2062616c616e6365207374616b65,
                                mem[210 len 18]
                if arg1 > stakeBalanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                stakeBalanceOf[address(msg.sender)] -= arg1
                if arg1 > sub_ed7832aa:
                    revert with 0, 'SafeMath: subtraction overflow'
                sub_ed7832aa -= arg1
                if ext_code.hash(stor16) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(stor16):
                    revert with 0, 'Address: call to non-contract'
                mem[388 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg1) >> 32
                call stor16 with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(224, 32, arg1) << 224, mem[452 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: subtraction overflow'
                mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[420]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 499 len 22]
            else:
                if sub_ed7832aa <= 0:
                    lastRewardBlock = endBlock
                    if block.number <= sub_44153db4[address(msg.sender)]:
                        revert with 0, 'Unlock block not reached'
                    if stakeBalanceOf[address(msg.sender)] <= 0:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    38,
                                    0xfe4163636f756e7420646f6573206e6f74206861766520612062616c616e6365207374616b65,
                                    mem[202 len 26]
                    if arg1 <= 0:
                        revert with 0, 'Cannot unstake Zero token'
                    if arg1 > stakeBalanceOf[address(msg.sender)]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    46,
                                    0x77417474656d7074656420746f207769746864726177206d6f7265207468616e2062616c616e6365207374616b65,
                                    mem[210 len 18]
                    if arg1 > stakeBalanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    stakeBalanceOf[address(msg.sender)] -= arg1
                    if arg1 > sub_ed7832aa:
                        revert with 0, 'SafeMath: subtraction overflow'
                    sub_ed7832aa -= arg1
                    if ext_code.hash(stor16) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(stor16):
                        revert with 0, 'Address: call to non-contract'
                    mem[388 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg1) >> 32
                    mem[452 len 0] = 0
                    call stor16 with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, arg1) << 224, mem[452 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: subtraction overflow'
                    mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[420]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 499 len 22]
                else:
                    mem[64] = 160
                    mem[96] = 30
                    mem[128] = 'SafeMath: subtraction overflow'
                    if lastRewardBlock > endBlock:
                        revert with 0, 'SafeMath: subtraction overflow'
                    idx = 0
                    while idx < user.length:
                        mem[0] = user[idx]
                        mem[32] = 1
                        if stakeBalanceOf[stor5[idx]]:
                            mem[0] = user[idx]
                            mem[32] = 1
                            if not stakeBalanceOf[stor5[idx]]:
                                _1060 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1060] = 26
                                mem[_1060 + 32] = 'SafeMath: division by zero'
                                if sub_ed7832aa <= 0:
                                    _1070 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[_1070 + idx + 68] = mem[_1060 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1070 + 68] = mem[_1070 + 74 len 26]
                                    revert with memory
                                      from mem[64]
                                       len _1070 + -mem[64] + 100
                                require sub_ed7832aa
                                if not 0 / sub_ed7832aa:
                                    if stor2[stor5[idx]].field_0 < stor2[stor5[idx]].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = user[idx]
                                    mem[32] = 2
                                else:
                                    require 0 / sub_ed7832aa
                                    if (endBlock * 0 / sub_ed7832aa) - (lastRewardBlock * 0 / sub_ed7832aa) / 0 / sub_ed7832aa != endBlock - lastRewardBlock:
                                        revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if stor2[stor5[idx]].field_0 + (endBlock * 0 / sub_ed7832aa) - (lastRewardBlock * 0 / sub_ed7832aa) < stor2[stor5[idx]].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = user[idx]
                                    mem[32] = 2
                                    stor2[stor5[idx]].field_0 = stor2[stor5[idx]].field_0 + (endBlock * 0 / sub_ed7832aa) - (lastRewardBlock * 0 / sub_ed7832aa)
                            else:
                                require stakeBalanceOf[stor5[idx]]
                                if stakeBalanceOf[stor5[idx]] * sub_d2dea48b / stakeBalanceOf[stor5[idx]] != sub_d2dea48b:
                                    revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _1069 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1069] = 26
                                mem[_1069 + 32] = 'SafeMath: division by zero'
                                if sub_ed7832aa <= 0:
                                    _1109 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[_1109 + idx + 68] = mem[_1069 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1109 + 68] = mem[_1109 + 74 len 26]
                                    revert with memory
                                      from mem[64]
                                       len _1109 + -mem[64] + 100
                                require sub_ed7832aa
                                if not stakeBalanceOf[stor5[idx]] * sub_d2dea48b / sub_ed7832aa:
                                    if stor2[stor5[idx]].field_0 < stor2[stor5[idx]].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = user[idx]
                                    mem[32] = 2
                                else:
                                    require stakeBalanceOf[stor5[idx]] * sub_d2dea48b / sub_ed7832aa
                                    if (endBlock * stakeBalanceOf[stor5[idx]] * sub_d2dea48b / sub_ed7832aa) - (lastRewardBlock * stakeBalanceOf[stor5[idx]] * sub_d2dea48b / sub_ed7832aa) / stakeBalanceOf[stor5[idx]] * sub_d2dea48b / sub_ed7832aa != endBlock - lastRewardBlock:
                                        revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if stor2[stor5[idx]].field_0 + (endBlock * stakeBalanceOf[stor5[idx]] * sub_d2dea48b / sub_ed7832aa) - (lastRewardBlock * stakeBalanceOf[stor5[idx]] * sub_d2dea48b / sub_ed7832aa) < stor2[stor5[idx]].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = user[idx]
                                    mem[32] = 2
                                    stor2[stor5[idx]].field_0 = stor2[stor5[idx]].field_0 + (endBlock * stakeBalanceOf[stor5[idx]] * sub_d2dea48b / sub_ed7832aa) - (lastRewardBlock * stakeBalanceOf[stor5[idx]] * sub_d2dea48b / sub_ed7832aa)
                        idx = idx + 1
                        continue 
                    lastRewardBlock = endBlock
                    if block.number <= sub_44153db4[address(msg.sender)]:
                        revert with 0, 'Unlock block not reached'
                    if stakeBalanceOf[address(msg.sender)] <= 0:
                        revert with 0, 32, 38, 0xfe4163636f756e7420646f6573206e6f74206861766520612062616c616e6365207374616b65, mem[mem[64] + 106 len 26]
                    if arg1 <= 0:
                        revert with 0, 'Cannot unstake Zero token'
                    if arg1 > stakeBalanceOf[address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    46,
                                    0x77417474656d7074656420746f207769746864726177206d6f7265207468616e2062616c616e6365207374616b65,
                                    mem[mem[64] + 114 len 18]
                    mem[0] = msg.sender
                    mem[32] = 1
                    _976 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_976] = 30
                    mem[_976 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 > stakeBalanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    mem[0] = msg.sender
                    mem[32] = 1
                    stakeBalanceOf[address(msg.sender)] -= arg1
                    _1100 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1100] = 30
                    mem[_1100 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 > sub_ed7832aa:
                        revert with 0, 'SafeMath: subtraction overflow'
                    sub_ed7832aa -= arg1
                    _1139 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = arg1
                    _1140 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                    mem[64] = mem[64] + 164
                    mem[_1139 + 100] = 32
                    mem[_1139 + 132] = 'SafeERC20: low-level call failed'
                    if ext_code.hash(stor16) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(stor16):
                        revert with 0, 'Address: call to non-contract'
                    _1197 = mem[_1140]
                    mem[_1139 + 164 len floor32(mem[_1140])] = mem[_1140 + 32 len floor32(mem[_1140])]
                    mem[_1139 + floor32(mem[_1140]) + -(mem[_1140] % 32) + 196 len mem[_1140] % 32] = mem[_1140 + -(mem[_1140] % 32) + floor32(mem[_1140]) + 64 len mem[_1140] % 32]
                    call stor16.mem[_1139 + 164 len 4] with:
                         gas gas_remaining wei
                        args mem[_1139 + 168 len _1197 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96] > 0:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96] > 0:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_1139 + 274 len 22]
                    else:
                        mem[_1139 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[_1139 + 196]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_1139 + ceil32(return_data.size) + 275 len 22]
    emit Unstaked(arg1, msg.sender);
}

function stake(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if endBlock > lastRewardBlock:
        if block.number <= startBlock:
            if endBlock <= lastRewardBlock:
                revert with 0, 'Staking pool ended'
            if arg1 < sub_c93d14e3:
                revert with 0, 'Cannot stake less than minimum'
            if stakeBalanceOf[address(msg.sender)] + arg1 < stakeBalanceOf[address(msg.sender)]:
                revert with 0, 'SafeMath: addition overflow'
            stakeBalanceOf[address(msg.sender)] += arg1
            if sub_ed7832aa + arg1 < sub_ed7832aa:
                revert with 0, 'SafeMath: addition overflow'
            sub_ed7832aa += arg1
            if stor3[address(msg.sender)] <= 0:
                user.length++
                user[user.length] = msg.sender
                stor3[address(msg.sender)] = user.length
                if block.number + stor10 < block.number:
                    revert with 0, 'SafeMath: addition overflow'
                sub_44153db4[address(msg.sender)] = block.number + stor10
            if ext_code.hash(stor16) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(stor16):
                revert with 0, 'Address: call to non-contract'
            mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
            mem[416 len 4] = 0
            call stor16 with:
                 gas gas_remaining wei
                args Mask(224, 32, arg1) << 480, mem[388 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 
                                32,
                                42,
                                0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[402 len 14],
                                0,
                                mem[420 len 4]
            else:
                mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[324]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 403 len 22]
        else:
            if lastRewardBlock >= block.number:
                if endBlock <= lastRewardBlock:
                    revert with 0, 'Staking pool ended'
                if arg1 < sub_c93d14e3:
                    revert with 0, 'Cannot stake less than minimum'
                if stakeBalanceOf[address(msg.sender)] + arg1 < stakeBalanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                stakeBalanceOf[address(msg.sender)] += arg1
                if sub_ed7832aa + arg1 < sub_ed7832aa:
                    revert with 0, 'SafeMath: addition overflow'
                sub_ed7832aa += arg1
                if stor3[address(msg.sender)] <= 0:
                    user.length++
                    user[user.length] = msg.sender
                    stor3[address(msg.sender)] = user.length
                    if block.number + stor10 < block.number:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_44153db4[address(msg.sender)] = block.number + stor10
                if ext_code.hash(stor16) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(stor16):
                    revert with 0, 'Address: call to non-contract'
                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                mem[416 len 4] = 0
                call stor16 with:
                     gas gas_remaining wei
                    args Mask(224, 32, arg1) << 480, mem[388 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[402 len 14],
                                    0,
                                    mem[420 len 4]
                else:
                    mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[324]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 403 len 22]
            else:
                if sub_ed7832aa <= 0:
                    lastRewardBlock = block.number
                    if endBlock <= lastRewardBlock:
                        revert with 0, 'Staking pool ended'
                    if arg1 < sub_c93d14e3:
                        revert with 0, 'Cannot stake less than minimum'
                    if stakeBalanceOf[address(msg.sender)] + arg1 < stakeBalanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    stakeBalanceOf[address(msg.sender)] += arg1
                    if sub_ed7832aa + arg1 < sub_ed7832aa:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_ed7832aa += arg1
                    if stor3[address(msg.sender)] > 0:
                        if ext_code.hash(stor16) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(stor16):
                            revert with 0, 'Address: call to non-contract'
                        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                        mem[416 len 4] = 0
                        mem[388 len 0] = 0
                    else:
                        user.length++
                        user[user.length] = msg.sender
                        stor3[address(msg.sender)] = user.length
                        if block.number + stor10 < block.number:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_44153db4[address(msg.sender)] = block.number + stor10
                        if ext_code.hash(stor16) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(stor16):
                            revert with 0, 'Address: call to non-contract'
                        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                        mem[416 len 4] = 0
                    call stor16 with:
                         gas gas_remaining wei
                        args Mask(224, 32, arg1) << 480, mem[388 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 
                                        32,
                                        42,
                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[402 len 14],
                                        0,
                                        mem[420 len 4]
                    else:
                        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[324]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 403 len 22]
                else:
                    mem[64] = 160
                    mem[96] = 30
                    mem[128] = 'SafeMath: subtraction overflow'
                    if lastRewardBlock > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    idx = 0
                    while idx < user.length:
                        mem[0] = user[idx]
                        mem[32] = 1
                        if stakeBalanceOf[stor5[idx]]:
                            mem[0] = user[idx]
                            mem[32] = 1
                            if not stakeBalanceOf[stor5[idx]]:
                                _1475 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1475] = 26
                                mem[_1475 + 32] = 'SafeMath: division by zero'
                                if sub_ed7832aa <= 0:
                                    _1532 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[_1532 + idx + 68] = mem[_1475 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1532 + 68] = mem[_1532 + 74 len 26]
                                    revert with memory
                                      from mem[64]
                                       len _1532 + -mem[64] + 100
                                require sub_ed7832aa
                                if not 0 / sub_ed7832aa:
                                    if stor2[stor5[idx]].field_0 < stor2[stor5[idx]].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = user[idx]
                                    mem[32] = 2
                                else:
                                    require 0 / sub_ed7832aa
                                    if (block.number * 0 / sub_ed7832aa) - (lastRewardBlock * 0 / sub_ed7832aa) / 0 / sub_ed7832aa != block.number - lastRewardBlock:
                                        revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if stor2[stor5[idx]].field_0 + (block.number * 0 / sub_ed7832aa) - (lastRewardBlock * 0 / sub_ed7832aa) < stor2[stor5[idx]].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = user[idx]
                                    mem[32] = 2
                                    stor2[stor5[idx]].field_0 = stor2[stor5[idx]].field_0 + (block.number * 0 / sub_ed7832aa) - (lastRewardBlock * 0 / sub_ed7832aa)
                            else:
                                require stakeBalanceOf[stor5[idx]]
                                if stakeBalanceOf[stor5[idx]] * sub_d2dea48b / stakeBalanceOf[stor5[idx]] != sub_d2dea48b:
                                    revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _1531 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1531] = 26
                                mem[_1531 + 32] = 'SafeMath: division by zero'
                                if sub_ed7832aa <= 0:
                                    _1594 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[_1594 + idx + 68] = mem[_1531 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1594 + 68] = mem[_1594 + 74 len 26]
                                    revert with memory
                                      from mem[64]
                                       len _1594 + -mem[64] + 100
                                require sub_ed7832aa
                                if not stakeBalanceOf[stor5[idx]] * sub_d2dea48b / sub_ed7832aa:
                                    if stor2[stor5[idx]].field_0 < stor2[stor5[idx]].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = user[idx]
                                    mem[32] = 2
                                else:
                                    require stakeBalanceOf[stor5[idx]] * sub_d2dea48b / sub_ed7832aa
                                    if (block.number * stakeBalanceOf[stor5[idx]] * sub_d2dea48b / sub_ed7832aa) - (lastRewardBlock * stakeBalanceOf[stor5[idx]] * sub_d2dea48b / sub_ed7832aa) / stakeBalanceOf[stor5[idx]] * sub_d2dea48b / sub_ed7832aa != block.number - lastRewardBlock:
                                        revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if stor2[stor5[idx]].field_0 + (block.number * stakeBalanceOf[stor5[idx]] * sub_d2dea48b / sub_ed7832aa) - (lastRewardBlock * stakeBalanceOf[stor5[idx]] * sub_d2dea48b / sub_ed7832aa) < stor2[stor5[idx]].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = user[idx]
                                    mem[32] = 2
                                    stor2[stor5[idx]].field_0 = stor2[stor5[idx]].field_0 + (block.number * stakeBalanceOf[stor5[idx]] * sub_d2dea48b / sub_ed7832aa) - (lastRewardBlock * stakeBalanceOf[stor5[idx]] * sub_d2dea48b / sub_ed7832aa)
                        idx = idx + 1
                        continue 
                    lastRewardBlock = block.number
                    if endBlock <= lastRewardBlock:
                        revert with 0, 'Staking pool ended'
                    if arg1 < sub_c93d14e3:
                        revert with 0, 'Cannot stake less than minimum'
                    if stakeBalanceOf[address(msg.sender)] + arg1 < stakeBalanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    stakeBalanceOf[address(msg.sender)] += arg1
                    if sub_ed7832aa + arg1 < sub_ed7832aa:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_ed7832aa += arg1
                    mem[0] = msg.sender
                    mem[32] = 3
                    if stor3[address(msg.sender)] > 0:
                        _1591 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = arg1
                        _1592 = mem[64]
                        mem[mem[64]] = 100
                        mem[mem[64] + 32 len 4] = unknown_0x23b872dd(?????)
                        mem[64] = mem[64] + 196
                        mem[_1591 + 132] = 32
                        mem[_1591 + 164] = 'SafeERC20: low-level call failed'
                        if ext_code.hash(stor16) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(stor16):
                            revert with 0, 'Address: call to non-contract'
                        _1656 = mem[_1592]
                        mem[_1591 + 196 len floor32(mem[_1592])] = mem[_1592 + 32 len floor32(mem[_1592])]
                        mem[_1591 + floor32(mem[_1592]) + -(mem[_1592] % 32) + 228 len mem[_1592] % 32] = mem[_1592 + floor32(mem[_1592]) + -(mem[_1592] % 32) + 64 len mem[_1592] % 32]
                        call stor16 with:
                             gas gas_remaining wei
                            args mem[_1591 + 200 len _1656 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96] > 0:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96] > 0:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_1591 + 306 len 22]
                        else:
                            mem[_1591 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[_1591 + 228]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_1591 + ceil32(return_data.size) + 307 len 22]
                    else:
                        user.length++
                        user[user.length] = msg.sender
                        stor3[address(msg.sender)] = user.length
                        if block.number + stor10 < block.number:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[0] = msg.sender
                        mem[32] = 4
                        sub_44153db4[address(msg.sender)] = block.number + stor10
                        _1619 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = arg1
                        _1620 = mem[64]
                        mem[mem[64]] = 100
                        mem[mem[64] + 32 len 4] = unknown_0x23b872dd(?????)
                        mem[64] = mem[64] + 196
                        mem[_1619 + 132] = 32
                        mem[_1619 + 164] = 'SafeERC20: low-level call failed'
                        if ext_code.hash(stor16) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(stor16):
                            revert with 0, 'Address: call to non-contract'
                        _1692 = mem[_1620]
                        mem[_1619 + 196 len floor32(mem[_1620])] = mem[_1620 + 32 len floor32(mem[_1620])]
                        mem[_1619 + floor32(mem[_1620]) + -(mem[_1620] % 32) + 228 len mem[_1620] % 32] = mem[_1620 + -(mem[_1620] % 32) + floor32(mem[_1620]) + 64 len mem[_1620] % 32]
                        call stor16.mem[_1619 + 196 len 4] with:
                             gas gas_remaining wei
                            args mem[_1619 + 200 len _1692 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96] > 0:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96] > 0:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_1619 + 306 len 22]
                        else:
                            mem[_1619 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[_1619 + 228]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_1619 + ceil32(return_data.size) + 307 len 22]
    else:
        if endBlock <= startBlock:
            if endBlock <= lastRewardBlock:
                revert with 0, 'Staking pool ended'
            if arg1 < sub_c93d14e3:
                revert with 0, 'Cannot stake less than minimum'
            if stakeBalanceOf[address(msg.sender)] + arg1 < stakeBalanceOf[address(msg.sender)]:
                revert with 0, 'SafeMath: addition overflow'
            stakeBalanceOf[address(msg.sender)] += arg1
            if sub_ed7832aa + arg1 < sub_ed7832aa:
                revert with 0, 'SafeMath: addition overflow'
            sub_ed7832aa += arg1
            if stor3[address(msg.sender)] <= 0:
                user.length++
                user[user.length] = msg.sender
                stor3[address(msg.sender)] = user.length
                if block.number + stor10 < block.number:
                    revert with 0, 'SafeMath: addition overflow'
                sub_44153db4[address(msg.sender)] = block.number + stor10
            if ext_code.hash(stor16) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(stor16):
                revert with 0, 'Address: call to non-contract'
            mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
            mem[416 len 4] = 0
            call stor16 with:
                 gas gas_remaining wei
                args Mask(224, 32, arg1) << 480, mem[388 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 
                                32,
                                42,
                                0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[402 len 14],
                                0,
                                mem[420 len 4]
            else:
                mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[324]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 403 len 22]
        else:
            if lastRewardBlock >= endBlock:
                if endBlock <= lastRewardBlock:
                    revert with 0, 'Staking pool ended'
                if arg1 < sub_c93d14e3:
                    revert with 0, 'Cannot stake less than minimum'
                if stakeBalanceOf[address(msg.sender)] + arg1 < stakeBalanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                stakeBalanceOf[address(msg.sender)] += arg1
                if sub_ed7832aa + arg1 < sub_ed7832aa:
                    revert with 0, 'SafeMath: addition overflow'
                sub_ed7832aa += arg1
                if stor3[address(msg.sender)] <= 0:
                    user.length++
                    user[user.length] = msg.sender
                    stor3[address(msg.sender)] = user.length
                    if block.number + stor10 < block.number:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_44153db4[address(msg.sender)] = block.number + stor10
                if ext_code.hash(stor16) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(stor16):
                    revert with 0, 'Address: call to non-contract'
                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                mem[416 len 4] = 0
                call stor16 with:
                     gas gas_remaining wei
                    args Mask(224, 32, arg1) << 480, mem[388 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[402 len 14],
                                    0,
                                    mem[420 len 4]
                else:
                    mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[324]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 403 len 22]
            else:
                if sub_ed7832aa <= 0:
                    lastRewardBlock = endBlock
                    if endBlock <= lastRewardBlock:
                        revert with 0, 'Staking pool ended'
                    if arg1 < sub_c93d14e3:
                        revert with 0, 'Cannot stake less than minimum'
                    if stakeBalanceOf[address(msg.sender)] + arg1 < stakeBalanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    stakeBalanceOf[address(msg.sender)] += arg1
                    if sub_ed7832aa + arg1 < sub_ed7832aa:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_ed7832aa += arg1
                    if stor3[address(msg.sender)] > 0:
                        if ext_code.hash(stor16) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(stor16):
                            revert with 0, 'Address: call to non-contract'
                        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                        mem[416 len 4] = 0
                        mem[388 len 0] = 0
                    else:
                        user.length++
                        user[user.length] = msg.sender
                        stor3[address(msg.sender)] = user.length
                        if block.number + stor10 < block.number:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_44153db4[address(msg.sender)] = block.number + stor10
                        if ext_code.hash(stor16) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(stor16):
                            revert with 0, 'Address: call to non-contract'
                        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                        mem[416 len 4] = 0
                    call stor16 with:
                         gas gas_remaining wei
                        args Mask(224, 32, arg1) << 480, mem[388 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 
                                        32,
                                        42,
                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[402 len 14],
                                        0,
                                        mem[420 len 4]
                    else:
                        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[324]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 403 len 22]
                else:
                    mem[64] = 160
                    mem[96] = 30
                    mem[128] = 'SafeMath: subtraction overflow'
                    if lastRewardBlock > endBlock:
                        revert with 0, 'SafeMath: subtraction overflow'
                    idx = 0
                    while idx < user.length:
                        mem[0] = user[idx]
                        mem[32] = 1
                        if stakeBalanceOf[stor5[idx]]:
                            mem[0] = user[idx]
                            mem[32] = 1
                            if not stakeBalanceOf[stor5[idx]]:
                                _1526 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1526] = 26
                                mem[_1526 + 32] = 'SafeMath: division by zero'
                                if sub_ed7832aa <= 0:
                                    _1538 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[_1538 + idx + 68] = mem[_1526 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1538 + 68] = mem[_1538 + 74 len 26]
                                    revert with memory
                                      from mem[64]
                                       len _1538 + -mem[64] + 100
                                require sub_ed7832aa
                                if not 0 / sub_ed7832aa:
                                    if stor2[stor5[idx]].field_0 < stor2[stor5[idx]].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = user[idx]
                                    mem[32] = 2
                                else:
                                    require 0 / sub_ed7832aa
                                    if (endBlock * 0 / sub_ed7832aa) - (lastRewardBlock * 0 / sub_ed7832aa) / 0 / sub_ed7832aa != endBlock - lastRewardBlock:
                                        revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if stor2[stor5[idx]].field_0 + (endBlock * 0 / sub_ed7832aa) - (lastRewardBlock * 0 / sub_ed7832aa) < stor2[stor5[idx]].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = user[idx]
                                    mem[32] = 2
                                    stor2[stor5[idx]].field_0 = stor2[stor5[idx]].field_0 + (endBlock * 0 / sub_ed7832aa) - (lastRewardBlock * 0 / sub_ed7832aa)
                            else:
                                require stakeBalanceOf[stor5[idx]]
                                if stakeBalanceOf[stor5[idx]] * sub_d2dea48b / stakeBalanceOf[stor5[idx]] != sub_d2dea48b:
                                    revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _1537 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1537] = 26
                                mem[_1537 + 32] = 'SafeMath: division by zero'
                                if sub_ed7832aa <= 0:
                                    _1603 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[_1603 + idx + 68] = mem[_1537 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1603 + 68] = mem[_1603 + 74 len 26]
                                    revert with memory
                                      from mem[64]
                                       len _1603 + -mem[64] + 100
                                require sub_ed7832aa
                                if not stakeBalanceOf[stor5[idx]] * sub_d2dea48b / sub_ed7832aa:
                                    if stor2[stor5[idx]].field_0 < stor2[stor5[idx]].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = user[idx]
                                    mem[32] = 2
                                else:
                                    require stakeBalanceOf[stor5[idx]] * sub_d2dea48b / sub_ed7832aa
                                    if (endBlock * stakeBalanceOf[stor5[idx]] * sub_d2dea48b / sub_ed7832aa) - (lastRewardBlock * stakeBalanceOf[stor5[idx]] * sub_d2dea48b / sub_ed7832aa) / stakeBalanceOf[stor5[idx]] * sub_d2dea48b / sub_ed7832aa != endBlock - lastRewardBlock:
                                        revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if stor2[stor5[idx]].field_0 + (endBlock * stakeBalanceOf[stor5[idx]] * sub_d2dea48b / sub_ed7832aa) - (lastRewardBlock * stakeBalanceOf[stor5[idx]] * sub_d2dea48b / sub_ed7832aa) < stor2[stor5[idx]].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = user[idx]
                                    mem[32] = 2
                                    stor2[stor5[idx]].field_0 = stor2[stor5[idx]].field_0 + (endBlock * stakeBalanceOf[stor5[idx]] * sub_d2dea48b / sub_ed7832aa) - (lastRewardBlock * stakeBalanceOf[stor5[idx]] * sub_d2dea48b / sub_ed7832aa)
                        idx = idx + 1
                        continue 
                    lastRewardBlock = endBlock
                    if endBlock <= lastRewardBlock:
                        revert with 0, 'Staking pool ended'
                    if arg1 < sub_c93d14e3:
                        revert with 0, 'Cannot stake less than minimum'
                    if stakeBalanceOf[address(msg.sender)] + arg1 < stakeBalanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    stakeBalanceOf[address(msg.sender)] += arg1
                    if sub_ed7832aa + arg1 < sub_ed7832aa:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_ed7832aa += arg1
                    mem[0] = msg.sender
                    mem[32] = 3
                    if stor3[address(msg.sender)] > 0:
                        _1600 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = arg1
                        _1601 = mem[64]
                        mem[mem[64]] = 100
                        mem[mem[64] + 32 len 4] = unknown_0x23b872dd(?????)
                        mem[64] = mem[64] + 196
                        mem[_1600 + 132] = 32
                        mem[_1600 + 164] = 'SafeERC20: low-level call failed'
                        if ext_code.hash(stor16) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(stor16):
                            revert with 0, 'Address: call to non-contract'
                        _1661 = mem[_1601]
                        mem[_1600 + 196 len floor32(mem[_1601])] = mem[_1601 + 32 len floor32(mem[_1601])]
                        mem[_1600 + floor32(mem[_1601]) + -(mem[_1601] % 32) + 228 len mem[_1601] % 32] = mem[_1601 + -(mem[_1601] % 32) + floor32(mem[_1601]) + 64 len mem[_1601] % 32]
                        call stor16.mem[_1600 + 196 len 4] with:
                             gas gas_remaining wei
                            args mem[_1600 + 200 len _1661 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96] > 0:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96] > 0:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_1600 + 306 len 22]
                        else:
                            mem[_1600 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[_1600 + 228]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_1600 + ceil32(return_data.size) + 307 len 22]
                    else:
                        user.length++
                        user[user.length] = msg.sender
                        stor3[address(msg.sender)] = user.length
                        if block.number + stor10 < block.number:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[0] = msg.sender
                        mem[32] = 4
                        sub_44153db4[address(msg.sender)] = block.number + stor10
                        _1624 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = arg1
                        _1625 = mem[64]
                        mem[mem[64]] = 100
                        mem[mem[64] + 32 len 4] = unknown_0x23b872dd(?????)
                        mem[64] = mem[64] + 196
                        mem[_1624 + 132] = 32
                        mem[_1624 + 164] = 'SafeERC20: low-level call failed'
                        if ext_code.hash(stor16) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(stor16):
                            revert with 0, 'Address: call to non-contract'
                        _1699 = mem[_1625]
                        mem[_1624 + 196 len floor32(mem[_1625])] = mem[_1625 + 32 len floor32(mem[_1625])]
                        mem[_1624 + floor32(mem[_1625]) + -(mem[_1625] % 32) + 228 len mem[_1625] % 32] = mem[_1625 + floor32(mem[_1625]) + -(mem[_1625] % 32) + 64 len mem[_1625] % 32]
                        call stor16 with:
                             gas gas_remaining wei
                            args mem[_1624 + 200 len _1699 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96] > 0:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96] > 0:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_1624 + 306 len 22]
                        else:
                            mem[_1624 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[_1624 + 228]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_1624 + ceil32(return_data.size) + 307 len 22]
    emit Stake(arg1, msg.sender);
}



}

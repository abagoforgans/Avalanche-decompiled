contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint256 stakeBalanceOf;
mapping of uint256 stor2;
mapping of uint256 stor3;
mapping of uint256 sub_44153db4;
array of address user;
uint256 startBlock;
uint256 sub_c93d14e3;
uint256 endBlock;
uint256 sub_40ace9e9;
uint256 sub_790f40d0;
uint256 stor11;
uint256 stor12;
address sub_f3baa5bbAddress;
address sub_7d61007cAddress;
uint256 sub_ed7832aa;
uint256 lastRewardBlock;
address stor17;
address stor18;

function endBlock() payable {
    return endBlock
}

function sub_40ace9e9(?) payable {
    return sub_40ace9e9
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

function sub_790f40d0(?) payable {
    return sub_790f40d0
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

function sub_c93d14e3(?) payable {
    return sub_c93d14e3
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
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function ownerwithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if ext_code.hash(stor17) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(stor17):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg1) >> 32
    call stor17 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, arg1
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0x6d5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                            0x6d5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    emit Withdraw(arg1, msg.sender);
}

function rewardBalanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    if endBlock > lastRewardBlock:
        if block.number <= startBlock:
            return stor2[address(arg1)]
        if lastRewardBlock >= block.number:
            return stor2[address(arg1)]
        if endBlock <= lastRewardBlock:
            return stor2[address(arg1)]
        if startBlock + stor11 < startBlock:
            revert with 0, 'SafeMath: addition overflow'
        if block.number <= startBlock + stor11:
            if lastRewardBlock > block.number:
                revert with 0, 'SafeMath: subtraction overflow'
            if not stakeBalanceOf[address(arg1)]:
                if stor2[address(arg1)] < stor2[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                return stor2[address(arg1)]
            require stakeBalanceOf[address(arg1)]
            if stakeBalanceOf[address(arg1)] * sub_40ace9e9 / stakeBalanceOf[address(arg1)] != sub_40ace9e9:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if not stakeBalanceOf[address(arg1)] * sub_40ace9e9 / 10^18:
                if stor2[address(arg1)] < stor2[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                return stor2[address(arg1)]
            require stakeBalanceOf[address(arg1)] * sub_40ace9e9 / 10^18
            if (block.number * stakeBalanceOf[address(arg1)] * sub_40ace9e9 / 10^18) - (lastRewardBlock * stakeBalanceOf[address(arg1)] * sub_40ace9e9 / 10^18) / stakeBalanceOf[address(arg1)] * sub_40ace9e9 / 10^18 != block.number - lastRewardBlock:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if stor2[address(arg1)] + (block.number * stakeBalanceOf[address(arg1)] * sub_40ace9e9 / 10^18) - (lastRewardBlock * stakeBalanceOf[address(arg1)] * sub_40ace9e9 / 10^18) < stor2[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            return (stor2[address(arg1)] + (block.number * stakeBalanceOf[address(arg1)] * sub_40ace9e9 / 10^18) - (lastRewardBlock * stakeBalanceOf[address(arg1)] * sub_40ace9e9 / 10^18))
        if startBlock + stor11 < startBlock:
            revert with 0, 'SafeMath: addition overflow'
        if lastRewardBlock >= startBlock + stor11:
            if lastRewardBlock > block.number:
                revert with 0, 'SafeMath: subtraction overflow'
            if not stakeBalanceOf[address(arg1)]:
                if stor2[address(arg1)] < stor2[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                return stor2[address(arg1)]
            require stakeBalanceOf[address(arg1)]
            if stakeBalanceOf[address(arg1)] * sub_790f40d0 / stakeBalanceOf[address(arg1)] != sub_790f40d0:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if not stakeBalanceOf[address(arg1)] * sub_790f40d0 / 10^18:
                if stor2[address(arg1)] < stor2[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                return stor2[address(arg1)]
            require stakeBalanceOf[address(arg1)] * sub_790f40d0 / 10^18
            if (block.number * stakeBalanceOf[address(arg1)] * sub_790f40d0 / 10^18) - (lastRewardBlock * stakeBalanceOf[address(arg1)] * sub_790f40d0 / 10^18) / stakeBalanceOf[address(arg1)] * sub_790f40d0 / 10^18 != block.number - lastRewardBlock:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if stor2[address(arg1)] + (block.number * stakeBalanceOf[address(arg1)] * sub_790f40d0 / 10^18) - (lastRewardBlock * stakeBalanceOf[address(arg1)] * sub_790f40d0 / 10^18) < stor2[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            return (stor2[address(arg1)] + (block.number * stakeBalanceOf[address(arg1)] * sub_790f40d0 / 10^18) - (lastRewardBlock * stakeBalanceOf[address(arg1)] * sub_790f40d0 / 10^18))
        if startBlock + stor11 < startBlock:
            revert with 0, 'SafeMath: addition overflow'
        if lastRewardBlock > startBlock + stor11:
            revert with 0, 'SafeMath: subtraction overflow'
        if startBlock + stor11 < startBlock:
            revert with 0, 'SafeMath: addition overflow'
        if startBlock + stor11 > block.number:
            revert with 0, 'SafeMath: subtraction overflow'
        if not stakeBalanceOf[address(arg1)]:
            if not stakeBalanceOf[address(arg1)]:
                if stor2[address(arg1)] < stor2[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                return stor2[address(arg1)]
            require stakeBalanceOf[address(arg1)]
            if stakeBalanceOf[address(arg1)] * sub_790f40d0 / stakeBalanceOf[address(arg1)] != sub_790f40d0:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not stakeBalanceOf[address(arg1)] * sub_790f40d0 / 10^18:
                if stor2[address(arg1)] < stor2[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                return stor2[address(arg1)]
            require stakeBalanceOf[address(arg1)] * sub_790f40d0 / 10^18
            if (block.number * stakeBalanceOf[address(arg1)] * sub_790f40d0 / 10^18) - (startBlock * stakeBalanceOf[address(arg1)] * sub_790f40d0 / 10^18) - (stor11 * stakeBalanceOf[address(arg1)] * sub_790f40d0 / 10^18) / stakeBalanceOf[address(arg1)] * sub_790f40d0 / 10^18 != block.number - startBlock - stor11:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if stor2[address(arg1)] < stor2[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            if stor2[address(arg1)] + (block.number * stakeBalanceOf[address(arg1)] * sub_790f40d0 / 10^18) - (startBlock * stakeBalanceOf[address(arg1)] * sub_790f40d0 / 10^18) - (stor11 * stakeBalanceOf[address(arg1)] * sub_790f40d0 / 10^18) < stor2[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            return (stor2[address(arg1)] + (block.number * stakeBalanceOf[address(arg1)] * sub_790f40d0 / 10^18) - (startBlock * stakeBalanceOf[address(arg1)] * sub_790f40d0 / 10^18) - (stor11 * stakeBalanceOf[address(arg1)] * sub_790f40d0 / 10^18))
        require stakeBalanceOf[address(arg1)]
        if stakeBalanceOf[address(arg1)] * sub_40ace9e9 / stakeBalanceOf[address(arg1)] != sub_40ace9e9:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not stakeBalanceOf[address(arg1)]:
            if not stakeBalanceOf[address(arg1)] * sub_40ace9e9 / 10^18:
                if stor2[address(arg1)] < stor2[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                return stor2[address(arg1)]
            require stakeBalanceOf[address(arg1)] * sub_40ace9e9 / 10^18
            if (startBlock * stakeBalanceOf[address(arg1)] * sub_40ace9e9 / 10^18) + (stor11 * stakeBalanceOf[address(arg1)] * sub_40ace9e9 / 10^18) - (lastRewardBlock * stakeBalanceOf[address(arg1)] * sub_40ace9e9 / 10^18) / stakeBalanceOf[address(arg1)] * sub_40ace9e9 / 10^18 != startBlock + stor11 - lastRewardBlock:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if stor2[address(arg1)] + (startBlock * stakeBalanceOf[address(arg1)] * sub_40ace9e9 / 10^18) + (stor11 * stakeBalanceOf[address(arg1)] * sub_40ace9e9 / 10^18) - (lastRewardBlock * stakeBalanceOf[address(arg1)] * sub_40ace9e9 / 10^18) < stor2[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            return (stor2[address(arg1)] + (startBlock * stakeBalanceOf[address(arg1)] * sub_40ace9e9 / 10^18) + (stor11 * stakeBalanceOf[address(arg1)] * sub_40ace9e9 / 10^18) - (lastRewardBlock * stakeBalanceOf[address(arg1)] * sub_40ace9e9 / 10^18))
        require stakeBalanceOf[address(arg1)]
        if stakeBalanceOf[address(arg1)] * sub_790f40d0 / stakeBalanceOf[address(arg1)] != sub_790f40d0:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if not stakeBalanceOf[address(arg1)] * sub_790f40d0 / 10^18:
            if not stakeBalanceOf[address(arg1)] * sub_40ace9e9 / 10^18:
                if stor2[address(arg1)] < stor2[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                return stor2[address(arg1)]
            require stakeBalanceOf[address(arg1)] * sub_40ace9e9 / 10^18
            if (startBlock * stakeBalanceOf[address(arg1)] * sub_40ace9e9 / 10^18) + (stor11 * stakeBalanceOf[address(arg1)] * sub_40ace9e9 / 10^18) - (lastRewardBlock * stakeBalanceOf[address(arg1)] * sub_40ace9e9 / 10^18) / stakeBalanceOf[address(arg1)] * sub_40ace9e9 / 10^18 != startBlock + stor11 - lastRewardBlock:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if stor2[address(arg1)] + (startBlock * stakeBalanceOf[address(arg1)] * sub_40ace9e9 / 10^18) + (stor11 * stakeBalanceOf[address(arg1)] * sub_40ace9e9 / 10^18) - (lastRewardBlock * stakeBalanceOf[address(arg1)] * sub_40ace9e9 / 10^18) < stor2[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            return (stor2[address(arg1)] + (startBlock * stakeBalanceOf[address(arg1)] * sub_40ace9e9 / 10^18) + (stor11 * stakeBalanceOf[address(arg1)] * sub_40ace9e9 / 10^18) - (lastRewardBlock * stakeBalanceOf[address(arg1)] * sub_40ace9e9 / 10^18))
        require stakeBalanceOf[address(arg1)] * sub_790f40d0 / 10^18
        if (block.number * stakeBalanceOf[address(arg1)] * sub_790f40d0 / 10^18) - (startBlock * stakeBalanceOf[address(arg1)] * sub_790f40d0 / 10^18) - (stor11 * stakeBalanceOf[address(arg1)] * sub_790f40d0 / 10^18) / stakeBalanceOf[address(arg1)] * sub_790f40d0 / 10^18 != block.number - startBlock - stor11:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if not stakeBalanceOf[address(arg1)] * sub_40ace9e9 / 10^18:
            if stor2[address(arg1)] < stor2[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            if stor2[address(arg1)] + (block.number * stakeBalanceOf[address(arg1)] * sub_790f40d0 / 10^18) - (startBlock * stakeBalanceOf[address(arg1)] * sub_790f40d0 / 10^18) - (stor11 * stakeBalanceOf[address(arg1)] * sub_790f40d0 / 10^18) < stor2[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            return (stor2[address(arg1)] + (block.number * stakeBalanceOf[address(arg1)] * sub_790f40d0 / 10^18) - (startBlock * stakeBalanceOf[address(arg1)] * sub_790f40d0 / 10^18) - (stor11 * stakeBalanceOf[address(arg1)] * sub_790f40d0 / 10^18))
        require stakeBalanceOf[address(arg1)] * sub_40ace9e9 / 10^18
        if (startBlock * stakeBalanceOf[address(arg1)] * sub_40ace9e9 / 10^18) + (stor11 * stakeBalanceOf[address(arg1)] * sub_40ace9e9 / 10^18) - (lastRewardBlock * stakeBalanceOf[address(arg1)] * sub_40ace9e9 / 10^18) / stakeBalanceOf[address(arg1)] * sub_40ace9e9 / 10^18 != startBlock + stor11 - lastRewardBlock:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if stor2[address(arg1)] + (startBlock * stakeBalanceOf[address(arg1)] * sub_40ace9e9 / 10^18) + (stor11 * stakeBalanceOf[address(arg1)] * sub_40ace9e9 / 10^18) - (lastRewardBlock * stakeBalanceOf[address(arg1)] * sub_40ace9e9 / 10^18) < stor2[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        if (block.number * stakeBalanceOf[address(arg1)] * sub_790f40d0 / 10^18) - (startBlock * stakeBalanceOf[address(arg1)] * sub_790f40d0 / 10^18) - (stor11 * stakeBalanceOf[address(arg1)] * sub_790f40d0 / 10^18) < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (stor2[address(arg1)] + (startBlock * stakeBalanceOf[address(arg1)] * sub_40ace9e9 / 10^18) + (stor11 * stakeBalanceOf[address(arg1)] * sub_40ace9e9 / 10^18) - (lastRewardBlock * stakeBalanceOf[address(arg1)] * sub_40ace9e9 / 10^18) + (block.number * stakeBalanceOf[address(arg1)] * sub_790f40d0 / 10^18) - (startBlock * stakeBalanceOf[address(arg1)] * sub_790f40d0 / 10^18) - (stor11 * stakeBalanceOf[address(arg1)] * sub_790f40d0 / 10^18))
    if endBlock <= startBlock:
        return stor2[address(arg1)]
    if lastRewardBlock >= endBlock:
        return stor2[address(arg1)]
    if endBlock <= lastRewardBlock:
        return stor2[address(arg1)]
    if startBlock + stor11 < startBlock:
        revert with 0, 'SafeMath: addition overflow'
    if endBlock <= startBlock + stor11:
        if lastRewardBlock > endBlock:
            revert with 0, 'SafeMath: subtraction overflow'
        if not stakeBalanceOf[address(arg1)]:
            if stor2[address(arg1)] < stor2[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            return stor2[address(arg1)]
        require stakeBalanceOf[address(arg1)]
        if stakeBalanceOf[address(arg1)] * sub_40ace9e9 / stakeBalanceOf[address(arg1)] != sub_40ace9e9:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not stakeBalanceOf[address(arg1)] * sub_40ace9e9 / 10^18:
            if stor2[address(arg1)] < stor2[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            return stor2[address(arg1)]
        require stakeBalanceOf[address(arg1)] * sub_40ace9e9 / 10^18
        if (endBlock * stakeBalanceOf[address(arg1)] * sub_40ace9e9 / 10^18) - (lastRewardBlock * stakeBalanceOf[address(arg1)] * sub_40ace9e9 / 10^18) / stakeBalanceOf[address(arg1)] * sub_40ace9e9 / 10^18 != endBlock - lastRewardBlock:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if stor2[address(arg1)] + (endBlock * stakeBalanceOf[address(arg1)] * sub_40ace9e9 / 10^18) - (lastRewardBlock * stakeBalanceOf[address(arg1)] * sub_40ace9e9 / 10^18) < stor2[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        return (stor2[address(arg1)] + (endBlock * stakeBalanceOf[address(arg1)] * sub_40ace9e9 / 10^18) - (lastRewardBlock * stakeBalanceOf[address(arg1)] * sub_40ace9e9 / 10^18))
    if startBlock + stor11 < startBlock:
        revert with 0, 'SafeMath: addition overflow'
    if lastRewardBlock >= startBlock + stor11:
        if lastRewardBlock > endBlock:
            revert with 0, 'SafeMath: subtraction overflow'
        if not stakeBalanceOf[address(arg1)]:
            if stor2[address(arg1)] < stor2[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            return stor2[address(arg1)]
        require stakeBalanceOf[address(arg1)]
        if stakeBalanceOf[address(arg1)] * sub_790f40d0 / stakeBalanceOf[address(arg1)] != sub_790f40d0:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not stakeBalanceOf[address(arg1)] * sub_790f40d0 / 10^18:
            if stor2[address(arg1)] < stor2[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            return stor2[address(arg1)]
        require stakeBalanceOf[address(arg1)] * sub_790f40d0 / 10^18
        if (endBlock * stakeBalanceOf[address(arg1)] * sub_790f40d0 / 10^18) - (lastRewardBlock * stakeBalanceOf[address(arg1)] * sub_790f40d0 / 10^18) / stakeBalanceOf[address(arg1)] * sub_790f40d0 / 10^18 != endBlock - lastRewardBlock:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if stor2[address(arg1)] + (endBlock * stakeBalanceOf[address(arg1)] * sub_790f40d0 / 10^18) - (lastRewardBlock * stakeBalanceOf[address(arg1)] * sub_790f40d0 / 10^18) < stor2[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        return (stor2[address(arg1)] + (endBlock * stakeBalanceOf[address(arg1)] * sub_790f40d0 / 10^18) - (lastRewardBlock * stakeBalanceOf[address(arg1)] * sub_790f40d0 / 10^18))
    if startBlock + stor11 < startBlock:
        revert with 0, 'SafeMath: addition overflow'
    if lastRewardBlock > startBlock + stor11:
        revert with 0, 'SafeMath: subtraction overflow'
    if startBlock + stor11 < startBlock:
        revert with 0, 'SafeMath: addition overflow'
    if startBlock + stor11 > endBlock:
        revert with 0, 'SafeMath: subtraction overflow'
    if not stakeBalanceOf[address(arg1)]:
        if not stakeBalanceOf[address(arg1)]:
            if stor2[address(arg1)] < stor2[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            return stor2[address(arg1)]
        require stakeBalanceOf[address(arg1)]
        if stakeBalanceOf[address(arg1)] * sub_790f40d0 / stakeBalanceOf[address(arg1)] != sub_790f40d0:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if not stakeBalanceOf[address(arg1)] * sub_790f40d0 / 10^18:
            if stor2[address(arg1)] < stor2[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            return stor2[address(arg1)]
        require stakeBalanceOf[address(arg1)] * sub_790f40d0 / 10^18
        if (endBlock * stakeBalanceOf[address(arg1)] * sub_790f40d0 / 10^18) - (startBlock * stakeBalanceOf[address(arg1)] * sub_790f40d0 / 10^18) - (stor11 * stakeBalanceOf[address(arg1)] * sub_790f40d0 / 10^18) / stakeBalanceOf[address(arg1)] * sub_790f40d0 / 10^18 != endBlock - startBlock - stor11:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if stor2[address(arg1)] < stor2[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        if stor2[address(arg1)] + (endBlock * stakeBalanceOf[address(arg1)] * sub_790f40d0 / 10^18) - (startBlock * stakeBalanceOf[address(arg1)] * sub_790f40d0 / 10^18) - (stor11 * stakeBalanceOf[address(arg1)] * sub_790f40d0 / 10^18) < stor2[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        return (stor2[address(arg1)] + (endBlock * stakeBalanceOf[address(arg1)] * sub_790f40d0 / 10^18) - (startBlock * stakeBalanceOf[address(arg1)] * sub_790f40d0 / 10^18) - (stor11 * stakeBalanceOf[address(arg1)] * sub_790f40d0 / 10^18))
    require stakeBalanceOf[address(arg1)]
    if stakeBalanceOf[address(arg1)] * sub_40ace9e9 / stakeBalanceOf[address(arg1)] != sub_40ace9e9:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not stakeBalanceOf[address(arg1)]:
        if not stakeBalanceOf[address(arg1)] * sub_40ace9e9 / 10^18:
            if stor2[address(arg1)] < stor2[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            return stor2[address(arg1)]
        require stakeBalanceOf[address(arg1)] * sub_40ace9e9 / 10^18
        if (startBlock * stakeBalanceOf[address(arg1)] * sub_40ace9e9 / 10^18) + (stor11 * stakeBalanceOf[address(arg1)] * sub_40ace9e9 / 10^18) - (lastRewardBlock * stakeBalanceOf[address(arg1)] * sub_40ace9e9 / 10^18) / stakeBalanceOf[address(arg1)] * sub_40ace9e9 / 10^18 != startBlock + stor11 - lastRewardBlock:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if stor2[address(arg1)] + (startBlock * stakeBalanceOf[address(arg1)] * sub_40ace9e9 / 10^18) + (stor11 * stakeBalanceOf[address(arg1)] * sub_40ace9e9 / 10^18) - (lastRewardBlock * stakeBalanceOf[address(arg1)] * sub_40ace9e9 / 10^18) < stor2[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        return (stor2[address(arg1)] + (startBlock * stakeBalanceOf[address(arg1)] * sub_40ace9e9 / 10^18) + (stor11 * stakeBalanceOf[address(arg1)] * sub_40ace9e9 / 10^18) - (lastRewardBlock * stakeBalanceOf[address(arg1)] * sub_40ace9e9 / 10^18))
    require stakeBalanceOf[address(arg1)]
    if stakeBalanceOf[address(arg1)] * sub_790f40d0 / stakeBalanceOf[address(arg1)] != sub_790f40d0:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
    if not stakeBalanceOf[address(arg1)] * sub_790f40d0 / 10^18:
        if not stakeBalanceOf[address(arg1)] * sub_40ace9e9 / 10^18:
            if stor2[address(arg1)] < stor2[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            return stor2[address(arg1)]
        require stakeBalanceOf[address(arg1)] * sub_40ace9e9 / 10^18
        if (startBlock * stakeBalanceOf[address(arg1)] * sub_40ace9e9 / 10^18) + (stor11 * stakeBalanceOf[address(arg1)] * sub_40ace9e9 / 10^18) - (lastRewardBlock * stakeBalanceOf[address(arg1)] * sub_40ace9e9 / 10^18) / stakeBalanceOf[address(arg1)] * sub_40ace9e9 / 10^18 != startBlock + stor11 - lastRewardBlock:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if stor2[address(arg1)] + (startBlock * stakeBalanceOf[address(arg1)] * sub_40ace9e9 / 10^18) + (stor11 * stakeBalanceOf[address(arg1)] * sub_40ace9e9 / 10^18) - (lastRewardBlock * stakeBalanceOf[address(arg1)] * sub_40ace9e9 / 10^18) < stor2[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        return (stor2[address(arg1)] + (startBlock * stakeBalanceOf[address(arg1)] * sub_40ace9e9 / 10^18) + (stor11 * stakeBalanceOf[address(arg1)] * sub_40ace9e9 / 10^18) - (lastRewardBlock * stakeBalanceOf[address(arg1)] * sub_40ace9e9 / 10^18))
    require stakeBalanceOf[address(arg1)] * sub_790f40d0 / 10^18
    if (endBlock * stakeBalanceOf[address(arg1)] * sub_790f40d0 / 10^18) - (startBlock * stakeBalanceOf[address(arg1)] * sub_790f40d0 / 10^18) - (stor11 * stakeBalanceOf[address(arg1)] * sub_790f40d0 / 10^18) / stakeBalanceOf[address(arg1)] * sub_790f40d0 / 10^18 != endBlock - startBlock - stor11:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
    if not stakeBalanceOf[address(arg1)] * sub_40ace9e9 / 10^18:
        if stor2[address(arg1)] < stor2[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        if stor2[address(arg1)] + (endBlock * stakeBalanceOf[address(arg1)] * sub_790f40d0 / 10^18) - (startBlock * stakeBalanceOf[address(arg1)] * sub_790f40d0 / 10^18) - (stor11 * stakeBalanceOf[address(arg1)] * sub_790f40d0 / 10^18) < stor2[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        return (stor2[address(arg1)] + (endBlock * stakeBalanceOf[address(arg1)] * sub_790f40d0 / 10^18) - (startBlock * stakeBalanceOf[address(arg1)] * sub_790f40d0 / 10^18) - (stor11 * stakeBalanceOf[address(arg1)] * sub_790f40d0 / 10^18))
    require stakeBalanceOf[address(arg1)] * sub_40ace9e9 / 10^18
    if (startBlock * stakeBalanceOf[address(arg1)] * sub_40ace9e9 / 10^18) + (stor11 * stakeBalanceOf[address(arg1)] * sub_40ace9e9 / 10^18) - (lastRewardBlock * stakeBalanceOf[address(arg1)] * sub_40ace9e9 / 10^18) / stakeBalanceOf[address(arg1)] * sub_40ace9e9 / 10^18 != startBlock + stor11 - lastRewardBlock:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
    if stor2[address(arg1)] + (startBlock * stakeBalanceOf[address(arg1)] * sub_40ace9e9 / 10^18) + (stor11 * stakeBalanceOf[address(arg1)] * sub_40ace9e9 / 10^18) - (lastRewardBlock * stakeBalanceOf[address(arg1)] * sub_40ace9e9 / 10^18) < stor2[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if (endBlock * stakeBalanceOf[address(arg1)] * sub_790f40d0 / 10^18) - (startBlock * stakeBalanceOf[address(arg1)] * sub_790f40d0 / 10^18) - (stor11 * stakeBalanceOf[address(arg1)] * sub_790f40d0 / 10^18) < 0:
        revert with 0, 'SafeMath: addition overflow'
    return (stor2[address(arg1)] + (startBlock * stakeBalanceOf[address(arg1)] * sub_40ace9e9 / 10^18) + (stor11 * stakeBalanceOf[address(arg1)] * sub_40ace9e9 / 10^18) - (lastRewardBlock * stakeBalanceOf[address(arg1)] * sub_40ace9e9 / 10^18) + (endBlock * stakeBalanceOf[address(arg1)] * sub_790f40d0 / 10^18) - (startBlock * stakeBalanceOf[address(arg1)] * sub_790f40d0 / 10^18) - (stor11 * stakeBalanceOf[address(arg1)] * sub_790f40d0 / 10^18))
}

function massupdate() payable {
    mem[64] = 96
    if endBlock > lastRewardBlock:
        if block.number > startBlock:
            if lastRewardBlock < block.number:
                if sub_ed7832aa > 0:
                    idx = 0
                    while idx < user.length:
                        mem[0] = user[idx]
                        mem[32] = 1
                        if stakeBalanceOf[stor5[idx]]:
                            if startBlock + stor11 < startBlock:
                                revert with 0, 'SafeMath: addition overflow'
                            if block.number <= startBlock + stor11:
                                _331 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_331] = 30
                                mem[_331 + 32] = 'SafeMath: subtraction overflow'
                                if lastRewardBlock > block.number:
                                    _337 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_337 + idx + 68] = mem[_331 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_337 + 68] = mem[_337 + 70 len 30]
                                    revert with memory
                                      from mem[64]
                                       len _337 + -mem[64] + 100
                                mem[0] = user[idx]
                                mem[32] = 1
                                if not stakeBalanceOf[stor5[idx]]:
                                    _380 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_380] = 26
                                    mem[_380 + 32] = 'SafeMath: division by zero'
                                    if stor2[stor5[idx]] < stor2[stor5[idx]]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = user[idx]
                                    mem[32] = 2
                                else:
                                    require stakeBalanceOf[stor5[idx]]
                                    if stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / stakeBalanceOf[stor5[idx]] != sub_40ace9e9:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _390 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_390] = 26
                                    mem[_390 + 32] = 'SafeMath: division by zero'
                                    if not stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18:
                                        if stor2[stor5[idx]] < stor2[stor5[idx]]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[0] = user[idx]
                                        mem[32] = 2
                                    else:
                                        require stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18
                                        if (block.number * stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18) - (lastRewardBlock * stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18) / stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18 != block.number - lastRewardBlock:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        if stor2[stor5[idx]] + (block.number * stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18) - (lastRewardBlock * stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18) < stor2[stor5[idx]]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[0] = user[idx]
                                        mem[32] = 2
                                        stor2[stor5[idx]] = stor2[stor5[idx]] + (block.number * stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18) - (lastRewardBlock * stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18)
                            else:
                                if startBlock + stor11 < startBlock:
                                    revert with 0, 'SafeMath: addition overflow'
                                if lastRewardBlock >= startBlock + stor11:
                                    _343 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_343] = 30
                                    mem[_343 + 32] = 'SafeMath: subtraction overflow'
                                    if lastRewardBlock > block.number:
                                        _357 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[_357 + idx + 68] = mem[_343 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_357 + 68] = mem[_357 + 70 len 30]
                                        revert with memory
                                          from mem[64]
                                           len _357 + -mem[64] + 100
                                    mem[0] = user[idx]
                                    mem[32] = 1
                                    if not stakeBalanceOf[stor5[idx]]:
                                        _404 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_404] = 26
                                        mem[_404 + 32] = 'SafeMath: division by zero'
                                        if stor2[stor5[idx]] < stor2[stor5[idx]]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[0] = user[idx]
                                        mem[32] = 2
                                    else:
                                        require stakeBalanceOf[stor5[idx]]
                                        if stakeBalanceOf[stor5[idx]] * sub_790f40d0 / stakeBalanceOf[stor5[idx]] != sub_790f40d0:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _410 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_410] = 26
                                        mem[_410 + 32] = 'SafeMath: division by zero'
                                        if not stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18:
                                            if stor2[stor5[idx]] < stor2[stor5[idx]]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            mem[0] = user[idx]
                                            mem[32] = 2
                                        else:
                                            require stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18
                                            if (block.number * stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18) - (lastRewardBlock * stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18) / stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18 != block.number - lastRewardBlock:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            if stor2[stor5[idx]] + (block.number * stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18) - (lastRewardBlock * stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18) < stor2[stor5[idx]]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            mem[0] = user[idx]
                                            mem[32] = 2
                                            stor2[stor5[idx]] = stor2[stor5[idx]] + (block.number * stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18) - (lastRewardBlock * stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18)
                                else:
                                    if startBlock + stor11 < startBlock:
                                        revert with 0, 'SafeMath: addition overflow'
                                    _365 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_365] = 30
                                    mem[_365 + 32] = 'SafeMath: subtraction overflow'
                                    if lastRewardBlock > startBlock + stor11:
                                        _375 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[_375 + idx + 68] = mem[_365 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_375 + 68] = mem[_375 + 70 len 30]
                                        revert with memory
                                          from mem[64]
                                           len _375 + -mem[64] + 100
                                    if startBlock + stor11 < startBlock:
                                        revert with 0, 'SafeMath: addition overflow'
                                    _409 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_409] = 30
                                    mem[_409 + 32] = 'SafeMath: subtraction overflow'
                                    if startBlock + stor11 > block.number:
                                        _413 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[_413 + idx + 68] = mem[_409 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_413 + 68] = mem[_413 + 70 len 30]
                                        revert with memory
                                          from mem[64]
                                           len _413 + -mem[64] + 100
                                    mem[0] = user[idx]
                                    mem[32] = 1
                                    if not stakeBalanceOf[stor5[idx]]:
                                        _457 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_457] = 26
                                        mem[_457 + 32] = 'SafeMath: division by zero'
                                        mem[0] = user[idx]
                                        mem[32] = 1
                                        if not stakeBalanceOf[stor5[idx]]:
                                            _501 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_501] = 26
                                            mem[_501 + 32] = 'SafeMath: division by zero'
                                            if stor2[stor5[idx]] < stor2[stor5[idx]]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            mem[0] = user[idx]
                                            mem[32] = 2
                                        else:
                                            require stakeBalanceOf[stor5[idx]]
                                            if stakeBalanceOf[stor5[idx]] * sub_790f40d0 / stakeBalanceOf[stor5[idx]] != sub_790f40d0:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _508 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_508] = 26
                                            mem[_508 + 32] = 'SafeMath: division by zero'
                                            if not stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18:
                                                if stor2[stor5[idx]] < stor2[stor5[idx]]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                mem[0] = user[idx]
                                                mem[32] = 2
                                            else:
                                                require stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18
                                                if (block.number * stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18) - (startBlock * stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18) - (stor11 * stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18) / stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18 != block.number - startBlock - stor11:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                if stor2[stor5[idx]] < stor2[stor5[idx]]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if stor2[stor5[idx]] + (block.number * stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18) - (startBlock * stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18) - (stor11 * stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18) < stor2[stor5[idx]]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                mem[0] = user[idx]
                                                mem[32] = 2
                                                stor2[stor5[idx]] = stor2[stor5[idx]] + (block.number * stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18) - (startBlock * stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18) - (stor11 * stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18)
                                    else:
                                        require stakeBalanceOf[stor5[idx]]
                                        if stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / stakeBalanceOf[stor5[idx]] != sub_40ace9e9:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _477 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_477] = 26
                                        mem[_477 + 32] = 'SafeMath: division by zero'
                                        mem[0] = user[idx]
                                        mem[32] = 1
                                        if not stakeBalanceOf[stor5[idx]]:
                                            _507 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_507] = 26
                                            mem[_507 + 32] = 'SafeMath: division by zero'
                                            if not stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18:
                                                if stor2[stor5[idx]] < stor2[stor5[idx]]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                mem[0] = user[idx]
                                                mem[32] = 2
                                            else:
                                                require stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18
                                                if (startBlock * stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18) + (stor11 * stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18) - (lastRewardBlock * stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18) / stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18 != startBlock + stor11 - lastRewardBlock:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                if stor2[stor5[idx]] + (startBlock * stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18) + (stor11 * stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18) - (lastRewardBlock * stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18) < stor2[stor5[idx]]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                mem[0] = user[idx]
                                                mem[32] = 2
                                                stor2[stor5[idx]] = stor2[stor5[idx]] + (startBlock * stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18) + (stor11 * stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18) - (lastRewardBlock * stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18)
                                        else:
                                            require stakeBalanceOf[stor5[idx]]
                                            if stakeBalanceOf[stor5[idx]] * sub_790f40d0 / stakeBalanceOf[stor5[idx]] != sub_790f40d0:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _511 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_511] = 26
                                            mem[_511 + 32] = 'SafeMath: division by zero'
                                            if not stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18:
                                                if not stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18:
                                                    if stor2[stor5[idx]] < stor2[stor5[idx]]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    mem[0] = user[idx]
                                                    mem[32] = 2
                                                else:
                                                    require stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18
                                                    if (startBlock * stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18) + (stor11 * stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18) - (lastRewardBlock * stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18) / stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18 != startBlock + stor11 - lastRewardBlock:
                                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    if stor2[stor5[idx]] + (startBlock * stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18) + (stor11 * stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18) - (lastRewardBlock * stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18) < stor2[stor5[idx]]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    mem[0] = user[idx]
                                                    mem[32] = 2
                                                    stor2[stor5[idx]] = stor2[stor5[idx]] + (startBlock * stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18) + (stor11 * stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18) - (lastRewardBlock * stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18)
                                            else:
                                                require stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18
                                                if (block.number * stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18) - (startBlock * stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18) - (stor11 * stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18) / stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18 != block.number - startBlock - stor11:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                if not stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18:
                                                    if stor2[stor5[idx]] < stor2[stor5[idx]]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if stor2[stor5[idx]] + (block.number * stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18) - (startBlock * stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18) - (stor11 * stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18) < stor2[stor5[idx]]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    mem[0] = user[idx]
                                                    mem[32] = 2
                                                    stor2[stor5[idx]] = stor2[stor5[idx]] + (block.number * stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18) - (startBlock * stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18) - (stor11 * stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18)
                                                else:
                                                    require stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18
                                                    if (startBlock * stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18) + (stor11 * stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18) - (lastRewardBlock * stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18) / stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18 != startBlock + stor11 - lastRewardBlock:
                                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    if stor2[stor5[idx]] + (startBlock * stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18) + (stor11 * stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18) - (lastRewardBlock * stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18) < stor2[stor5[idx]]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if (block.number * stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18) - (startBlock * stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18) - (stor11 * stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18) < 0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    mem[0] = user[idx]
                                                    mem[32] = 2
                                                    stor2[stor5[idx]] = stor2[stor5[idx]] + (startBlock * stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18) + (stor11 * stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18) - (lastRewardBlock * stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18) + (block.number * stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18) - (startBlock * stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18) - (stor11 * stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18)
                        idx = idx + 1
                        continue 
                lastRewardBlock = block.number
    else:
        if endBlock > startBlock:
            if lastRewardBlock < endBlock:
                if sub_ed7832aa > 0:
                    idx = 0
                    while idx < user.length:
                        mem[0] = user[idx]
                        mem[32] = 1
                        if stakeBalanceOf[stor5[idx]]:
                            if startBlock + stor11 < startBlock:
                                revert with 0, 'SafeMath: addition overflow'
                            if endBlock <= startBlock + stor11:
                                _332 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_332] = 30
                                mem[_332 + 32] = 'SafeMath: subtraction overflow'
                                if lastRewardBlock > endBlock:
                                    _340 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_340 + idx + 68] = mem[_332 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_340 + 68] = mem[_340 + 70 len 30]
                                    revert with memory
                                      from mem[64]
                                       len _340 + -mem[64] + 100
                                mem[0] = user[idx]
                                mem[32] = 1
                                if not stakeBalanceOf[stor5[idx]]:
                                    _386 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_386] = 26
                                    mem[_386 + 32] = 'SafeMath: division by zero'
                                    if stor2[stor5[idx]] < stor2[stor5[idx]]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = user[idx]
                                    mem[32] = 2
                                else:
                                    require stakeBalanceOf[stor5[idx]]
                                    if stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / stakeBalanceOf[stor5[idx]] != sub_40ace9e9:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _392 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_392] = 26
                                    mem[_392 + 32] = 'SafeMath: division by zero'
                                    if not stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18:
                                        if stor2[stor5[idx]] < stor2[stor5[idx]]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[0] = user[idx]
                                        mem[32] = 2
                                    else:
                                        require stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18
                                        if (endBlock * stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18) - (lastRewardBlock * stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18) / stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18 != endBlock - lastRewardBlock:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        if stor2[stor5[idx]] + (endBlock * stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18) - (lastRewardBlock * stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18) < stor2[stor5[idx]]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[0] = user[idx]
                                        mem[32] = 2
                                        stor2[stor5[idx]] = stor2[stor5[idx]] + (endBlock * stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18) - (lastRewardBlock * stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18)
                            else:
                                if startBlock + stor11 < startBlock:
                                    revert with 0, 'SafeMath: addition overflow'
                                if lastRewardBlock >= startBlock + stor11:
                                    _346 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_346] = 30
                                    mem[_346 + 32] = 'SafeMath: subtraction overflow'
                                    if lastRewardBlock > endBlock:
                                        _361 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[_361 + idx + 68] = mem[_346 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_361 + 68] = mem[_361 + 70 len 30]
                                        revert with memory
                                          from mem[64]
                                           len _361 + -mem[64] + 100
                                    mem[0] = user[idx]
                                    mem[32] = 1
                                    if not stakeBalanceOf[stor5[idx]]:
                                        _408 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_408] = 26
                                        mem[_408 + 32] = 'SafeMath: division by zero'
                                        if stor2[stor5[idx]] < stor2[stor5[idx]]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[0] = user[idx]
                                        mem[32] = 2
                                    else:
                                        require stakeBalanceOf[stor5[idx]]
                                        if stakeBalanceOf[stor5[idx]] * sub_790f40d0 / stakeBalanceOf[stor5[idx]] != sub_790f40d0:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _412 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_412] = 26
                                        mem[_412 + 32] = 'SafeMath: division by zero'
                                        if not stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18:
                                            if stor2[stor5[idx]] < stor2[stor5[idx]]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            mem[0] = user[idx]
                                            mem[32] = 2
                                        else:
                                            require stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18
                                            if (endBlock * stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18) - (lastRewardBlock * stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18) / stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18 != endBlock - lastRewardBlock:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            if stor2[stor5[idx]] + (endBlock * stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18) - (lastRewardBlock * stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18) < stor2[stor5[idx]]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            mem[0] = user[idx]
                                            mem[32] = 2
                                            stor2[stor5[idx]] = stor2[stor5[idx]] + (endBlock * stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18) - (lastRewardBlock * stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18)
                                else:
                                    if startBlock + stor11 < startBlock:
                                        revert with 0, 'SafeMath: addition overflow'
                                    _366 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_366] = 30
                                    mem[_366 + 32] = 'SafeMath: subtraction overflow'
                                    if lastRewardBlock > startBlock + stor11:
                                        _381 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[_381 + idx + 68] = mem[_366 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_381 + 68] = mem[_381 + 70 len 30]
                                        revert with memory
                                          from mem[64]
                                           len _381 + -mem[64] + 100
                                    if startBlock + stor11 < startBlock:
                                        revert with 0, 'SafeMath: addition overflow'
                                    _411 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_411] = 30
                                    mem[_411 + 32] = 'SafeMath: subtraction overflow'
                                    if startBlock + stor11 > endBlock:
                                        _416 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[_416 + idx + 68] = mem[_411 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_416 + 68] = mem[_416 + 70 len 30]
                                        revert with memory
                                          from mem[64]
                                           len _416 + -mem[64] + 100
                                    mem[0] = user[idx]
                                    mem[32] = 1
                                    if not stakeBalanceOf[stor5[idx]]:
                                        _465 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_465] = 26
                                        mem[_465 + 32] = 'SafeMath: division by zero'
                                        mem[0] = user[idx]
                                        mem[32] = 1
                                        if not stakeBalanceOf[stor5[idx]]:
                                            _502 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_502] = 26
                                            mem[_502 + 32] = 'SafeMath: division by zero'
                                            if stor2[stor5[idx]] < stor2[stor5[idx]]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            mem[0] = user[idx]
                                            mem[32] = 2
                                        else:
                                            require stakeBalanceOf[stor5[idx]]
                                            if stakeBalanceOf[stor5[idx]] * sub_790f40d0 / stakeBalanceOf[stor5[idx]] != sub_790f40d0:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _510 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_510] = 26
                                            mem[_510 + 32] = 'SafeMath: division by zero'
                                            if not stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18:
                                                if stor2[stor5[idx]] < stor2[stor5[idx]]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                mem[0] = user[idx]
                                                mem[32] = 2
                                            else:
                                                require stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18
                                                if (endBlock * stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18) - (startBlock * stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18) - (stor11 * stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18) / stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18 != endBlock - startBlock - stor11:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                if stor2[stor5[idx]] < stor2[stor5[idx]]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if stor2[stor5[idx]] + (endBlock * stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18) - (startBlock * stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18) - (stor11 * stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18) < stor2[stor5[idx]]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                mem[0] = user[idx]
                                                mem[32] = 2
                                                stor2[stor5[idx]] = stor2[stor5[idx]] + (endBlock * stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18) - (startBlock * stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18) - (stor11 * stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18)
                                    else:
                                        require stakeBalanceOf[stor5[idx]]
                                        if stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / stakeBalanceOf[stor5[idx]] != sub_40ace9e9:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _481 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_481] = 26
                                        mem[_481 + 32] = 'SafeMath: division by zero'
                                        mem[0] = user[idx]
                                        mem[32] = 1
                                        if not stakeBalanceOf[stor5[idx]]:
                                            _509 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_509] = 26
                                            mem[_509 + 32] = 'SafeMath: division by zero'
                                            if not stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18:
                                                if stor2[stor5[idx]] < stor2[stor5[idx]]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                mem[0] = user[idx]
                                                mem[32] = 2
                                            else:
                                                require stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18
                                                if (startBlock * stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18) + (stor11 * stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18) - (lastRewardBlock * stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18) / stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18 != startBlock + stor11 - lastRewardBlock:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                if stor2[stor5[idx]] + (startBlock * stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18) + (stor11 * stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18) - (lastRewardBlock * stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18) < stor2[stor5[idx]]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                mem[0] = user[idx]
                                                mem[32] = 2
                                                stor2[stor5[idx]] = stor2[stor5[idx]] + (startBlock * stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18) + (stor11 * stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18) - (lastRewardBlock * stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18)
                                        else:
                                            require stakeBalanceOf[stor5[idx]]
                                            if stakeBalanceOf[stor5[idx]] * sub_790f40d0 / stakeBalanceOf[stor5[idx]] != sub_790f40d0:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _512 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_512] = 26
                                            mem[_512 + 32] = 'SafeMath: division by zero'
                                            if not stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18:
                                                if not stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18:
                                                    if stor2[stor5[idx]] < stor2[stor5[idx]]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    mem[0] = user[idx]
                                                    mem[32] = 2
                                                else:
                                                    require stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18
                                                    if (startBlock * stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18) + (stor11 * stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18) - (lastRewardBlock * stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18) / stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18 != startBlock + stor11 - lastRewardBlock:
                                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    if stor2[stor5[idx]] + (startBlock * stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18) + (stor11 * stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18) - (lastRewardBlock * stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18) < stor2[stor5[idx]]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    mem[0] = user[idx]
                                                    mem[32] = 2
                                                    stor2[stor5[idx]] = stor2[stor5[idx]] + (startBlock * stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18) + (stor11 * stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18) - (lastRewardBlock * stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18)
                                            else:
                                                require stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18
                                                if (endBlock * stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18) - (startBlock * stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18) - (stor11 * stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18) / stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18 != endBlock - startBlock - stor11:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                if not stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18:
                                                    if stor2[stor5[idx]] < stor2[stor5[idx]]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if stor2[stor5[idx]] + (endBlock * stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18) - (startBlock * stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18) - (stor11 * stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18) < stor2[stor5[idx]]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    mem[0] = user[idx]
                                                    mem[32] = 2
                                                    stor2[stor5[idx]] = stor2[stor5[idx]] + (endBlock * stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18) - (startBlock * stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18) - (stor11 * stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18)
                                                else:
                                                    require stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18
                                                    if (startBlock * stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18) + (stor11 * stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18) - (lastRewardBlock * stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18) / stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18 != startBlock + stor11 - lastRewardBlock:
                                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    if stor2[stor5[idx]] + (startBlock * stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18) + (stor11 * stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18) - (lastRewardBlock * stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18) < stor2[stor5[idx]]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if (endBlock * stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18) - (startBlock * stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18) - (stor11 * stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18) < 0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    mem[0] = user[idx]
                                                    mem[32] = 2
                                                    stor2[stor5[idx]] = stor2[stor5[idx]] + (startBlock * stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18) + (stor11 * stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18) - (lastRewardBlock * stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18) + (endBlock * stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18) - (startBlock * stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18) - (stor11 * stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18)
                        idx = idx + 1
                        continue 
                lastRewardBlock = endBlock
    return 1
}

function purchase(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if endBlock > lastRewardBlock:
        if block.number <= startBlock:
            if endBlock <= lastRewardBlock:
                revert with 0, 'Purchase ended'
            if arg1 < sub_c93d14e3:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x7743616e6e6f74207075726368617365206c657373207468616e206d696e696d75,
                            mem[197 len 31]
            if stakeBalanceOf[address(msg.sender)] + arg1 < stakeBalanceOf[address(msg.sender)]:
                revert with 0, 'SafeMath: addition overflow'
            stakeBalanceOf[address(msg.sender)] += arg1
            if sub_ed7832aa + arg1 < sub_ed7832aa:
                revert with 0, 'SafeMath: addition overflow'
            sub_ed7832aa += arg1
            if stor3[address(msg.sender)] > 0:
                if block.number + stor12 < block.number:
                    revert with 0, 'SafeMath: addition overflow'
                sub_44153db4[address(msg.sender)] = block.number + stor12
                if ext_code.hash(stor18) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(stor18):
                    revert with 0, 'Address: call to non-contract'
                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                mem[416 len 4] = 0
            else:
                user.length++
                user[user.length] = msg.sender
                stor3[address(msg.sender)] = user.length
                if block.number + stor12 < block.number:
                    revert with 0, 'SafeMath: addition overflow'
                sub_44153db4[address(msg.sender)] = block.number + stor12
                if ext_code.hash(stor18) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(stor18):
                    revert with 0, 'Address: call to non-contract'
                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                mem[416 len 4] = 0
                mem[388 len 0] = 0
            call stor18 with:
                 gas gas_remaining wei
                args Mask(224, 32, arg1) << 480, mem[388 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 
                                32,
                                42,
                                0x6d5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                    0x6d5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 403 len 22]
        else:
            if lastRewardBlock >= block.number:
                if endBlock <= lastRewardBlock:
                    revert with 0, 'Purchase ended'
                if arg1 < sub_c93d14e3:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x7743616e6e6f74207075726368617365206c657373207468616e206d696e696d75,
                                mem[197 len 31]
                if stakeBalanceOf[address(msg.sender)] + arg1 < stakeBalanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                stakeBalanceOf[address(msg.sender)] += arg1
                if sub_ed7832aa + arg1 < sub_ed7832aa:
                    revert with 0, 'SafeMath: addition overflow'
                sub_ed7832aa += arg1
                if stor3[address(msg.sender)] > 0:
                    if block.number + stor12 < block.number:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_44153db4[address(msg.sender)] = block.number + stor12
                    if ext_code.hash(stor18) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(stor18):
                        revert with 0, 'Address: call to non-contract'
                    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                    mem[416 len 4] = 0
                    mem[388 len 0] = 0
                else:
                    user.length++
                    user[user.length] = msg.sender
                    stor3[address(msg.sender)] = user.length
                    if block.number + stor12 < block.number:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_44153db4[address(msg.sender)] = block.number + stor12
                    if ext_code.hash(stor18) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(stor18):
                        revert with 0, 'Address: call to non-contract'
                    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                    mem[416 len 4] = 0
                call stor18 with:
                     gas gas_remaining wei
                    args Mask(224, 32, arg1) << 480, mem[388 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x6d5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                        0x6d5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 403 len 22]
            else:
                if sub_ed7832aa <= 0:
                    lastRewardBlock = block.number
                    if endBlock <= lastRewardBlock:
                        revert with 0, 'Purchase ended'
                    if arg1 < sub_c93d14e3:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x7743616e6e6f74207075726368617365206c657373207468616e206d696e696d75,
                                    mem[197 len 31]
                    if stakeBalanceOf[address(msg.sender)] + arg1 < stakeBalanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    stakeBalanceOf[address(msg.sender)] += arg1
                    if sub_ed7832aa + arg1 < sub_ed7832aa:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_ed7832aa += arg1
                    if stor3[address(msg.sender)] > 0:
                        if block.number + stor12 < block.number:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_44153db4[address(msg.sender)] = block.number + stor12
                        if ext_code.hash(stor18) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(stor18):
                            revert with 0, 'Address: call to non-contract'
                        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                        mem[416 len 4] = 0
                    else:
                        user.length++
                        user[user.length] = msg.sender
                        stor3[address(msg.sender)] = user.length
                        if block.number + stor12 < block.number:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_44153db4[address(msg.sender)] = block.number + stor12
                        if ext_code.hash(stor18) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(stor18):
                            revert with 0, 'Address: call to non-contract'
                        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                        mem[416 len 4] = 0
                        mem[388 len 0] = 0
                    call stor18 with:
                         gas gas_remaining wei
                        args Mask(224, 32, arg1) << 480, mem[388 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6d5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                            0x6d5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 403 len 22]
                else:
                    idx = 0
                    while idx < user.length:
                        mem[0] = user[idx]
                        mem[32] = 1
                        if stakeBalanceOf[stor5[idx]]:
                            if startBlock + stor11 < startBlock:
                                revert with 0, 'SafeMath: addition overflow'
                            if block.number <= startBlock + stor11:
                                _1693 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1693] = 30
                                mem[_1693 + 32] = 'SafeMath: subtraction overflow'
                                if lastRewardBlock > block.number:
                                    _1753 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_1753 + idx + 68] = mem[_1693 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1753 + 68] = mem[_1753 + 70 len 30]
                                    revert with memory
                                      from mem[64]
                                       len _1753 + -mem[64] + 100
                                mem[0] = user[idx]
                                mem[32] = 1
                                if not stakeBalanceOf[stor5[idx]]:
                                    _1874 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1874] = 26
                                    mem[_1874 + 32] = 'SafeMath: division by zero'
                                    if stor2[stor5[idx]] < stor2[stor5[idx]]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = user[idx]
                                    mem[32] = 2
                                else:
                                    require stakeBalanceOf[stor5[idx]]
                                    if stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / stakeBalanceOf[stor5[idx]] != sub_40ace9e9:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _1884 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1884] = 26
                                    mem[_1884 + 32] = 'SafeMath: division by zero'
                                    if not stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18:
                                        if stor2[stor5[idx]] < stor2[stor5[idx]]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[0] = user[idx]
                                        mem[32] = 2
                                    else:
                                        require stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18
                                        if (block.number * stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18) - (lastRewardBlock * stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18) / stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18 != block.number - lastRewardBlock:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        if stor2[stor5[idx]] + (block.number * stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18) - (lastRewardBlock * stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18) < stor2[stor5[idx]]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[0] = user[idx]
                                        mem[32] = 2
                                        stor2[stor5[idx]] = stor2[stor5[idx]] + (block.number * stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18) - (lastRewardBlock * stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18)
                            else:
                                if startBlock + stor11 < startBlock:
                                    revert with 0, 'SafeMath: addition overflow'
                                if lastRewardBlock >= startBlock + stor11:
                                    _1809 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1809] = 30
                                    mem[_1809 + 32] = 'SafeMath: subtraction overflow'
                                    if lastRewardBlock > block.number:
                                        _1833 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[_1833 + idx + 68] = mem[_1809 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_1833 + 68] = mem[_1833 + 70 len 30]
                                        revert with memory
                                          from mem[64]
                                           len _1833 + -mem[64] + 100
                                    mem[0] = user[idx]
                                    mem[32] = 1
                                    if not stakeBalanceOf[stor5[idx]]:
                                        _1898 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1898] = 26
                                        mem[_1898 + 32] = 'SafeMath: division by zero'
                                        if stor2[stor5[idx]] < stor2[stor5[idx]]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[0] = user[idx]
                                        mem[32] = 2
                                    else:
                                        require stakeBalanceOf[stor5[idx]]
                                        if stakeBalanceOf[stor5[idx]] * sub_790f40d0 / stakeBalanceOf[stor5[idx]] != sub_790f40d0:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _1920 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1920] = 26
                                        mem[_1920 + 32] = 'SafeMath: division by zero'
                                        if not stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18:
                                            if stor2[stor5[idx]] < stor2[stor5[idx]]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            mem[0] = user[idx]
                                            mem[32] = 2
                                        else:
                                            require stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18
                                            if (block.number * stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18) - (lastRewardBlock * stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18) / stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18 != block.number - lastRewardBlock:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            if stor2[stor5[idx]] + (block.number * stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18) - (lastRewardBlock * stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18) < stor2[stor5[idx]]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            mem[0] = user[idx]
                                            mem[32] = 2
                                            stor2[stor5[idx]] = stor2[stor5[idx]] + (block.number * stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18) - (lastRewardBlock * stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18)
                                else:
                                    if startBlock + stor11 < startBlock:
                                        revert with 0, 'SafeMath: addition overflow'
                                    _1849 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1849] = 30
                                    mem[_1849 + 32] = 'SafeMath: subtraction overflow'
                                    if lastRewardBlock > startBlock + stor11:
                                        _1869 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[_1869 + idx + 68] = mem[_1849 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_1869 + 68] = mem[_1869 + 70 len 30]
                                        revert with memory
                                          from mem[64]
                                           len _1869 + -mem[64] + 100
                                    if startBlock + stor11 < startBlock:
                                        revert with 0, 'SafeMath: addition overflow'
                                    _1919 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1919] = 30
                                    mem[_1919 + 32] = 'SafeMath: subtraction overflow'
                                    if startBlock + stor11 > block.number:
                                        _1939 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[_1939 + idx + 68] = mem[_1919 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_1939 + 68] = mem[_1939 + 70 len 30]
                                        revert with memory
                                          from mem[64]
                                           len _1939 + -mem[64] + 100
                                    mem[0] = user[idx]
                                    mem[32] = 1
                                    if not stakeBalanceOf[stor5[idx]]:
                                        _2063 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2063] = 26
                                        mem[_2063 + 32] = 'SafeMath: division by zero'
                                        mem[0] = user[idx]
                                        mem[32] = 1
                                        if not stakeBalanceOf[stor5[idx]]:
                                            _2183 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2183] = 26
                                            mem[_2183 + 32] = 'SafeMath: division by zero'
                                            if stor2[stor5[idx]] < stor2[stor5[idx]]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            mem[0] = user[idx]
                                            mem[32] = 2
                                        else:
                                            require stakeBalanceOf[stor5[idx]]
                                            if stakeBalanceOf[stor5[idx]] * sub_790f40d0 / stakeBalanceOf[stor5[idx]] != sub_790f40d0:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _2190 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2190] = 26
                                            mem[_2190 + 32] = 'SafeMath: division by zero'
                                            if not stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18:
                                                if stor2[stor5[idx]] < stor2[stor5[idx]]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                mem[0] = user[idx]
                                                mem[32] = 2
                                            else:
                                                require stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18
                                                if (block.number * stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18) - (startBlock * stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18) - (stor11 * stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18) / stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18 != block.number - startBlock - stor11:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                if stor2[stor5[idx]] < stor2[stor5[idx]]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if stor2[stor5[idx]] + (block.number * stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18) - (startBlock * stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18) - (stor11 * stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18) < stor2[stor5[idx]]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                mem[0] = user[idx]
                                                mem[32] = 2
                                                stor2[stor5[idx]] = stor2[stor5[idx]] + (block.number * stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18) - (startBlock * stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18) - (stor11 * stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18)
                                    else:
                                        require stakeBalanceOf[stor5[idx]]
                                        if stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / stakeBalanceOf[stor5[idx]] != sub_40ace9e9:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _2127 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2127] = 26
                                        mem[_2127 + 32] = 'SafeMath: division by zero'
                                        mem[0] = user[idx]
                                        mem[32] = 1
                                        if not stakeBalanceOf[stor5[idx]]:
                                            _2189 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2189] = 26
                                            mem[_2189 + 32] = 'SafeMath: division by zero'
                                            if not stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18:
                                                if stor2[stor5[idx]] < stor2[stor5[idx]]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                mem[0] = user[idx]
                                                mem[32] = 2
                                            else:
                                                require stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18
                                                if (startBlock * stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18) + (stor11 * stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18) - (lastRewardBlock * stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18) / stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18 != startBlock + stor11 - lastRewardBlock:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                if stor2[stor5[idx]] + (startBlock * stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18) + (stor11 * stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18) - (lastRewardBlock * stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18) < stor2[stor5[idx]]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                mem[0] = user[idx]
                                                mem[32] = 2
                                                stor2[stor5[idx]] = stor2[stor5[idx]] + (startBlock * stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18) + (stor11 * stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18) - (lastRewardBlock * stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18)
                                        else:
                                            require stakeBalanceOf[stor5[idx]]
                                            if stakeBalanceOf[stor5[idx]] * sub_790f40d0 / stakeBalanceOf[stor5[idx]] != sub_790f40d0:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _2193 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2193] = 26
                                            mem[_2193 + 32] = 'SafeMath: division by zero'
                                            if not stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18:
                                                if not stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18:
                                                    if stor2[stor5[idx]] < stor2[stor5[idx]]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    mem[0] = user[idx]
                                                    mem[32] = 2
                                                else:
                                                    require stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18
                                                    if (startBlock * stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18) + (stor11 * stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18) - (lastRewardBlock * stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18) / stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18 != startBlock + stor11 - lastRewardBlock:
                                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    if stor2[stor5[idx]] + (startBlock * stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18) + (stor11 * stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18) - (lastRewardBlock * stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18) < stor2[stor5[idx]]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    mem[0] = user[idx]
                                                    mem[32] = 2
                                                    stor2[stor5[idx]] = stor2[stor5[idx]] + (startBlock * stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18) + (stor11 * stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18) - (lastRewardBlock * stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18)
                                            else:
                                                require stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18
                                                if (block.number * stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18) - (startBlock * stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18) - (stor11 * stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18) / stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18 != block.number - startBlock - stor11:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                if not stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18:
                                                    if stor2[stor5[idx]] < stor2[stor5[idx]]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if stor2[stor5[idx]] + (block.number * stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18) - (startBlock * stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18) - (stor11 * stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18) < stor2[stor5[idx]]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    mem[0] = user[idx]
                                                    mem[32] = 2
                                                    stor2[stor5[idx]] = stor2[stor5[idx]] + (block.number * stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18) - (startBlock * stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18) - (stor11 * stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18)
                                                else:
                                                    require stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18
                                                    if (startBlock * stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18) + (stor11 * stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18) - (lastRewardBlock * stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18) / stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18 != startBlock + stor11 - lastRewardBlock:
                                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    if stor2[stor5[idx]] + (startBlock * stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18) + (stor11 * stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18) - (lastRewardBlock * stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18) < stor2[stor5[idx]]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if (block.number * stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18) - (startBlock * stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18) - (stor11 * stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18) < 0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    mem[0] = user[idx]
                                                    mem[32] = 2
                                                    stor2[stor5[idx]] = stor2[stor5[idx]] + (startBlock * stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18) + (stor11 * stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18) - (lastRewardBlock * stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18) + (block.number * stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18) - (startBlock * stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18) - (stor11 * stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18)
                        idx = idx + 1
                        continue 
                    lastRewardBlock = block.number
                    if endBlock <= lastRewardBlock:
                        revert with 0, 'Purchase ended'
                    if arg1 < sub_c93d14e3:
                        revert with 0, 32, 33, 0x7743616e6e6f74207075726368617365206c657373207468616e206d696e696d75, mem[mem[64] + 101 len 31]
                    if stakeBalanceOf[address(msg.sender)] + arg1 < stakeBalanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    stakeBalanceOf[address(msg.sender)] += arg1
                    if sub_ed7832aa + arg1 < sub_ed7832aa:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_ed7832aa += arg1
                    if stor3[address(msg.sender)] > 0:
                        if block.number + stor12 < block.number:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[0] = msg.sender
                        mem[32] = 4
                        sub_44153db4[address(msg.sender)] = block.number + stor12
                        _1846 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = arg1
                        _1847 = mem[64]
                        mem[mem[64]] = 100
                        mem[mem[64] + 32 len 4] = unknown_0x23b872dd(?????)
                        mem[64] = mem[64] + 196
                        mem[_1846 + 132] = 32
                        mem[_1846 + 164] = 'SafeERC20: low-level call failed'
                        if ext_code.hash(stor18) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(stor18):
                            revert with 0, 'Address: call to non-contract'
                        _1916 = mem[_1847]
                        mem[_1846 + 196 len floor32(mem[_1847])] = mem[_1847 + 32 len floor32(mem[_1847])]
                        mem[_1846 + floor32(mem[_1847]) + -(mem[_1847] % 32) + 228 len mem[_1847] % 32] = mem[_1847 + floor32(mem[_1847]) + -(mem[_1847] % 32) + 64 len mem[_1847] % 32]
                        call stor18 with:
                             gas gas_remaining wei
                            args mem[_1846 + 200 len _1916 - 4]
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
                                                0x6d5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_1846 + 306 len 22]
                        else:
                            mem[_1846 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[_1846 + 228]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6d5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_1846 + ceil32(return_data.size) + 307 len 22]
                    else:
                        user.length++
                        user[user.length] = msg.sender
                        stor3[address(msg.sender)] = user.length
                        if block.number + stor12 < block.number:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[0] = msg.sender
                        mem[32] = 4
                        sub_44153db4[address(msg.sender)] = block.number + stor12
                        _1843 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = arg1
                        _1844 = mem[64]
                        mem[mem[64]] = 100
                        mem[mem[64] + 32 len 4] = unknown_0x23b872dd(?????)
                        mem[64] = mem[64] + 196
                        mem[_1843 + 132] = 32
                        mem[_1843 + 164] = 'SafeERC20: low-level call failed'
                        if ext_code.hash(stor18) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(stor18):
                            revert with 0, 'Address: call to non-contract'
                        _1912 = mem[_1844]
                        mem[_1843 + 196 len floor32(mem[_1844])] = mem[_1844 + 32 len floor32(mem[_1844])]
                        mem[_1843 + floor32(mem[_1844]) + -(mem[_1844] % 32) + 228 len mem[_1844] % 32] = mem[_1844 + -(mem[_1844] % 32) + floor32(mem[_1844]) + 64 len mem[_1844] % 32]
                        call stor18.mem[_1843 + 196 len 4] with:
                             gas gas_remaining wei
                            args mem[_1843 + 200 len _1912 - 4]
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
                                                0x6d5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_1843 + 306 len 22]
                        else:
                            mem[_1843 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[_1843 + 228]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6d5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_1843 + ceil32(return_data.size) + 307 len 22]
    else:
        if endBlock <= startBlock:
            if endBlock <= lastRewardBlock:
                revert with 0, 'Purchase ended'
            if arg1 < sub_c93d14e3:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x7743616e6e6f74207075726368617365206c657373207468616e206d696e696d75,
                            mem[197 len 31]
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
            if block.number + stor12 < block.number:
                revert with 0, 'SafeMath: addition overflow'
            sub_44153db4[address(msg.sender)] = block.number + stor12
            if ext_code.hash(stor18) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(stor18):
                revert with 0, 'Address: call to non-contract'
            mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
            mem[416 len 4] = 0
            call stor18 with:
                 gas gas_remaining wei
                args Mask(224, 32, arg1) << 480, mem[388 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 
                                32,
                                42,
                                0x6d5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                    0x6d5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 403 len 22]
        else:
            if lastRewardBlock >= endBlock:
                if endBlock <= lastRewardBlock:
                    revert with 0, 'Purchase ended'
                if arg1 < sub_c93d14e3:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x7743616e6e6f74207075726368617365206c657373207468616e206d696e696d75,
                                mem[197 len 31]
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
                if block.number + stor12 < block.number:
                    revert with 0, 'SafeMath: addition overflow'
                sub_44153db4[address(msg.sender)] = block.number + stor12
                if ext_code.hash(stor18) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(stor18):
                    revert with 0, 'Address: call to non-contract'
                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                mem[416 len 4] = 0
                call stor18 with:
                     gas gas_remaining wei
                    args Mask(224, 32, arg1) << 480, mem[388 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x6d5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                        0x6d5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 403 len 22]
            else:
                if sub_ed7832aa <= 0:
                    lastRewardBlock = endBlock
                    if endBlock <= lastRewardBlock:
                        revert with 0, 'Purchase ended'
                    if arg1 < sub_c93d14e3:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x7743616e6e6f74207075726368617365206c657373207468616e206d696e696d75,
                                    mem[197 len 31]
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
                    if block.number + stor12 < block.number:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_44153db4[address(msg.sender)] = block.number + stor12
                    if ext_code.hash(stor18) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(stor18):
                        revert with 0, 'Address: call to non-contract'
                    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                    mem[416 len 4] = 0
                    call stor18 with:
                         gas gas_remaining wei
                        args Mask(224, 32, arg1) << 480, mem[388 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6d5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                            0x6d5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 403 len 22]
                else:
                    idx = 0
                    while idx < user.length:
                        mem[0] = user[idx]
                        mem[32] = 1
                        if stakeBalanceOf[stor5[idx]]:
                            if startBlock + stor11 < startBlock:
                                revert with 0, 'SafeMath: addition overflow'
                            if endBlock <= startBlock + stor11:
                                _1744 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1744] = 30
                                mem[_1744 + 32] = 'SafeMath: subtraction overflow'
                                if lastRewardBlock > endBlock:
                                    _1758 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_1758 + idx + 68] = mem[_1744 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1758 + 68] = mem[_1758 + 70 len 30]
                                    revert with memory
                                      from mem[64]
                                       len _1758 + -mem[64] + 100
                                mem[0] = user[idx]
                                mem[32] = 1
                                if not stakeBalanceOf[stor5[idx]]:
                                    _1880 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1880] = 26
                                    mem[_1880 + 32] = 'SafeMath: division by zero'
                                    if stor2[stor5[idx]] < stor2[stor5[idx]]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = user[idx]
                                    mem[32] = 2
                                else:
                                    require stakeBalanceOf[stor5[idx]]
                                    if stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / stakeBalanceOf[stor5[idx]] != sub_40ace9e9:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _1886 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1886] = 26
                                    mem[_1886 + 32] = 'SafeMath: division by zero'
                                    if not stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18:
                                        if stor2[stor5[idx]] < stor2[stor5[idx]]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[0] = user[idx]
                                        mem[32] = 2
                                    else:
                                        require stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18
                                        if (endBlock * stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18) - (lastRewardBlock * stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18) / stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18 != endBlock - lastRewardBlock:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        if stor2[stor5[idx]] + (endBlock * stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18) - (lastRewardBlock * stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18) < stor2[stor5[idx]]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[0] = user[idx]
                                        mem[32] = 2
                                        stor2[stor5[idx]] = stor2[stor5[idx]] + (endBlock * stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18) - (lastRewardBlock * stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18)
                            else:
                                if startBlock + stor11 < startBlock:
                                    revert with 0, 'SafeMath: addition overflow'
                                if lastRewardBlock >= startBlock + stor11:
                                    _1812 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1812] = 30
                                    mem[_1812 + 32] = 'SafeMath: subtraction overflow'
                                    if lastRewardBlock > endBlock:
                                        _1839 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[_1839 + idx + 68] = mem[_1812 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_1839 + 68] = mem[_1839 + 70 len 30]
                                        revert with memory
                                          from mem[64]
                                           len _1839 + -mem[64] + 100
                                    mem[0] = user[idx]
                                    mem[32] = 1
                                    if not stakeBalanceOf[stor5[idx]]:
                                        _1902 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1902] = 26
                                        mem[_1902 + 32] = 'SafeMath: division by zero'
                                        if stor2[stor5[idx]] < stor2[stor5[idx]]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[0] = user[idx]
                                        mem[32] = 2
                                    else:
                                        require stakeBalanceOf[stor5[idx]]
                                        if stakeBalanceOf[stor5[idx]] * sub_790f40d0 / stakeBalanceOf[stor5[idx]] != sub_790f40d0:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _1930 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1930] = 26
                                        mem[_1930 + 32] = 'SafeMath: division by zero'
                                        if not stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18:
                                            if stor2[stor5[idx]] < stor2[stor5[idx]]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            mem[0] = user[idx]
                                            mem[32] = 2
                                        else:
                                            require stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18
                                            if (endBlock * stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18) - (lastRewardBlock * stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18) / stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18 != endBlock - lastRewardBlock:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            if stor2[stor5[idx]] + (endBlock * stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18) - (lastRewardBlock * stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18) < stor2[stor5[idx]]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            mem[0] = user[idx]
                                            mem[32] = 2
                                            stor2[stor5[idx]] = stor2[stor5[idx]] + (endBlock * stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18) - (lastRewardBlock * stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18)
                                else:
                                    if startBlock + stor11 < startBlock:
                                        revert with 0, 'SafeMath: addition overflow'
                                    _1856 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1856] = 30
                                    mem[_1856 + 32] = 'SafeMath: subtraction overflow'
                                    if lastRewardBlock > startBlock + stor11:
                                        _1875 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[_1875 + idx + 68] = mem[_1856 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_1875 + 68] = mem[_1875 + 70 len 30]
                                        revert with memory
                                          from mem[64]
                                           len _1875 + -mem[64] + 100
                                    if startBlock + stor11 < startBlock:
                                        revert with 0, 'SafeMath: addition overflow'
                                    _1929 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1929] = 30
                                    mem[_1929 + 32] = 'SafeMath: subtraction overflow'
                                    if startBlock + stor11 > endBlock:
                                        _1950 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[_1950 + idx + 68] = mem[_1929 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_1950 + 68] = mem[_1950 + 70 len 30]
                                        revert with memory
                                          from mem[64]
                                           len _1950 + -mem[64] + 100
                                    mem[0] = user[idx]
                                    mem[32] = 1
                                    if not stakeBalanceOf[stor5[idx]]:
                                        _2083 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2083] = 26
                                        mem[_2083 + 32] = 'SafeMath: division by zero'
                                        mem[0] = user[idx]
                                        mem[32] = 1
                                        if not stakeBalanceOf[stor5[idx]]:
                                            _2184 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2184] = 26
                                            mem[_2184 + 32] = 'SafeMath: division by zero'
                                            if stor2[stor5[idx]] < stor2[stor5[idx]]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            mem[0] = user[idx]
                                            mem[32] = 2
                                        else:
                                            require stakeBalanceOf[stor5[idx]]
                                            if stakeBalanceOf[stor5[idx]] * sub_790f40d0 / stakeBalanceOf[stor5[idx]] != sub_790f40d0:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _2192 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2192] = 26
                                            mem[_2192 + 32] = 'SafeMath: division by zero'
                                            if not stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18:
                                                if stor2[stor5[idx]] < stor2[stor5[idx]]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                mem[0] = user[idx]
                                                mem[32] = 2
                                            else:
                                                require stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18
                                                if (endBlock * stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18) - (startBlock * stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18) - (stor11 * stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18) / stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18 != endBlock - startBlock - stor11:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                if stor2[stor5[idx]] < stor2[stor5[idx]]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if stor2[stor5[idx]] + (endBlock * stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18) - (startBlock * stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18) - (stor11 * stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18) < stor2[stor5[idx]]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                mem[0] = user[idx]
                                                mem[32] = 2
                                                stor2[stor5[idx]] = stor2[stor5[idx]] + (endBlock * stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18) - (startBlock * stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18) - (stor11 * stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18)
                                    else:
                                        require stakeBalanceOf[stor5[idx]]
                                        if stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / stakeBalanceOf[stor5[idx]] != sub_40ace9e9:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _2147 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2147] = 26
                                        mem[_2147 + 32] = 'SafeMath: division by zero'
                                        mem[0] = user[idx]
                                        mem[32] = 1
                                        if not stakeBalanceOf[stor5[idx]]:
                                            _2191 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2191] = 26
                                            mem[_2191 + 32] = 'SafeMath: division by zero'
                                            if not stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18:
                                                if stor2[stor5[idx]] < stor2[stor5[idx]]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                mem[0] = user[idx]
                                                mem[32] = 2
                                            else:
                                                require stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18
                                                if (startBlock * stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18) + (stor11 * stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18) - (lastRewardBlock * stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18) / stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18 != startBlock + stor11 - lastRewardBlock:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                if stor2[stor5[idx]] + (startBlock * stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18) + (stor11 * stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18) - (lastRewardBlock * stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18) < stor2[stor5[idx]]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                mem[0] = user[idx]
                                                mem[32] = 2
                                                stor2[stor5[idx]] = stor2[stor5[idx]] + (startBlock * stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18) + (stor11 * stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18) - (lastRewardBlock * stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18)
                                        else:
                                            require stakeBalanceOf[stor5[idx]]
                                            if stakeBalanceOf[stor5[idx]] * sub_790f40d0 / stakeBalanceOf[stor5[idx]] != sub_790f40d0:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _2194 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2194] = 26
                                            mem[_2194 + 32] = 'SafeMath: division by zero'
                                            if not stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18:
                                                if not stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18:
                                                    if stor2[stor5[idx]] < stor2[stor5[idx]]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    mem[0] = user[idx]
                                                    mem[32] = 2
                                                else:
                                                    require stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18
                                                    if (startBlock * stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18) + (stor11 * stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18) - (lastRewardBlock * stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18) / stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18 != startBlock + stor11 - lastRewardBlock:
                                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    if stor2[stor5[idx]] + (startBlock * stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18) + (stor11 * stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18) - (lastRewardBlock * stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18) < stor2[stor5[idx]]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    mem[0] = user[idx]
                                                    mem[32] = 2
                                                    stor2[stor5[idx]] = stor2[stor5[idx]] + (startBlock * stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18) + (stor11 * stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18) - (lastRewardBlock * stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18)
                                            else:
                                                require stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18
                                                if (endBlock * stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18) - (startBlock * stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18) - (stor11 * stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18) / stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18 != endBlock - startBlock - stor11:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                if not stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18:
                                                    if stor2[stor5[idx]] < stor2[stor5[idx]]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if stor2[stor5[idx]] + (endBlock * stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18) - (startBlock * stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18) - (stor11 * stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18) < stor2[stor5[idx]]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    mem[0] = user[idx]
                                                    mem[32] = 2
                                                    stor2[stor5[idx]] = stor2[stor5[idx]] + (endBlock * stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18) - (startBlock * stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18) - (stor11 * stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18)
                                                else:
                                                    require stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18
                                                    if (startBlock * stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18) + (stor11 * stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18) - (lastRewardBlock * stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18) / stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18 != startBlock + stor11 - lastRewardBlock:
                                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    if stor2[stor5[idx]] + (startBlock * stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18) + (stor11 * stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18) - (lastRewardBlock * stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18) < stor2[stor5[idx]]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if (endBlock * stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18) - (startBlock * stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18) - (stor11 * stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18) < 0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    mem[0] = user[idx]
                                                    mem[32] = 2
                                                    stor2[stor5[idx]] = stor2[stor5[idx]] + (startBlock * stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18) + (stor11 * stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18) - (lastRewardBlock * stakeBalanceOf[stor5[idx]] * sub_40ace9e9 / 10^18) + (endBlock * stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18) - (startBlock * stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18) - (stor11 * stakeBalanceOf[stor5[idx]] * sub_790f40d0 / 10^18)
                        idx = idx + 1
                        continue 
                    lastRewardBlock = endBlock
                    if endBlock <= lastRewardBlock:
                        revert with 0, 'Purchase ended'
                    if arg1 < sub_c93d14e3:
                        revert with 0, 32, 33, 0x7743616e6e6f74207075726368617365206c657373207468616e206d696e696d75, mem[mem[64] + 101 len 31]
                    if stakeBalanceOf[address(msg.sender)] + arg1 < stakeBalanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    stakeBalanceOf[address(msg.sender)] += arg1
                    if sub_ed7832aa + arg1 < sub_ed7832aa:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_ed7832aa += arg1
                    if stor3[address(msg.sender)] > 0:
                        if block.number + stor12 < block.number:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[0] = msg.sender
                        mem[32] = 4
                        sub_44153db4[address(msg.sender)] = block.number + stor12
                        _1853 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = arg1
                        _1854 = mem[64]
                        mem[mem[64]] = 100
                        mem[mem[64] + 32 len 4] = unknown_0x23b872dd(?????)
                        mem[64] = mem[64] + 196
                        mem[_1853 + 132] = 32
                        mem[_1853 + 164] = 'SafeERC20: low-level call failed'
                        if ext_code.hash(stor18) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(stor18):
                            revert with 0, 'Address: call to non-contract'
                        _1926 = mem[_1854]
                        mem[_1853 + 196 len floor32(mem[_1854])] = mem[_1854 + 32 len floor32(mem[_1854])]
                        mem[_1853 + floor32(mem[_1854]) + -(mem[_1854] % 32) + 228 len mem[_1854] % 32] = mem[_1854 + -(mem[_1854] % 32) + floor32(mem[_1854]) + 64 len mem[_1854] % 32]
                        call stor18.mem[_1853 + 196 len 4] with:
                             gas gas_remaining wei
                            args mem[_1853 + 200 len _1926 - 4]
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
                                                0x6d5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_1853 + 306 len 22]
                        else:
                            mem[_1853 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[_1853 + 228]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6d5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_1853 + ceil32(return_data.size) + 307 len 22]
                    else:
                        user.length++
                        user[user.length] = msg.sender
                        stor3[address(msg.sender)] = user.length
                        if block.number + stor12 < block.number:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[0] = msg.sender
                        mem[32] = 4
                        sub_44153db4[address(msg.sender)] = block.number + stor12
                        _1850 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = arg1
                        _1851 = mem[64]
                        mem[mem[64]] = 100
                        mem[mem[64] + 32 len 4] = unknown_0x23b872dd(?????)
                        mem[64] = mem[64] + 196
                        mem[_1850 + 132] = 32
                        mem[_1850 + 164] = 'SafeERC20: low-level call failed'
                        if ext_code.hash(stor18) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(stor18):
                            revert with 0, 'Address: call to non-contract'
                        _1922 = mem[_1851]
                        mem[_1850 + 196 len floor32(mem[_1851])] = mem[_1851 + 32 len floor32(mem[_1851])]
                        mem[_1850 + floor32(mem[_1851]) + -(mem[_1851] % 32) + 228 len mem[_1851] % 32] = mem[_1851 + -(mem[_1851] % 32) + floor32(mem[_1851]) + 64 len mem[_1851] % 32]
                        call stor18.mem[_1850 + 196 len 4] with:
                             gas gas_remaining wei
                            args mem[_1850 + 200 len _1922 - 4]
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
                                                0x6d5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_1850 + 306 len 22]
                        else:
                            mem[_1850 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[_1850 + 228]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6d5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_1850 + ceil32(return_data.size) + 307 len 22]
    emit Stake(arg1, msg.sender);
}



}

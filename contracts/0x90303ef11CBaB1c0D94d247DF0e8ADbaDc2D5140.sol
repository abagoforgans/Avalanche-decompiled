contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1, uint256 arg2)
#  - emergencyWithdraw(uint256 arg1)
#
uint8 stor0; offset 160
address owner;
address sub_29ecb76aAddress;
uint256 sub_b370deb1;
uint256 paidOut;
uint256 rewardPerBlock;
uint256 sub_93c48387;
uint256 sub_ce9bdc53;
array of struct poolInfo;
mapping of struct userInfo;
uint256 totalAllocPoint;
uint256 startBlock;
uint256 endBlock;
uint8 stor12; offset 160
uint32 stor12;
uint128 stor12; offset 160
address stor12;
array of uint256 stor75276140696391174450305814049576319106646922510300487059720162673006384432777;
array of uint256 stor75276140696391174450305814049576319106646922510300487059720162673006384432778;
array of uint256 stor75276140696391174450305814049576319106646922510300487059720162673006384432779;
array of uint256 stor75276140696391174450305814049576319106646922510300487059720162673006384432780;
array of uint256 stor75276140696391174450305814049576319106646922510300487059720162673006384432781;
array of uint256 stor75276140696391174450305814049576319106646922510300487059720162673006384432782;

function poolLength() payable {
    return poolInfo.length
}

function endBlock() payable {
    return endBlock
}

function poolInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    return poolInfo[arg1].field_0, 
           poolInfo[arg1].field_256,
           poolInfo[arg1].field_512,
           poolInfo[arg1].field_768,
           poolInfo[arg1].field_1024,
           poolInfo[arg1].field_1280,
           poolInfo[arg1].field_1536
}

function totalAllocPoint() payable {
    return totalAllocPoint
}

function sub_29ecb76a(?) payable {
    return sub_29ecb76aAddress
}

function startBlock() payable {
    return startBlock
}

function paidOut() payable {
    return paidOut
}

function paused() payable {
    return bool(stor0)
}

function rewardPerBlock() payable {
    return rewardPerBlock
}

function owner() payable {
    return owner
}

function sub_93c48387(?) payable {
    return sub_93c48387
}

function userInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return userInfo[arg1][arg2].field_0, userInfo[arg1][arg2].field_256
}

function deposited(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return userInfo[arg1][address(arg2)].field_0
}

function sub_b370deb1(?) payable {
    return sub_b370deb1
}

function sub_ce9bdc53(?) payable {
    return sub_ce9bdc53
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
}

function pause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor0:
        revert with 0, 'Pausable: paused'
    stor0 = 1
    emit Paused(msg.sender);
}

function unPause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor0:
        revert with 0, 'Pausable: not paused'
    stor0 = 0
    emit Unpaused(msg.sender);
}

function changeFeeWallet(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'changeFeeWallet: can't be zero address'
    address(stor12.field_0) = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_06b5d42e(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg4 == address(arg4)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint8(stor12.field_160):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'initializeFarm: Already initialized'
    sub_29ecb76aAddress = address(arg1)
    rewardPerBlock = arg2
    startBlock = arg3
    sub_93c48387 = arg3
    endBlock = arg3
    address(stor12.field_0) = address(arg4)
    if not address(arg1):
        Mask(96, 0, stor12.field_160) = Mask(96, 0, bool(address(arg1)))
    else:
        if not endBlock:
            Mask(96, 0, stor12.field_160) = Mask(96, 0, bool(endBlock))
        else:
            Mask(96, 0, stor12.field_160) = Mask(96, 0, bool(arg3))
}

function totalPending() payable {
    if block.number <= startBlock:
        return 0
    if block.number < startBlock:
        if 0 < paidOut:
            revert with 'NH{q', 17
        return -paidOut
    if block.number < endBlock:
        if block.number < sub_93c48387:
            revert with 'NH{q', 17
        if rewardPerBlock and block.number - sub_93c48387 > -1 / rewardPerBlock:
            revert with 'NH{q', 17
        if sub_ce9bdc53 > !((block.number * rewardPerBlock) - (sub_93c48387 * rewardPerBlock)):
            revert with 'NH{q', 17
        if sub_ce9bdc53 + (block.number * rewardPerBlock) - (sub_93c48387 * rewardPerBlock) < paidOut:
            revert with 'NH{q', 17
        return (sub_ce9bdc53 + (block.number * rewardPerBlock) - (sub_93c48387 * rewardPerBlock) - paidOut)
    if endBlock < sub_93c48387:
        revert with 'NH{q', 17
    if rewardPerBlock and endBlock - sub_93c48387 > -1 / rewardPerBlock:
        revert with 'NH{q', 17
    if sub_ce9bdc53 > !((endBlock * rewardPerBlock) - (sub_93c48387 * rewardPerBlock)):
        revert with 'NH{q', 17
    if sub_ce9bdc53 + (endBlock * rewardPerBlock) - (sub_93c48387 * rewardPerBlock) < paidOut:
        revert with 'NH{q', 17
    return (sub_ce9bdc53 + (endBlock * rewardPerBlock) - (sub_93c48387 * rewardPerBlock) - paidOut)
}

function fund(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not uint8(stor12.field_160):
        revert with 0, 'Farm: init the farm first'
    if block.number >= endBlock:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'fund: too late, the farm is closed'
    if not rewardPerBlock:
        revert with 'NH{q', 18
    require ext_code.size(sub_29ecb76aAddress)
    staticcall sub_29ecb76aAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 < arg1 % rewardPerBlock:
        revert with 'NH{q', 17
    require ext_code.size(sub_29ecb76aAddress)
    call sub_29ecb76aAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1 - (arg1 % rewardPerBlock)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(sub_29ecb76aAddress)
    staticcall sub_29ecb76aAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 'NH{q', 17
    if arg1 < arg1 % rewardPerBlock:
        revert with 'NH{q', 17
    if arg1 - (arg1 % rewardPerBlock):
        revert with 0, 'Farm: detected fee on tx'
    if not rewardPerBlock:
        revert with 'NH{q', 18
    if endBlock > !(0 / rewardPerBlock):
        revert with 'NH{q', 17
    endBlock += 0 / rewardPerBlock
    if sub_b370deb1 > !0:
        revert with 'NH{q', 17
}

function sub_4d3db943(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    s = 0
    while idx < poolInfo.length:
        mem[0] = 7
        if poolInfo[idx].field_0 != address(arg1):
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if idx >= poolInfo.length:
            revert with 'NH{q', 50
        mem[0] = 7
        if s > !poolInfo[idx].field_1536:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + poolInfo[idx].field_1536
        continue 
    if sub_29ecb76aAddress == address(arg1):
        if block.number <= endBlock:
            revert with 0, 'Farming is not ended yet.'
        idx = 0
        t = 0
        while idx < poolInfo.length:
            mem[0] = 7
            if t > !poolInfo[idx].field_1536:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            t = t + poolInfo[idx].field_1536
            continue 
        if t * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length * poolInfo.length:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'erc20Withdraw: can't widraw erc20 while there are stakers left'
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < s:
        revert with 'NH{q', 17
    if ext_call.return_data[0] - s:
        require ext_code.size(address(arg1))
        call address(arg1).0xa9059cbb with:
             gas gas_remaining wei
            args address(arg2), ext_call.return_data[0] - s
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function updatePool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= poolInfo.length:
        revert with 'NH{q', 50
    if block.number < endBlock:
        if block.number > poolInfo[arg1].field_512:
            if poolInfo[arg1].field_1536:
                if block.number < poolInfo[arg1].field_512:
                    revert with 'NH{q', 17
                if block.number - poolInfo[arg1].field_512 and rewardPerBlock > -1 / block.number - poolInfo[arg1].field_512:
                    revert with 'NH{q', 17
                if (block.number * rewardPerBlock) - (poolInfo[arg1].field_512 * rewardPerBlock) and poolInfo[arg1].field_256 > -1 / (block.number * rewardPerBlock) - (poolInfo[arg1].field_512 * rewardPerBlock):
                    revert with 'NH{q', 17
                if not totalAllocPoint:
                    revert with 'NH{q', 18
                if (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint and 1000000000000000000 * 10^18 > -1 / (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
                    revert with 'NH{q', 17
                if not poolInfo[arg1].field_1536:
                    revert with 'NH{q', 18
                if poolInfo[arg1].field_768 > !(1000000000000000000 * 10^18 * (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1536):
                    revert with 'NH{q', 17
                poolInfo[arg1].field_768 += 1000000000000000000 * 10^18 * (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1536
            poolInfo[arg1].field_512 = block.number
    else:
        if endBlock > poolInfo[arg1].field_512:
            if poolInfo[arg1].field_1536:
                if endBlock < poolInfo[arg1].field_512:
                    revert with 'NH{q', 17
                if endBlock - poolInfo[arg1].field_512 and rewardPerBlock > -1 / endBlock - poolInfo[arg1].field_512:
                    revert with 'NH{q', 17
                if (endBlock * rewardPerBlock) - (poolInfo[arg1].field_512 * rewardPerBlock) and poolInfo[arg1].field_256 > -1 / (endBlock * rewardPerBlock) - (poolInfo[arg1].field_512 * rewardPerBlock):
                    revert with 'NH{q', 17
                if not totalAllocPoint:
                    revert with 'NH{q', 18
                if (endBlock * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint and 1000000000000000000 * 10^18 > -1 / (endBlock * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
                    revert with 'NH{q', 17
                if not poolInfo[arg1].field_1536:
                    revert with 'NH{q', 18
                if poolInfo[arg1].field_768 > !(1000000000000000000 * 10^18 * (endBlock * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1536):
                    revert with 'NH{q', 17
                poolInfo[arg1].field_768 += 1000000000000000000 * 10^18 * (endBlock * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1536
            poolInfo[arg1].field_512 = endBlock
}

function massUpdatePools() payable {
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 7
        if block.number < endBlock:
            if block.number > poolInfo[idx].field_512:
                if poolInfo[idx].field_1536:
                    if block.number < poolInfo[idx].field_512:
                        revert with 'NH{q', 17
                    if block.number - poolInfo[idx].field_512 and rewardPerBlock > -1 / block.number - poolInfo[idx].field_512:
                        revert with 'NH{q', 17
                    if (block.number * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock) and poolInfo[idx].field_256 > -1 / (block.number * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock):
                        revert with 'NH{q', 17
                    if not totalAllocPoint:
                        revert with 'NH{q', 18
                    if (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint and 1000000000000000000 * 10^18 > -1 / (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                        revert with 'NH{q', 17
                    if not poolInfo[idx].field_1536:
                        revert with 'NH{q', 18
                    if poolInfo[idx].field_768 > !(1000000000000000000 * 10^18 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1536):
                        revert with 'NH{q', 17
                    poolInfo[idx].field_768 += 1000000000000000000 * 10^18 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1536
                poolInfo[idx].field_512 = block.number
        else:
            if endBlock > poolInfo[idx].field_512:
                if poolInfo[idx].field_1536:
                    if endBlock < poolInfo[idx].field_512:
                        revert with 'NH{q', 17
                    if endBlock - poolInfo[idx].field_512 and rewardPerBlock > -1 / endBlock - poolInfo[idx].field_512:
                        revert with 'NH{q', 17
                    if (endBlock * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock) and poolInfo[idx].field_256 > -1 / (endBlock * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock):
                        revert with 'NH{q', 17
                    if not totalAllocPoint:
                        revert with 'NH{q', 18
                    if (endBlock * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint and 1000000000000000000 * 10^18 > -1 / (endBlock * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                        revert with 'NH{q', 17
                    if not poolInfo[idx].field_1536:
                        revert with 'NH{q', 18
                    if poolInfo[idx].field_768 > !(1000000000000000000 * 10^18 * (endBlock * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1536):
                        revert with 'NH{q', 17
                    poolInfo[idx].field_768 += 1000000000000000000 * 10^18 * (endBlock * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1536
                poolInfo[idx].field_512 = endBlock
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function set(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not uint8(stor12.field_160):
        revert with 0, 'Farm: init the farm first'
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 7
        if block.number < endBlock:
            if block.number > poolInfo[idx].field_512:
                if poolInfo[idx].field_1536:
                    if block.number < poolInfo[idx].field_512:
                        revert with 'NH{q', 17
                    if block.number - poolInfo[idx].field_512 and rewardPerBlock > -1 / block.number - poolInfo[idx].field_512:
                        revert with 'NH{q', 17
                    if (block.number * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock) and poolInfo[idx].field_256 > -1 / (block.number * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock):
                        revert with 'NH{q', 17
                    if not totalAllocPoint:
                        revert with 'NH{q', 18
                    if (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint and 1000000000000000000 * 10^18 > -1 / (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                        revert with 'NH{q', 17
                    if not poolInfo[idx].field_1536:
                        revert with 'NH{q', 18
                    if poolInfo[idx].field_768 > !(1000000000000000000 * 10^18 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1536):
                        revert with 'NH{q', 17
                    poolInfo[idx].field_768 += 1000000000000000000 * 10^18 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1536
                poolInfo[idx].field_512 = block.number
        else:
            if endBlock > poolInfo[idx].field_512:
                if poolInfo[idx].field_1536:
                    if endBlock < poolInfo[idx].field_512:
                        revert with 'NH{q', 17
                    if endBlock - poolInfo[idx].field_512 and rewardPerBlock > -1 / endBlock - poolInfo[idx].field_512:
                        revert with 'NH{q', 17
                    if (endBlock * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock) and poolInfo[idx].field_256 > -1 / (endBlock * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock):
                        revert with 'NH{q', 17
                    if not totalAllocPoint:
                        revert with 'NH{q', 18
                    if (endBlock * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint and 1000000000000000000 * 10^18 > -1 / (endBlock * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                        revert with 'NH{q', 17
                    if not poolInfo[idx].field_1536:
                        revert with 'NH{q', 18
                    if poolInfo[idx].field_768 > !(1000000000000000000 * 10^18 * (endBlock * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1536):
                        revert with 'NH{q', 17
                    poolInfo[idx].field_768 += 1000000000000000000 * 10^18 * (endBlock * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1536
                poolInfo[idx].field_512 = endBlock
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if arg1 >= poolInfo.length:
        revert with 'NH{q', 50
    if totalAllocPoint < poolInfo[arg1].field_256:
        revert with 'NH{q', 17
    if totalAllocPoint - poolInfo[arg1].field_256 > !arg2:
        revert with 'NH{q', 17
    totalAllocPoint = totalAllocPoint - poolInfo[arg1].field_256 + arg2
    if arg1 >= poolInfo.length:
        revert with 'NH{q', 50
    poolInfo[arg1].field_256 = arg2
}

function add(uint256 arg1, address arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not uint8(stor12.field_160):
        revert with 0, 'Farm: init the farm first'
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 7
        if block.number < endBlock:
            if block.number > poolInfo[idx].field_512:
                if poolInfo[idx].field_1536:
                    if block.number < poolInfo[idx].field_512:
                        revert with 'NH{q', 17
                    if block.number - poolInfo[idx].field_512 and rewardPerBlock > -1 / block.number - poolInfo[idx].field_512:
                        revert with 'NH{q', 17
                    if (block.number * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock) and poolInfo[idx].field_256 > -1 / (block.number * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock):
                        revert with 'NH{q', 17
                    if not totalAllocPoint:
                        revert with 'NH{q', 18
                    if (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint and 1000000000000000000 * 10^18 > -1 / (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                        revert with 'NH{q', 17
                    if not poolInfo[idx].field_1536:
                        revert with 'NH{q', 18
                    if poolInfo[idx].field_768 > !(1000000000000000000 * 10^18 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1536):
                        revert with 'NH{q', 17
                    poolInfo[idx].field_768 += 1000000000000000000 * 10^18 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1536
                poolInfo[idx].field_512 = block.number
        else:
            if endBlock > poolInfo[idx].field_512:
                if poolInfo[idx].field_1536:
                    if endBlock < poolInfo[idx].field_512:
                        revert with 'NH{q', 17
                    if endBlock - poolInfo[idx].field_512 and rewardPerBlock > -1 / endBlock - poolInfo[idx].field_512:
                        revert with 'NH{q', 17
                    if (endBlock * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock) and poolInfo[idx].field_256 > -1 / (endBlock * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock):
                        revert with 'NH{q', 17
                    if not totalAllocPoint:
                        revert with 'NH{q', 18
                    if (endBlock * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint and 1000000000000000000 * 10^18 > -1 / (endBlock * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                        revert with 'NH{q', 17
                    if not poolInfo[idx].field_1536:
                        revert with 'NH{q', 18
                    if poolInfo[idx].field_768 > !(1000000000000000000 * 10^18 * (endBlock * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1536):
                        revert with 'NH{q', 17
                    poolInfo[idx].field_768 += 1000000000000000000 * 10^18 * (endBlock * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1536
                poolInfo[idx].field_512 = endBlock
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if totalAllocPoint > !arg1:
        revert with 'NH{q', 17
    totalAllocPoint += arg1
    poolInfo.length++
    poolInfo[poolInfo.length].field_0 = arg2
    storA66C[stor7.length] = arg1
    if block.number > startBlock:
        storA66C[stor7.length] = block.number
    else:
        storA66C[stor7.length] = startBlock
    storA66C[stor7.length] = 0
    storA66C[stor7.length] = arg3
    storA66C[stor7.length] = arg4
    storA66C[stor7.length] = 0
}

function pending(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg1 >= poolInfo.length:
        revert with 'NH{q', 50
    if block.number <= poolInfo[arg1].field_512:
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 'NH{q', 17
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18 < userInfo[arg1][address(arg2)].field_256:
            revert with 'NH{q', 17
        return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - userInfo[arg1][address(arg2)].field_256)
    if not poolInfo[arg1].field_1536:
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 'NH{q', 17
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18 < userInfo[arg1][address(arg2)].field_256:
            revert with 'NH{q', 17
        return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - userInfo[arg1][address(arg2)].field_256)
    if block.number < endBlock:
        if block.number < poolInfo[arg1].field_512:
            revert with 'NH{q', 17
        if block.number - poolInfo[arg1].field_512 and rewardPerBlock > -1 / block.number - poolInfo[arg1].field_512:
            revert with 'NH{q', 17
        if (block.number * rewardPerBlock) - (poolInfo[arg1].field_512 * rewardPerBlock) and poolInfo[arg1].field_256 > -1 / (block.number * rewardPerBlock) - (poolInfo[arg1].field_512 * rewardPerBlock):
            revert with 'NH{q', 17
        if not totalAllocPoint:
            revert with 'NH{q', 18
        if (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint and 1000000000000000000 * 10^18 > -1 / (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
            revert with 'NH{q', 17
        if not poolInfo[arg1].field_1536:
            revert with 'NH{q', 18
        if poolInfo[arg1].field_768 > !(1000000000000000000 * 10^18 * (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1536):
            revert with 'NH{q', 17
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (1000000000000000000 * 10^18 * (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1536) > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 'NH{q', 17
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (1000000000000000000 * 10^18 * (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) / 1000000000000000000 * 10^18 < userInfo[arg1][address(arg2)].field_256:
            revert with 'NH{q', 17
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (1000000000000000000 * 10^18 * (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) / 1000000000000000000 * 10^18) - userInfo[arg1][address(arg2)].field_256)
    if endBlock < poolInfo[arg1].field_512:
        revert with 'NH{q', 17
    if endBlock - poolInfo[arg1].field_512 and rewardPerBlock > -1 / endBlock - poolInfo[arg1].field_512:
        revert with 'NH{q', 17
    if (endBlock * rewardPerBlock) - (poolInfo[arg1].field_512 * rewardPerBlock) and poolInfo[arg1].field_256 > -1 / (endBlock * rewardPerBlock) - (poolInfo[arg1].field_512 * rewardPerBlock):
        revert with 'NH{q', 17
    if not totalAllocPoint:
        revert with 'NH{q', 18
    if (endBlock * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint and 1000000000000000000 * 10^18 > -1 / (endBlock * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
        revert with 'NH{q', 17
    if not poolInfo[arg1].field_1536:
        revert with 'NH{q', 18
    if poolInfo[arg1].field_768 > !(1000000000000000000 * 10^18 * (endBlock * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1536):
        revert with 'NH{q', 17
    if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (1000000000000000000 * 10^18 * (endBlock * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1536) > -1 / userInfo[arg1][address(arg2)].field_0:
        revert with 'NH{q', 17
    if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (1000000000000000000 * 10^18 * (endBlock * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) / 1000000000000000000 * 10^18 < userInfo[arg1][address(arg2)].field_256:
        revert with 'NH{q', 17
    return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (1000000000000000000 * 10^18 * (endBlock * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) / 1000000000000000000 * 10^18) - userInfo[arg1][address(arg2)].field_256)
}

function deposit(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not uint8(stor12.field_160):
        revert with 0, 'Farm: init the farm first'
    if stor0:
        revert with 0, 'Pausable: paused'
    if arg1 >= poolInfo.length:
        revert with 'NH{q', 50
    if block.number < endBlock:
        if block.number > poolInfo[arg1].field_512:
            if poolInfo[arg1].field_1536:
                if block.number < poolInfo[arg1].field_512:
                    revert with 'NH{q', 17
                if block.number - poolInfo[arg1].field_512 and rewardPerBlock > -1 / block.number - poolInfo[arg1].field_512:
                    revert with 'NH{q', 17
                if (block.number * rewardPerBlock) - (poolInfo[arg1].field_512 * rewardPerBlock) and poolInfo[arg1].field_256 > -1 / (block.number * rewardPerBlock) - (poolInfo[arg1].field_512 * rewardPerBlock):
                    revert with 'NH{q', 17
                if not totalAllocPoint:
                    revert with 'NH{q', 18
                if (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint and 1000000000000000000 * 10^18 > -1 / (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
                    revert with 'NH{q', 17
                if not poolInfo[arg1].field_1536:
                    revert with 'NH{q', 18
                if poolInfo[arg1].field_768 > !(1000000000000000000 * 10^18 * (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1536):
                    revert with 'NH{q', 17
                poolInfo[arg1].field_768 += 1000000000000000000 * 10^18 * (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1536
            poolInfo[arg1].field_512 = block.number
    else:
        if endBlock > poolInfo[arg1].field_512:
            if poolInfo[arg1].field_1536:
                if endBlock < poolInfo[arg1].field_512:
                    revert with 'NH{q', 17
                if endBlock - poolInfo[arg1].field_512 and rewardPerBlock > -1 / endBlock - poolInfo[arg1].field_512:
                    revert with 'NH{q', 17
                if (endBlock * rewardPerBlock) - (poolInfo[arg1].field_512 * rewardPerBlock) and poolInfo[arg1].field_256 > -1 / (endBlock * rewardPerBlock) - (poolInfo[arg1].field_512 * rewardPerBlock):
                    revert with 'NH{q', 17
                if not totalAllocPoint:
                    revert with 'NH{q', 18
                if (endBlock * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint and 1000000000000000000 * 10^18 > -1 / (endBlock * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
                    revert with 'NH{q', 17
                if not poolInfo[arg1].field_1536:
                    revert with 'NH{q', 18
                if poolInfo[arg1].field_768 > !(1000000000000000000 * 10^18 * (endBlock * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1536):
                    revert with 'NH{q', 17
                poolInfo[arg1].field_768 += 1000000000000000000 * 10^18 * (endBlock * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1536
            poolInfo[arg1].field_512 = endBlock
    if not userInfo[arg1][msg.sender].field_0:
        mem[100] = this.address
        require ext_code.size(poolInfo[arg1].field_0)
        staticcall poolInfo[arg1].field_0.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(return_data.size) + 132] = msg.sender
        mem[ceil32(return_data.size) + 164] = this.address
        mem[ceil32(return_data.size) + 196] = arg2
        mem[ceil32(return_data.size) + 96] = 100
        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[ceil32(return_data.size) + 128 len 4] = unknown_0x23b872dd(?????)
        mem[ceil32(return_data.size) + 228] = 32
        mem[ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(poolInfo[arg1].field_0):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0
        mem[ceil32(return_data.size) + 392] = 0
        call poolInfo[arg1].field_0 with:
           funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0) >> 224
             gas gas_remaining wei
            args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0) << 544)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                if not uint32(this.address), mem[132 len 28]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + 324] == bool(mem[ceil32(return_data.size) + 324])
                if not mem[ceil32(return_data.size) + 324]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        if userInfo[arg1][msg.sender].field_0 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][msg.sender].field_0:
            revert with 'NH{q', 17
        if userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18 < userInfo[arg1][msg.sender].field_256:
            revert with 'NH{q', 17
        if (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - userInfo[arg1][msg.sender].field_256 and poolInfo[arg1].field_1280 > -1 / (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - userInfo[arg1][msg.sender].field_256:
            revert with 'NH{q', 17
        if not (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18 * poolInfo[arg1].field_1280) - (userInfo[arg1][msg.sender].field_256 * poolInfo[arg1].field_1280) / 1000:
            if (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - userInfo[arg1][msg.sender].field_256 < (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18 * poolInfo[arg1].field_1280) - (userInfo[arg1][msg.sender].field_256 * poolInfo[arg1].field_1280) / 1000:
                revert with 'NH{q', 17
            mem[100] = msg.sender
            mem[132] = (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - userInfo[arg1][msg.sender].field_256 - ((userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18 * poolInfo[arg1].field_1280) - (userInfo[arg1][msg.sender].field_256 * poolInfo[arg1].field_1280) / 1000)
            require ext_code.size(sub_29ecb76aAddress)
            call sub_29ecb76aAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - userInfo[arg1][msg.sender].field_256 - ((userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18 * poolInfo[arg1].field_1280) - (userInfo[arg1][msg.sender].field_256 * poolInfo[arg1].field_1280) / 1000)
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if paidOut > !((userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - userInfo[arg1][msg.sender].field_256 - ((userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18 * poolInfo[arg1].field_1280) - (userInfo[arg1][msg.sender].field_256 * poolInfo[arg1].field_1280) / 1000)):
                revert with 'NH{q', 17
            paidOut = paidOut + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - userInfo[arg1][msg.sender].field_256 - ((userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18 * poolInfo[arg1].field_1280) - (userInfo[arg1][msg.sender].field_256 * poolInfo[arg1].field_1280) / 1000)
            mem[ceil32(return_data.size) + 100] = this.address
            require ext_code.size(poolInfo[arg1].field_0)
            staticcall poolInfo[arg1].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(2 * ceil32(return_data.size)) + 132] = msg.sender
            mem[(2 * ceil32(return_data.size)) + 164] = this.address
            mem[(2 * ceil32(return_data.size)) + 196] = arg2
            mem[(2 * ceil32(return_data.size)) + 96] = 100
            mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
            mem[(2 * ceil32(return_data.size)) + 228] = 32
            mem[(2 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(poolInfo[arg1].field_0):
                revert with 0, 'Address: call to non-contract'
            mem[(2 * ceil32(return_data.size)) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0
            mem[(2 * ceil32(return_data.size)) + 392] = 0
            call poolInfo[arg1].field_0 with:
               funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0) >> 224
                 gas gas_remaining wei
                args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0) << 544)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require uint32(msg.sender), Mask(224, 32, (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - userInfo[arg1][msg.sender].field_256 - ((userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18 * poolInfo[arg1].field_1280) - (userInfo[arg1][msg.sender].field_256 * poolInfo[arg1].field_1280) / 1000)) >> 32 == bool(uint32(msg.sender), Mask(224, 32, (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - userInfo[arg1][msg.sender].field_256 - ((userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18 * poolInfo[arg1].field_1280) - (userInfo[arg1][msg.sender].field_256 * poolInfo[arg1].field_1280) / 1000)) >> 32)
                    if not uint32(msg.sender), Mask(224, 32, (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - userInfo[arg1][msg.sender].field_256 - ((userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18 * poolInfo[arg1].field_1280) - (userInfo[arg1][msg.sender].field_256 * poolInfo[arg1].field_1280) / 1000)) >> 32:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(2 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(2 * ceil32(return_data.size)) + 324] == bool(mem[(2 * ceil32(return_data.size)) + 324])
                    if not mem[(2 * ceil32(return_data.size)) + 324]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[100] = address(stor12.field_0)
            mem[132] = (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18 * poolInfo[arg1].field_1280) - (userInfo[arg1][msg.sender].field_256 * poolInfo[arg1].field_1280) / 1000
            require ext_code.size(sub_29ecb76aAddress)
            call sub_29ecb76aAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args address(stor12.field_0), (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18 * poolInfo[arg1].field_1280) - (userInfo[arg1][msg.sender].field_256 * poolInfo[arg1].field_1280) / 1000
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if paidOut > !((userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18 * poolInfo[arg1].field_1280) - (userInfo[arg1][msg.sender].field_256 * poolInfo[arg1].field_1280) / 1000):
                revert with 'NH{q', 17
            paidOut += (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18 * poolInfo[arg1].field_1280) - (userInfo[arg1][msg.sender].field_256 * poolInfo[arg1].field_1280) / 1000
            if (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - userInfo[arg1][msg.sender].field_256 < (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18 * poolInfo[arg1].field_1280) - (userInfo[arg1][msg.sender].field_256 * poolInfo[arg1].field_1280) / 1000:
                revert with 'NH{q', 17
            mem[ceil32(return_data.size) + 100] = msg.sender
            mem[ceil32(return_data.size) + 132] = (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - userInfo[arg1][msg.sender].field_256 - ((userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18 * poolInfo[arg1].field_1280) - (userInfo[arg1][msg.sender].field_256 * poolInfo[arg1].field_1280) / 1000)
            require ext_code.size(sub_29ecb76aAddress)
            call sub_29ecb76aAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - userInfo[arg1][msg.sender].field_256 - ((userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18 * poolInfo[arg1].field_1280) - (userInfo[arg1][msg.sender].field_256 * poolInfo[arg1].field_1280) / 1000)
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if paidOut > !((userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - userInfo[arg1][msg.sender].field_256 - ((userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18 * poolInfo[arg1].field_1280) - (userInfo[arg1][msg.sender].field_256 * poolInfo[arg1].field_1280) / 1000)):
                revert with 'NH{q', 17
            paidOut = paidOut + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - userInfo[arg1][msg.sender].field_256 - ((userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18 * poolInfo[arg1].field_1280) - (userInfo[arg1][msg.sender].field_256 * poolInfo[arg1].field_1280) / 1000)
            mem[(2 * ceil32(return_data.size)) + 100] = this.address
            require ext_code.size(poolInfo[arg1].field_0)
            staticcall poolInfo[arg1].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(4 * ceil32(return_data.size)) + 132] = msg.sender
            mem[(4 * ceil32(return_data.size)) + 164] = this.address
            mem[(4 * ceil32(return_data.size)) + 196] = arg2
            mem[(4 * ceil32(return_data.size)) + 96] = 100
            mem[(4 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[(4 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
            mem[(4 * ceil32(return_data.size)) + 228] = 32
            mem[(4 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(poolInfo[arg1].field_0):
                revert with 0, 'Address: call to non-contract'
            mem[(4 * ceil32(return_data.size)) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0
            mem[(4 * ceil32(return_data.size)) + 392] = 0
            call poolInfo[arg1].field_0 with:
               funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0) >> 224
                 gas gas_remaining wei
                args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0) << 544)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require uint32(stor12.field_0), Mask(224, 32, (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18 * poolInfo[arg1].field_1280) - (userInfo[arg1][msg.sender].field_256 * poolInfo[arg1].field_1280) / 1000) >> 32 == bool(uint32(stor12.field_0), Mask(224, 32, (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18 * poolInfo[arg1].field_1280) - (userInfo[arg1][msg.sender].field_256 * poolInfo[arg1].field_1280) / 1000) >> 32)
                    if not uint32(stor12.field_0), Mask(224, 32, (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18 * poolInfo[arg1].field_1280) - (userInfo[arg1][msg.sender].field_256 * poolInfo[arg1].field_1280) / 1000) >> 32:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(4 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(4 * ceil32(return_data.size)) + 324] == bool(mem[(4 * ceil32(return_data.size)) + 324])
                    if not mem[(4 * ceil32(return_data.size)) + 324]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    require ext_code.size(poolInfo[arg1].field_0)
    staticcall poolInfo[arg1].field_0.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 'NH{q', 17
    if poolInfo[arg1].field_1536 > !0:
        revert with 'NH{q', 17
    if userInfo[arg1][msg.sender].field_0 > !0:
        revert with 'NH{q', 17
    if userInfo[arg1][msg.sender].field_0 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][msg.sender].field_0:
        revert with 'NH{q', 17
    userInfo[arg1][msg.sender].field_256 = (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) + (ext_call.return_data[0] * poolInfo[arg1].field_768) - (ext_call.return_data[0] * poolInfo[arg1].field_768) / 1000000000000000000 * 10^18
    emit Deposit(0, msg.sender, arg1);
}

function changeRewardPerBlock(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not uint8(stor12.field_160):
        revert with 0, 'Farm: init the farm first'
    if block.number >= endBlock:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'changeRewardPerBlock: Too late farming ended'
    if block.number < startBlock:
        if sub_b370deb1 < 0:
            revert with 'NH{q', 17
        if not arg1:
            revert with 'NH{q', 18
        if block.number > startBlock:
            if block.number > !(sub_b370deb1 / arg1):
                revert with 'NH{q', 17
            if arg1 > rewardPerBlock:
                if 6 * 3600 > !block.number:
                    revert with 'NH{q', 17
                if sub_b370deb1 / arg1 <= 6 * 3600:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                'Please fund the contract before increasing the rewards per block'
            idx = 0
            while idx < poolInfo.length:
                mem[0] = 7
                if block.number < endBlock:
                    if block.number > poolInfo[idx].field_512:
                        if poolInfo[idx].field_1536:
                            if block.number < poolInfo[idx].field_512:
                                revert with 'NH{q', 17
                            if block.number - poolInfo[idx].field_512 and rewardPerBlock > -1 / block.number - poolInfo[idx].field_512:
                                revert with 'NH{q', 17
                            if (block.number * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock) and poolInfo[idx].field_256 > -1 / (block.number * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock):
                                revert with 'NH{q', 17
                            if not totalAllocPoint:
                                revert with 'NH{q', 18
                            if (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint and 1000000000000000000 * 10^18 > -1 / (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                revert with 'NH{q', 17
                            if not poolInfo[idx].field_1536:
                                revert with 'NH{q', 18
                            if poolInfo[idx].field_768 > !(1000000000000000000 * 10^18 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1536):
                                revert with 'NH{q', 17
                            poolInfo[idx].field_768 += 1000000000000000000 * 10^18 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1536
                        poolInfo[idx].field_512 = block.number
                else:
                    if endBlock > poolInfo[idx].field_512:
                        if poolInfo[idx].field_1536:
                            if endBlock < poolInfo[idx].field_512:
                                revert with 'NH{q', 17
                            if endBlock - poolInfo[idx].field_512 and rewardPerBlock > -1 / endBlock - poolInfo[idx].field_512:
                                revert with 'NH{q', 17
                            if (endBlock * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock) and poolInfo[idx].field_256 > -1 / (endBlock * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock):
                                revert with 'NH{q', 17
                            if not totalAllocPoint:
                                revert with 'NH{q', 18
                            if (endBlock * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint and 1000000000000000000 * 10^18 > -1 / (endBlock * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                revert with 'NH{q', 17
                            if not poolInfo[idx].field_1536:
                                revert with 'NH{q', 18
                            if poolInfo[idx].field_768 > !(1000000000000000000 * 10^18 * (endBlock * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1536):
                                revert with 'NH{q', 17
                            poolInfo[idx].field_768 += 1000000000000000000 * 10^18 * (endBlock * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1536
                        poolInfo[idx].field_512 = endBlock
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if block.number >= startBlock:
                sub_93c48387 = block.number
                sub_ce9bdc53 = 0
            endBlock = block.number + (sub_b370deb1 / arg1)
        else:
            if startBlock > !(sub_b370deb1 / arg1):
                revert with 'NH{q', 17
            if arg1 > rewardPerBlock:
                if 6 * 3600 > !block.number:
                    revert with 'NH{q', 17
                if startBlock + (sub_b370deb1 / arg1) <= block.number + (6 * 3600):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                'Please fund the contract before increasing the rewards per block'
            idx = 0
            while idx < poolInfo.length:
                mem[0] = 7
                if block.number < endBlock:
                    if block.number > poolInfo[idx].field_512:
                        if poolInfo[idx].field_1536:
                            if block.number < poolInfo[idx].field_512:
                                revert with 'NH{q', 17
                            if block.number - poolInfo[idx].field_512 and rewardPerBlock > -1 / block.number - poolInfo[idx].field_512:
                                revert with 'NH{q', 17
                            if (block.number * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock) and poolInfo[idx].field_256 > -1 / (block.number * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock):
                                revert with 'NH{q', 17
                            if not totalAllocPoint:
                                revert with 'NH{q', 18
                            if (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint and 1000000000000000000 * 10^18 > -1 / (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                revert with 'NH{q', 17
                            if not poolInfo[idx].field_1536:
                                revert with 'NH{q', 18
                            if poolInfo[idx].field_768 > !(1000000000000000000 * 10^18 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1536):
                                revert with 'NH{q', 17
                            poolInfo[idx].field_768 += 1000000000000000000 * 10^18 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1536
                        poolInfo[idx].field_512 = block.number
                else:
                    if endBlock > poolInfo[idx].field_512:
                        if poolInfo[idx].field_1536:
                            if endBlock < poolInfo[idx].field_512:
                                revert with 'NH{q', 17
                            if endBlock - poolInfo[idx].field_512 and rewardPerBlock > -1 / endBlock - poolInfo[idx].field_512:
                                revert with 'NH{q', 17
                            if (endBlock * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock) and poolInfo[idx].field_256 > -1 / (endBlock * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock):
                                revert with 'NH{q', 17
                            if not totalAllocPoint:
                                revert with 'NH{q', 18
                            if (endBlock * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint and 1000000000000000000 * 10^18 > -1 / (endBlock * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                revert with 'NH{q', 17
                            if not poolInfo[idx].field_1536:
                                revert with 'NH{q', 18
                            if poolInfo[idx].field_768 > !(1000000000000000000 * 10^18 * (endBlock * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1536):
                                revert with 'NH{q', 17
                            poolInfo[idx].field_768 += 1000000000000000000 * 10^18 * (endBlock * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1536
                        poolInfo[idx].field_512 = endBlock
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if block.number >= startBlock:
                sub_93c48387 = block.number
                sub_ce9bdc53 = 0
            endBlock = startBlock + (sub_b370deb1 / arg1)
        rewardPerBlock = arg1
        if sub_b370deb1 % arg1:
            require ext_code.size(sub_29ecb76aAddress)
            call sub_29ecb76aAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args address(stor12.field_0), sub_b370deb1 % arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if sub_b370deb1 < sub_b370deb1 % arg1:
                revert with 'NH{q', 17
            sub_b370deb1 -= sub_b370deb1 % arg1
    else:
        if block.number < endBlock:
            if block.number < sub_93c48387:
                revert with 'NH{q', 17
            if rewardPerBlock and block.number - sub_93c48387 > -1 / rewardPerBlock:
                revert with 'NH{q', 17
            if sub_ce9bdc53 > !((block.number * rewardPerBlock) - (sub_93c48387 * rewardPerBlock)):
                revert with 'NH{q', 17
            if sub_b370deb1 < sub_ce9bdc53 + (block.number * rewardPerBlock) - (sub_93c48387 * rewardPerBlock):
                revert with 'NH{q', 17
            if not arg1:
                revert with 'NH{q', 18
            if block.number > startBlock:
                if block.number > !(sub_b370deb1 - sub_ce9bdc53 - (block.number * rewardPerBlock) + (sub_93c48387 * rewardPerBlock) / arg1):
                    revert with 'NH{q', 17
                if arg1 > rewardPerBlock:
                    if 6 * 3600 > !block.number:
                        revert with 'NH{q', 17
                    if sub_b370deb1 - sub_ce9bdc53 - (block.number * rewardPerBlock) + (sub_93c48387 * rewardPerBlock) / arg1 <= 6 * 3600:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    'Please fund the contract before increasing the rewards per block'
                idx = 0
                while idx < poolInfo.length:
                    mem[0] = 7
                    if block.number < endBlock:
                        if block.number > poolInfo[idx].field_512:
                            if poolInfo[idx].field_1536:
                                if block.number < poolInfo[idx].field_512:
                                    revert with 'NH{q', 17
                                if block.number - poolInfo[idx].field_512 and rewardPerBlock > -1 / block.number - poolInfo[idx].field_512:
                                    revert with 'NH{q', 17
                                if (block.number * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock) and poolInfo[idx].field_256 > -1 / (block.number * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock):
                                    revert with 'NH{q', 17
                                if not totalAllocPoint:
                                    revert with 'NH{q', 18
                                if (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint and 1000000000000000000 * 10^18 > -1 / (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                    revert with 'NH{q', 17
                                if not poolInfo[idx].field_1536:
                                    revert with 'NH{q', 18
                                if poolInfo[idx].field_768 > !(1000000000000000000 * 10^18 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1536):
                                    revert with 'NH{q', 17
                                poolInfo[idx].field_768 += 1000000000000000000 * 10^18 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1536
                            poolInfo[idx].field_512 = block.number
                    else:
                        if endBlock > poolInfo[idx].field_512:
                            if poolInfo[idx].field_1536:
                                if endBlock < poolInfo[idx].field_512:
                                    revert with 'NH{q', 17
                                if endBlock - poolInfo[idx].field_512 and rewardPerBlock > -1 / endBlock - poolInfo[idx].field_512:
                                    revert with 'NH{q', 17
                                if (endBlock * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock) and poolInfo[idx].field_256 > -1 / (endBlock * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock):
                                    revert with 'NH{q', 17
                                if not totalAllocPoint:
                                    revert with 'NH{q', 18
                                if (endBlock * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint and 1000000000000000000 * 10^18 > -1 / (endBlock * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                    revert with 'NH{q', 17
                                if not poolInfo[idx].field_1536:
                                    revert with 'NH{q', 18
                                if poolInfo[idx].field_768 > !(1000000000000000000 * 10^18 * (endBlock * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1536):
                                    revert with 'NH{q', 17
                                poolInfo[idx].field_768 += 1000000000000000000 * 10^18 * (endBlock * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1536
                            poolInfo[idx].field_512 = endBlock
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if block.number >= startBlock:
                    sub_93c48387 = block.number
                    sub_ce9bdc53 = sub_ce9bdc53 + (block.number * rewardPerBlock) - (sub_93c48387 * rewardPerBlock)
                endBlock = block.number + (sub_b370deb1 - sub_ce9bdc53 - (block.number * rewardPerBlock) + (sub_93c48387 * rewardPerBlock) / arg1)
            else:
                if startBlock > !(sub_b370deb1 - sub_ce9bdc53 - (block.number * rewardPerBlock) + (sub_93c48387 * rewardPerBlock) / arg1):
                    revert with 'NH{q', 17
                if arg1 > rewardPerBlock:
                    if 6 * 3600 > !block.number:
                        revert with 'NH{q', 17
                    if startBlock + (sub_b370deb1 - sub_ce9bdc53 - (block.number * rewardPerBlock) + (sub_93c48387 * rewardPerBlock) / arg1) <= block.number + (6 * 3600):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    'Please fund the contract before increasing the rewards per block'
                idx = 0
                while idx < poolInfo.length:
                    mem[0] = 7
                    if block.number < endBlock:
                        if block.number > poolInfo[idx].field_512:
                            if poolInfo[idx].field_1536:
                                if block.number < poolInfo[idx].field_512:
                                    revert with 'NH{q', 17
                                if block.number - poolInfo[idx].field_512 and rewardPerBlock > -1 / block.number - poolInfo[idx].field_512:
                                    revert with 'NH{q', 17
                                if (block.number * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock) and poolInfo[idx].field_256 > -1 / (block.number * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock):
                                    revert with 'NH{q', 17
                                if not totalAllocPoint:
                                    revert with 'NH{q', 18
                                if (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint and 1000000000000000000 * 10^18 > -1 / (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                    revert with 'NH{q', 17
                                if not poolInfo[idx].field_1536:
                                    revert with 'NH{q', 18
                                if poolInfo[idx].field_768 > !(1000000000000000000 * 10^18 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1536):
                                    revert with 'NH{q', 17
                                poolInfo[idx].field_768 += 1000000000000000000 * 10^18 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1536
                            poolInfo[idx].field_512 = block.number
                    else:
                        if endBlock > poolInfo[idx].field_512:
                            if poolInfo[idx].field_1536:
                                if endBlock < poolInfo[idx].field_512:
                                    revert with 'NH{q', 17
                                if endBlock - poolInfo[idx].field_512 and rewardPerBlock > -1 / endBlock - poolInfo[idx].field_512:
                                    revert with 'NH{q', 17
                                if (endBlock * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock) and poolInfo[idx].field_256 > -1 / (endBlock * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock):
                                    revert with 'NH{q', 17
                                if not totalAllocPoint:
                                    revert with 'NH{q', 18
                                if (endBlock * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint and 1000000000000000000 * 10^18 > -1 / (endBlock * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                    revert with 'NH{q', 17
                                if not poolInfo[idx].field_1536:
                                    revert with 'NH{q', 18
                                if poolInfo[idx].field_768 > !(1000000000000000000 * 10^18 * (endBlock * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1536):
                                    revert with 'NH{q', 17
                                poolInfo[idx].field_768 += 1000000000000000000 * 10^18 * (endBlock * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1536
                            poolInfo[idx].field_512 = endBlock
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if block.number >= startBlock:
                    sub_93c48387 = block.number
                    sub_ce9bdc53 = sub_ce9bdc53 + (block.number * rewardPerBlock) - (sub_93c48387 * rewardPerBlock)
                endBlock = startBlock + (sub_b370deb1 - sub_ce9bdc53 - (block.number * rewardPerBlock) + (sub_93c48387 * rewardPerBlock) / arg1)
            rewardPerBlock = arg1
            if sub_b370deb1 - sub_ce9bdc53 - (block.number * rewardPerBlock) + (sub_93c48387 * rewardPerBlock) % arg1:
                require ext_code.size(sub_29ecb76aAddress)
                call sub_29ecb76aAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(stor12.field_0), sub_b370deb1 - sub_ce9bdc53 - (block.number * rewardPerBlock) + (sub_93c48387 * rewardPerBlock) % arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if sub_b370deb1 < sub_b370deb1 - sub_ce9bdc53 - (block.number * rewardPerBlock) + (sub_93c48387 * rewardPerBlock) % arg1:
                    revert with 'NH{q', 17
                sub_b370deb1 -= sub_b370deb1 - sub_ce9bdc53 - (block.number * rewardPerBlock) + (sub_93c48387 * rewardPerBlock) % arg1
        else:
            if endBlock < sub_93c48387:
                revert with 'NH{q', 17
            if rewardPerBlock and endBlock - sub_93c48387 > -1 / rewardPerBlock:
                revert with 'NH{q', 17
            if sub_ce9bdc53 > !((endBlock * rewardPerBlock) - (sub_93c48387 * rewardPerBlock)):
                revert with 'NH{q', 17
            if sub_b370deb1 < sub_ce9bdc53 + (endBlock * rewardPerBlock) - (sub_93c48387 * rewardPerBlock):
                revert with 'NH{q', 17
            if not arg1:
                revert with 'NH{q', 18
            if block.number > startBlock:
                if block.number > !(sub_b370deb1 - sub_ce9bdc53 - (endBlock * rewardPerBlock) + (sub_93c48387 * rewardPerBlock) / arg1):
                    revert with 'NH{q', 17
                if arg1 > rewardPerBlock:
                    if 6 * 3600 > !block.number:
                        revert with 'NH{q', 17
                    if sub_b370deb1 - sub_ce9bdc53 - (endBlock * rewardPerBlock) + (sub_93c48387 * rewardPerBlock) / arg1 <= 6 * 3600:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    'Please fund the contract before increasing the rewards per block'
                idx = 0
                while idx < poolInfo.length:
                    mem[0] = 7
                    if block.number < endBlock:
                        if block.number > poolInfo[idx].field_512:
                            if poolInfo[idx].field_1536:
                                if block.number < poolInfo[idx].field_512:
                                    revert with 'NH{q', 17
                                if block.number - poolInfo[idx].field_512 and rewardPerBlock > -1 / block.number - poolInfo[idx].field_512:
                                    revert with 'NH{q', 17
                                if (block.number * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock) and poolInfo[idx].field_256 > -1 / (block.number * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock):
                                    revert with 'NH{q', 17
                                if not totalAllocPoint:
                                    revert with 'NH{q', 18
                                if (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint and 1000000000000000000 * 10^18 > -1 / (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                    revert with 'NH{q', 17
                                if not poolInfo[idx].field_1536:
                                    revert with 'NH{q', 18
                                if poolInfo[idx].field_768 > !(1000000000000000000 * 10^18 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1536):
                                    revert with 'NH{q', 17
                                poolInfo[idx].field_768 += 1000000000000000000 * 10^18 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1536
                            poolInfo[idx].field_512 = block.number
                    else:
                        if endBlock > poolInfo[idx].field_512:
                            if poolInfo[idx].field_1536:
                                if endBlock < poolInfo[idx].field_512:
                                    revert with 'NH{q', 17
                                if endBlock - poolInfo[idx].field_512 and rewardPerBlock > -1 / endBlock - poolInfo[idx].field_512:
                                    revert with 'NH{q', 17
                                if (endBlock * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock) and poolInfo[idx].field_256 > -1 / (endBlock * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock):
                                    revert with 'NH{q', 17
                                if not totalAllocPoint:
                                    revert with 'NH{q', 18
                                if (endBlock * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint and 1000000000000000000 * 10^18 > -1 / (endBlock * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                    revert with 'NH{q', 17
                                if not poolInfo[idx].field_1536:
                                    revert with 'NH{q', 18
                                if poolInfo[idx].field_768 > !(1000000000000000000 * 10^18 * (endBlock * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1536):
                                    revert with 'NH{q', 17
                                poolInfo[idx].field_768 += 1000000000000000000 * 10^18 * (endBlock * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1536
                            poolInfo[idx].field_512 = endBlock
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if block.number >= startBlock:
                    sub_93c48387 = block.number
                    sub_ce9bdc53 = sub_ce9bdc53 + (endBlock * rewardPerBlock) - (sub_93c48387 * rewardPerBlock)
                endBlock = block.number + (sub_b370deb1 - sub_ce9bdc53 - (endBlock * rewardPerBlock) + (sub_93c48387 * rewardPerBlock) / arg1)
            else:
                if startBlock > !(sub_b370deb1 - sub_ce9bdc53 - (endBlock * rewardPerBlock) + (sub_93c48387 * rewardPerBlock) / arg1):
                    revert with 'NH{q', 17
                if arg1 > rewardPerBlock:
                    if 6 * 3600 > !block.number:
                        revert with 'NH{q', 17
                    if startBlock + (sub_b370deb1 - sub_ce9bdc53 - (endBlock * rewardPerBlock) + (sub_93c48387 * rewardPerBlock) / arg1) <= block.number + (6 * 3600):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    'Please fund the contract before increasing the rewards per block'
                idx = 0
                while idx < poolInfo.length:
                    mem[0] = 7
                    if block.number < endBlock:
                        if block.number > poolInfo[idx].field_512:
                            if poolInfo[idx].field_1536:
                                if block.number < poolInfo[idx].field_512:
                                    revert with 'NH{q', 17
                                if block.number - poolInfo[idx].field_512 and rewardPerBlock > -1 / block.number - poolInfo[idx].field_512:
                                    revert with 'NH{q', 17
                                if (block.number * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock) and poolInfo[idx].field_256 > -1 / (block.number * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock):
                                    revert with 'NH{q', 17
                                if not totalAllocPoint:
                                    revert with 'NH{q', 18
                                if (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint and 1000000000000000000 * 10^18 > -1 / (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                    revert with 'NH{q', 17
                                if not poolInfo[idx].field_1536:
                                    revert with 'NH{q', 18
                                if poolInfo[idx].field_768 > !(1000000000000000000 * 10^18 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1536):
                                    revert with 'NH{q', 17
                                poolInfo[idx].field_768 += 1000000000000000000 * 10^18 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1536
                            poolInfo[idx].field_512 = block.number
                    else:
                        if endBlock > poolInfo[idx].field_512:
                            if poolInfo[idx].field_1536:
                                if endBlock < poolInfo[idx].field_512:
                                    revert with 'NH{q', 17
                                if endBlock - poolInfo[idx].field_512 and rewardPerBlock > -1 / endBlock - poolInfo[idx].field_512:
                                    revert with 'NH{q', 17
                                if (endBlock * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock) and poolInfo[idx].field_256 > -1 / (endBlock * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock):
                                    revert with 'NH{q', 17
                                if not totalAllocPoint:
                                    revert with 'NH{q', 18
                                if (endBlock * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint and 1000000000000000000 * 10^18 > -1 / (endBlock * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                    revert with 'NH{q', 17
                                if not poolInfo[idx].field_1536:
                                    revert with 'NH{q', 18
                                if poolInfo[idx].field_768 > !(1000000000000000000 * 10^18 * (endBlock * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1536):
                                    revert with 'NH{q', 17
                                poolInfo[idx].field_768 += 1000000000000000000 * 10^18 * (endBlock * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1536
                            poolInfo[idx].field_512 = endBlock
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if block.number >= startBlock:
                    sub_93c48387 = block.number
                    sub_ce9bdc53 = sub_ce9bdc53 + (endBlock * rewardPerBlock) - (sub_93c48387 * rewardPerBlock)
                endBlock = startBlock + (sub_b370deb1 - sub_ce9bdc53 - (endBlock * rewardPerBlock) + (sub_93c48387 * rewardPerBlock) / arg1)
            rewardPerBlock = arg1
            if sub_b370deb1 - sub_ce9bdc53 - (endBlock * rewardPerBlock) + (sub_93c48387 * rewardPerBlock) % arg1:
                require ext_code.size(sub_29ecb76aAddress)
                call sub_29ecb76aAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(stor12.field_0), sub_b370deb1 - sub_ce9bdc53 - (endBlock * rewardPerBlock) + (sub_93c48387 * rewardPerBlock) % arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if sub_b370deb1 < sub_b370deb1 - sub_ce9bdc53 - (endBlock * rewardPerBlock) + (sub_93c48387 * rewardPerBlock) % arg1:
                    revert with 'NH{q', 17
                sub_b370deb1 -= sub_b370deb1 - sub_ce9bdc53 - (endBlock * rewardPerBlock) + (sub_93c48387 * rewardPerBlock) % arg1
}



}

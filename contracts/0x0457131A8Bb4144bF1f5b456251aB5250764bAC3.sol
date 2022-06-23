contract main {




// =====================  Runtime code  =====================


address owner;
mapping of struct stor1;
address tokenAddress;
address treasuryAddress;
address stakingAddress;
uint256 rebaseRate;
uint256 epochLength;

function staking() payable {
    return stakingAddress
}

function epochLength() payable {
    return epochLength
}

function treasury() payable {
    return treasuryAddress
}

function rebaseRate() payable {
    return rebaseRate
}

function owner() payable {
    return owner
}

function token() payable {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setEpoch(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    epochLength = arg1
    return 1
}

function enable(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1[address(arg1)].field_1792 = 1
    return 1
}

function disable(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1[address(arg1)].field_1792 = 0
    return 1
}

function setRate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Rebase rate percentage must be more than 0!'
    rebaseRate = arg1
    return 1
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

function sub_0d71b068(?) payable {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor1[address(arg1)].field_1792:
        revert with 0, 'Address is not active!'
    stor1[address(arg1)].field_256 = arg2
    stor1[address(arg1)].field_1024 = arg3
    stor1[address(arg1)].field_1280 = arg4
    stor1[address(arg1)].field_1536 = arg5
    return 1
}

function sub_e69511c5(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    require cd[4] + (96 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require calldata.size - s >= 96
        _28 = mem[64]
        if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 96
        require cd[s] == address(cd[s])
        mem[_28] = cd[s]
        require cd[(s + 32)] == cd[(s + 32)]
        mem[_28 + 32] = cd[(s + 32)]
        require cd[(s + 64)] == cd[(s + 64)]
        mem[_28 + 64] = cd[(s + 64)]
        mem[t] = _28
        idx = idx + 1
        s = s + 96
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _54 = mem[96]
    idx = 0
    while idx < _54:
        _55 = mem[64]
        mem[64] = mem[64] + 256
        if idx >= mem[96]:
            revert with 'NH{q', 50
        mem[_55] = mem[mem[(32 * idx) + 128] + 12 len 20]
        if idx >= mem[96]:
            revert with 'NH{q', 50
        mem[_55 + 32] = mem[mem[(32 * idx) + 128] + 32]
        mem[_55 + 64] = 0
        mem[_55 + 96] = 0
        mem[_55 + 128] = block.timestamp
        if idx >= mem[96]:
            revert with 'NH{q', 50
        mem[_55 + 160] = mem[mem[(32 * idx) + 128] + 64]
        mem[_55 + 192] = block.timestamp
        mem[_55 + 224] = 1
        if idx >= mem[96]:
            revert with 'NH{q', 50
        mem[0] = mem[mem[(32 * idx) + 128] + 12 len 20]
        mem[32] = 1
        stor1[mem[0]].field_0 = mem[_55 + 12 len 20]
        stor1[mem[0]].field_256 = mem[_55 + 32]
        stor1[mem[0]].field_512 = 0
        stor1[mem[0]].field_768 = 0
        stor1[mem[0]].field_1024 = block.timestamp
        stor1[mem[0]].field_1280 = mem[_55 + 160]
        stor1[mem[0]].field_1536 = block.timestamp
        stor1[mem[0]].field_1792 = 1
        if idx == -1:
            revert with 'NH{q', 17
        _54 = mem[96]
        idx = idx + 1
        continue 
}

function status(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if block.timestamp >= stor1[address(arg1)].field_1280:
        if stor1[address(arg1)].field_512 > stor1[address(arg1)].field_256:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if stor1[address(arg1)].field_256 < stor1[address(arg1)].field_512:
            revert with 'NH{q', 17
        return stor1[address(arg1)].field_0, 
               stor1[address(arg1)].field_256,
               stor1[address(arg1)].field_512,
               stor1[address(arg1)].field_256 - stor1[address(arg1)].field_512,
               stor1[address(arg1)].field_1024,
               stor1[address(arg1)].field_1280,
               stor1[address(arg1)].field_1536,
               bool(stor1[address(arg1)].field_1792)
    if not stor1[address(arg1)].field_256:
        if stor1[address(arg1)].field_1024 > stor1[address(arg1)].field_1280:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if stor1[address(arg1)].field_1280 < stor1[address(arg1)].field_1024:
            revert with 'NH{q', 17
        if epochLength <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not epochLength:
            revert with 'NH{q', 18
        if stor1[address(arg1)].field_1536 > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if block.timestamp < stor1[address(arg1)].field_1536:
            revert with 'NH{q', 17
        if epochLength <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not epochLength:
            revert with 'NH{q', 18
        if block.timestamp - stor1[address(arg1)].field_1536 / epochLength < 1:
            if stor1[address(arg1)].field_512 > -1:
                revert with 'NH{q', 17
            if stor1[address(arg1)].field_512 < stor1[address(arg1)].field_512:
                revert with 0, 'SafeMath: addition overflow'
            if stor1[address(arg1)].field_512 <= 0:
                return stor1[address(arg1)].field_0, 
                       stor1[address(arg1)].field_256,
                       stor1[address(arg1)].field_512,
                       0,
                       stor1[address(arg1)].field_1024,
                       stor1[address(arg1)].field_1280,
                       stor1[address(arg1)].field_1536,
                       bool(stor1[address(arg1)].field_1792)
        else:
            if stor1[address(arg1)].field_1280 - stor1[address(arg1)].field_1024 / epochLength <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not stor1[address(arg1)].field_1280 - stor1[address(arg1)].field_1024 / epochLength:
                revert with 'NH{q', 18
            if not block.timestamp - stor1[address(arg1)].field_1536 / epochLength:
                if stor1[address(arg1)].field_512 > -1:
                    revert with 'NH{q', 17
                if stor1[address(arg1)].field_512 < stor1[address(arg1)].field_512:
                    revert with 0, 'SafeMath: addition overflow'
                if stor1[address(arg1)].field_512 <= 0:
                    return stor1[address(arg1)].field_0, 
                           stor1[address(arg1)].field_256,
                           stor1[address(arg1)].field_512,
                           0,
                           stor1[address(arg1)].field_1024,
                           stor1[address(arg1)].field_1280,
                           stor1[address(arg1)].field_1536,
                           bool(stor1[address(arg1)].field_1792)
            else:
                if block.timestamp - stor1[address(arg1)].field_1536 / epochLength and 0 / stor1[address(arg1)].field_1280 - stor1[address(arg1)].field_1024 / epochLength > -1 / block.timestamp - stor1[address(arg1)].field_1536 / epochLength:
                    revert with 'NH{q', 17
                if not block.timestamp - stor1[address(arg1)].field_1536 / epochLength:
                    revert with 'NH{q', 18
                if block.timestamp - stor1[address(arg1)].field_1536 / epochLength * 0 / stor1[address(arg1)].field_1280 - stor1[address(arg1)].field_1024 / epochLength / block.timestamp - stor1[address(arg1)].field_1536 / epochLength != 0 / stor1[address(arg1)].field_1280 - stor1[address(arg1)].field_1024 / epochLength:
                    revert with 0, 'SafeMath: multiplication overflow'
                if stor1[address(arg1)].field_512 > (-1 * block.timestamp - stor1[address(arg1)].field_1536 / epochLength * 0 / stor1[address(arg1)].field_1280 - stor1[address(arg1)].field_1024 / epochLength) - 1:
                    revert with 'NH{q', 17
                if stor1[address(arg1)].field_512 + (block.timestamp - stor1[address(arg1)].field_1536 / epochLength * 0 / stor1[address(arg1)].field_1280 - stor1[address(arg1)].field_1024 / epochLength) < stor1[address(arg1)].field_512:
                    revert with 0, 'SafeMath: addition overflow'
                if stor1[address(arg1)].field_512 + (block.timestamp - stor1[address(arg1)].field_1536 / epochLength * 0 / stor1[address(arg1)].field_1280 - stor1[address(arg1)].field_1024 / epochLength) <= 0:
                    return stor1[address(arg1)].field_0, 
                           stor1[address(arg1)].field_256,
                           stor1[address(arg1)].field_512,
                           block.timestamp - stor1[address(arg1)].field_1536 / epochLength * 0 / stor1[address(arg1)].field_1280 - stor1[address(arg1)].field_1024 / epochLength,
                           stor1[address(arg1)].field_1024,
                           stor1[address(arg1)].field_1280,
                           stor1[address(arg1)].field_1536,
                           bool(stor1[address(arg1)].field_1792)
        if stor1[address(arg1)].field_512 > 0:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if 0 < stor1[address(arg1)].field_512:
            revert with 'NH{q', 17
        return stor1[address(arg1)].field_0, 
               stor1[address(arg1)].field_256,
               stor1[address(arg1)].field_512,
               -stor1[address(arg1)].field_512,
               stor1[address(arg1)].field_1024,
               stor1[address(arg1)].field_1280,
               stor1[address(arg1)].field_1536,
               bool(stor1[address(arg1)].field_1792)
    if stor1[address(arg1)].field_256 and rebaseRate > -1 / stor1[address(arg1)].field_256:
        revert with 'NH{q', 17
    if not stor1[address(arg1)].field_256:
        revert with 'NH{q', 18
    if stor1[address(arg1)].field_256 * rebaseRate / stor1[address(arg1)].field_256 != rebaseRate:
        revert with 0, 'SafeMath: multiplication overflow'
    if stor1[address(arg1)].field_1024 > stor1[address(arg1)].field_1280:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if stor1[address(arg1)].field_1280 < stor1[address(arg1)].field_1024:
        revert with 'NH{q', 17
    if epochLength <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not epochLength:
        revert with 'NH{q', 18
    if stor1[address(arg1)].field_1536 > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if block.timestamp < stor1[address(arg1)].field_1536:
        revert with 'NH{q', 17
    if epochLength <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not epochLength:
        revert with 'NH{q', 18
    if block.timestamp - stor1[address(arg1)].field_1536 / epochLength < 1:
        if stor1[address(arg1)].field_512 > -1:
            revert with 'NH{q', 17
        if stor1[address(arg1)].field_512 < stor1[address(arg1)].field_512:
            revert with 0, 'SafeMath: addition overflow'
        if stor1[address(arg1)].field_512 <= stor1[address(arg1)].field_256 * rebaseRate / 10000:
            return stor1[address(arg1)].field_0, 
                   stor1[address(arg1)].field_256,
                   stor1[address(arg1)].field_512,
                   0,
                   stor1[address(arg1)].field_1024,
                   stor1[address(arg1)].field_1280,
                   stor1[address(arg1)].field_1536,
                   bool(stor1[address(arg1)].field_1792)
    else:
        if stor1[address(arg1)].field_1280 - stor1[address(arg1)].field_1024 / epochLength <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not stor1[address(arg1)].field_1280 - stor1[address(arg1)].field_1024 / epochLength:
            revert with 'NH{q', 18
        if not block.timestamp - stor1[address(arg1)].field_1536 / epochLength:
            if stor1[address(arg1)].field_512 > -1:
                revert with 'NH{q', 17
            if stor1[address(arg1)].field_512 < stor1[address(arg1)].field_512:
                revert with 0, 'SafeMath: addition overflow'
            if stor1[address(arg1)].field_512 <= stor1[address(arg1)].field_256 * rebaseRate / 10000:
                return stor1[address(arg1)].field_0, 
                       stor1[address(arg1)].field_256,
                       stor1[address(arg1)].field_512,
                       0,
                       stor1[address(arg1)].field_1024,
                       stor1[address(arg1)].field_1280,
                       stor1[address(arg1)].field_1536,
                       bool(stor1[address(arg1)].field_1792)
        else:
            if block.timestamp - stor1[address(arg1)].field_1536 / epochLength and stor1[address(arg1)].field_256 * rebaseRate / 10000 / stor1[address(arg1)].field_1280 - stor1[address(arg1)].field_1024 / epochLength > -1 / block.timestamp - stor1[address(arg1)].field_1536 / epochLength:
                revert with 'NH{q', 17
            if not block.timestamp - stor1[address(arg1)].field_1536 / epochLength:
                revert with 'NH{q', 18
            if block.timestamp - stor1[address(arg1)].field_1536 / epochLength * stor1[address(arg1)].field_256 * rebaseRate / 10000 / stor1[address(arg1)].field_1280 - stor1[address(arg1)].field_1024 / epochLength / block.timestamp - stor1[address(arg1)].field_1536 / epochLength != stor1[address(arg1)].field_256 * rebaseRate / 10000 / stor1[address(arg1)].field_1280 - stor1[address(arg1)].field_1024 / epochLength:
                revert with 0, 'SafeMath: multiplication overflow'
            if stor1[address(arg1)].field_512 > (-1 * block.timestamp - stor1[address(arg1)].field_1536 / epochLength * stor1[address(arg1)].field_256 * rebaseRate / 10000 / stor1[address(arg1)].field_1280 - stor1[address(arg1)].field_1024 / epochLength) - 1:
                revert with 'NH{q', 17
            if stor1[address(arg1)].field_512 + (block.timestamp - stor1[address(arg1)].field_1536 / epochLength * stor1[address(arg1)].field_256 * rebaseRate / 10000 / stor1[address(arg1)].field_1280 - stor1[address(arg1)].field_1024 / epochLength) < stor1[address(arg1)].field_512:
                revert with 0, 'SafeMath: addition overflow'
            if stor1[address(arg1)].field_512 + (block.timestamp - stor1[address(arg1)].field_1536 / epochLength * stor1[address(arg1)].field_256 * rebaseRate / 10000 / stor1[address(arg1)].field_1280 - stor1[address(arg1)].field_1024 / epochLength) <= stor1[address(arg1)].field_256 * rebaseRate / 10000:
                return stor1[address(arg1)].field_0, 
                       stor1[address(arg1)].field_256,
                       stor1[address(arg1)].field_512,
                       block.timestamp - stor1[address(arg1)].field_1536 / epochLength * stor1[address(arg1)].field_256 * rebaseRate / 10000 / stor1[address(arg1)].field_1280 - stor1[address(arg1)].field_1024 / epochLength,
                       stor1[address(arg1)].field_1024,
                       stor1[address(arg1)].field_1280,
                       stor1[address(arg1)].field_1536,
                       bool(stor1[address(arg1)].field_1792)
    if stor1[address(arg1)].field_512 > stor1[address(arg1)].field_256 * rebaseRate / 10000:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if stor1[address(arg1)].field_256 * rebaseRate / 10000 < stor1[address(arg1)].field_512:
        revert with 'NH{q', 17
    return stor1[address(arg1)].field_0, 
           stor1[address(arg1)].field_256,
           stor1[address(arg1)].field_512,
           (stor1[address(arg1)].field_256 * rebaseRate / 10000) - stor1[address(arg1)].field_512,
           stor1[address(arg1)].field_1024,
           stor1[address(arg1)].field_1280,
           stor1[address(arg1)].field_1536,
           bool(stor1[address(arg1)].field_1792)
}

function claim(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor1[address(msg.sender)].field_1792:
        revert with 0, 'Address is not active!'
    if block.timestamp >= stor1[address(msg.sender)].field_1280:
        if stor1[address(msg.sender)].field_512 > stor1[address(msg.sender)].field_256:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if stor1[address(msg.sender)].field_256 < stor1[address(msg.sender)].field_512:
            revert with 'NH{q', 17
        if stor1[address(msg.sender)].field_256 - stor1[address(msg.sender)].field_512 <= 0:
            revert with 0, 'Reward is not available!'
        stor1[address(msg.sender)].field_1792 = 0
        if not stor1[address(msg.sender)].field_256 - stor1[address(msg.sender)].field_512 / 10^18:
            require ext_code.size(treasuryAddress)
            if not arg1:
                call treasuryAddress.mintRewards(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, 0
            else:
                call treasuryAddress.mintRewards(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(this.address), 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(tokenAddress)
                call tokenAddress.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stakingAddress, stor1[address(msg.sender)].field_256 - stor1[address(msg.sender)].field_512
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(stakingAddress)
                call stakingAddress.stake(uint256 arg1, address arg2) with:
                     gas gas_remaining wei
                    args 0, msg.sender
        else:
            if stor1[address(msg.sender)].field_256 - stor1[address(msg.sender)].field_512 / 10^18 and 10^9 > -1 / stor1[address(msg.sender)].field_256 - stor1[address(msg.sender)].field_512 / 10^18:
                revert with 'NH{q', 17
            if not stor1[address(msg.sender)].field_256 - stor1[address(msg.sender)].field_512 / 10^18:
                revert with 'NH{q', 18
            if 10^9 * stor1[address(msg.sender)].field_256 - stor1[address(msg.sender)].field_512 / 10^18 / stor1[address(msg.sender)].field_256 - stor1[address(msg.sender)].field_512 / 10^18 != 10^9:
                revert with 0, 'SafeMath: multiplication overflow'
            require ext_code.size(treasuryAddress)
            if not arg1:
                call treasuryAddress.mintRewards(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, 10^9 * stor1[address(msg.sender)].field_256 - stor1[address(msg.sender)].field_512 / 10^18
            else:
                call treasuryAddress.mintRewards(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(this.address), 10^9 * stor1[address(msg.sender)].field_256 - stor1[address(msg.sender)].field_512 / 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(tokenAddress)
                call tokenAddress.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stakingAddress, stor1[address(msg.sender)].field_256 - stor1[address(msg.sender)].field_512
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(stakingAddress)
                call stakingAddress.stake(uint256 arg1, address arg2) with:
                     gas gas_remaining wei
                    args 10^9 * stor1[address(msg.sender)].field_256 - stor1[address(msg.sender)].field_512 / 10^18, msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if stor1[address(msg.sender)].field_512 > -stor1[address(msg.sender)].field_256 + stor1[address(msg.sender)].field_512 - 1:
            revert with 'NH{q', 17
        if stor1[address(msg.sender)].field_256 < stor1[address(msg.sender)].field_512:
            revert with 0, 'SafeMath: addition overflow'
        stor1[address(msg.sender)].field_512 = stor1[address(msg.sender)].field_256
    else:
        if not stor1[address(msg.sender)].field_256:
            if stor1[address(msg.sender)].field_1024 > stor1[address(msg.sender)].field_1280:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if stor1[address(msg.sender)].field_1280 < stor1[address(msg.sender)].field_1024:
                revert with 'NH{q', 17
            if epochLength <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not epochLength:
                revert with 'NH{q', 18
            if stor1[address(msg.sender)].field_1536 > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if block.timestamp < stor1[address(msg.sender)].field_1536:
                revert with 'NH{q', 17
            if epochLength <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not epochLength:
                revert with 'NH{q', 18
            if block.timestamp - stor1[address(msg.sender)].field_1536 / epochLength < 1:
                if stor1[address(msg.sender)].field_512 > -1:
                    revert with 'NH{q', 17
                if stor1[address(msg.sender)].field_512 < stor1[address(msg.sender)].field_512:
                    revert with 0, 'SafeMath: addition overflow'
                if stor1[address(msg.sender)].field_512 <= 0:
                    revert with 0, 'Reward is not available!'
                if stor1[address(msg.sender)].field_512 > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < stor1[address(msg.sender)].field_512:
                    revert with 'NH{q', 17
                if -stor1[address(msg.sender)].field_512 <= 0:
                    revert with 0, 'Reward is not available!'
                if not -stor1[address(msg.sender)].field_512 / 10^18:
                    require ext_code.size(treasuryAddress)
                    if not arg1:
                        call treasuryAddress.mintRewards(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, 0
                    else:
                        call treasuryAddress.mintRewards(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(this.address), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(tokenAddress)
                        call tokenAddress.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args stakingAddress, -stor1[address(msg.sender)].field_512
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(stakingAddress)
                        call stakingAddress.stake(uint256 arg1, address arg2) with:
                             gas gas_remaining wei
                            args 0, msg.sender
                else:
                    if -stor1[address(msg.sender)].field_512 / 10^18 and 10^9 > -1 / -stor1[address(msg.sender)].field_512 / 10^18:
                        revert with 'NH{q', 17
                    if not -stor1[address(msg.sender)].field_512 / 10^18:
                        revert with 'NH{q', 18
                    if 10^9 * -stor1[address(msg.sender)].field_512 / 10^18 / -stor1[address(msg.sender)].field_512 / 10^18 != 10^9:
                        revert with 0, 'SafeMath: multiplication overflow'
                    require ext_code.size(treasuryAddress)
                    if not arg1:
                        call treasuryAddress.mintRewards(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, 10^9 * -stor1[address(msg.sender)].field_512 / 10^18
                    else:
                        call treasuryAddress.mintRewards(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(this.address), 10^9 * -stor1[address(msg.sender)].field_512 / 10^18
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(tokenAddress)
                        call tokenAddress.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args stakingAddress, -stor1[address(msg.sender)].field_512
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(stakingAddress)
                        call stakingAddress.stake(uint256 arg1, address arg2) with:
                             gas gas_remaining wei
                            args 10^9 * -stor1[address(msg.sender)].field_512 / 10^18, msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if stor1[address(msg.sender)].field_512 > stor1[address(msg.sender)].field_512 - 1:
                    revert with 'NH{q', 17
                if 0 < stor1[address(msg.sender)].field_512:
                    revert with 0, 'SafeMath: addition overflow'
                stor1[address(msg.sender)].field_512 = 0
            else:
                if stor1[address(msg.sender)].field_1280 - stor1[address(msg.sender)].field_1024 / epochLength <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                if not stor1[address(msg.sender)].field_1280 - stor1[address(msg.sender)].field_1024 / epochLength:
                    revert with 'NH{q', 18
                if not block.timestamp - stor1[address(msg.sender)].field_1536 / epochLength:
                    if stor1[address(msg.sender)].field_512 > -1:
                        revert with 'NH{q', 17
                    if stor1[address(msg.sender)].field_512 < stor1[address(msg.sender)].field_512:
                        revert with 0, 'SafeMath: addition overflow'
                    if stor1[address(msg.sender)].field_512 <= 0:
                        revert with 0, 'Reward is not available!'
                    if stor1[address(msg.sender)].field_512 > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < stor1[address(msg.sender)].field_512:
                        revert with 'NH{q', 17
                    if -stor1[address(msg.sender)].field_512 <= 0:
                        revert with 0, 'Reward is not available!'
                    if not -stor1[address(msg.sender)].field_512 / 10^18:
                        require ext_code.size(treasuryAddress)
                        if not arg1:
                            call treasuryAddress.mintRewards(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, 0
                        else:
                            call treasuryAddress.mintRewards(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(this.address), 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(tokenAddress)
                            call tokenAddress.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args stakingAddress, -stor1[address(msg.sender)].field_512
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            require ext_code.size(stakingAddress)
                            call stakingAddress.stake(uint256 arg1, address arg2) with:
                                 gas gas_remaining wei
                                args 0, msg.sender
                    else:
                        if -stor1[address(msg.sender)].field_512 / 10^18 and 10^9 > -1 / -stor1[address(msg.sender)].field_512 / 10^18:
                            revert with 'NH{q', 17
                        if not -stor1[address(msg.sender)].field_512 / 10^18:
                            revert with 'NH{q', 18
                        if 10^9 * -stor1[address(msg.sender)].field_512 / 10^18 / -stor1[address(msg.sender)].field_512 / 10^18 != 10^9:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require ext_code.size(treasuryAddress)
                        if not arg1:
                            call treasuryAddress.mintRewards(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, 10^9 * -stor1[address(msg.sender)].field_512 / 10^18
                        else:
                            call treasuryAddress.mintRewards(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(this.address), 10^9 * -stor1[address(msg.sender)].field_512 / 10^18
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(tokenAddress)
                            call tokenAddress.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args stakingAddress, -stor1[address(msg.sender)].field_512
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            require ext_code.size(stakingAddress)
                            call stakingAddress.stake(uint256 arg1, address arg2) with:
                                 gas gas_remaining wei
                                args 10^9 * -stor1[address(msg.sender)].field_512 / 10^18, msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if stor1[address(msg.sender)].field_512 > stor1[address(msg.sender)].field_512 - 1:
                        revert with 'NH{q', 17
                    if 0 < stor1[address(msg.sender)].field_512:
                        revert with 0, 'SafeMath: addition overflow'
                    stor1[address(msg.sender)].field_512 = 0
                else:
                    if block.timestamp - stor1[address(msg.sender)].field_1536 / epochLength and 0 / stor1[address(msg.sender)].field_1280 - stor1[address(msg.sender)].field_1024 / epochLength > -1 / block.timestamp - stor1[address(msg.sender)].field_1536 / epochLength:
                        revert with 'NH{q', 17
                    if not block.timestamp - stor1[address(msg.sender)].field_1536 / epochLength:
                        revert with 'NH{q', 18
                    if block.timestamp - stor1[address(msg.sender)].field_1536 / epochLength * 0 / stor1[address(msg.sender)].field_1280 - stor1[address(msg.sender)].field_1024 / epochLength / block.timestamp - stor1[address(msg.sender)].field_1536 / epochLength != 0 / stor1[address(msg.sender)].field_1280 - stor1[address(msg.sender)].field_1024 / epochLength:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if stor1[address(msg.sender)].field_512 > (-1 * block.timestamp - stor1[address(msg.sender)].field_1536 / epochLength * 0 / stor1[address(msg.sender)].field_1280 - stor1[address(msg.sender)].field_1024 / epochLength) - 1:
                        revert with 'NH{q', 17
                    if stor1[address(msg.sender)].field_512 + (block.timestamp - stor1[address(msg.sender)].field_1536 / epochLength * 0 / stor1[address(msg.sender)].field_1280 - stor1[address(msg.sender)].field_1024 / epochLength) < stor1[address(msg.sender)].field_512:
                        revert with 0, 'SafeMath: addition overflow'
                    if stor1[address(msg.sender)].field_512 + (block.timestamp - stor1[address(msg.sender)].field_1536 / epochLength * 0 / stor1[address(msg.sender)].field_1280 - stor1[address(msg.sender)].field_1024 / epochLength) <= 0:
                        if block.timestamp - stor1[address(msg.sender)].field_1536 / epochLength * 0 / stor1[address(msg.sender)].field_1280 - stor1[address(msg.sender)].field_1024 / epochLength <= 0:
                            revert with 0, 'Reward is not available!'
                        if not block.timestamp - stor1[address(msg.sender)].field_1536 / epochLength * 0 / stor1[address(msg.sender)].field_1280 - stor1[address(msg.sender)].field_1024 / epochLength / 10^18:
                            require ext_code.size(treasuryAddress)
                            if not arg1:
                                call treasuryAddress.mintRewards(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, 0
                            else:
                                call treasuryAddress.mintRewards(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(this.address), 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(tokenAddress)
                                call tokenAddress.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stakingAddress, block.timestamp - stor1[address(msg.sender)].field_1536 / epochLength * 0 / stor1[address(msg.sender)].field_1280 - stor1[address(msg.sender)].field_1024 / epochLength
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                require ext_code.size(stakingAddress)
                                call stakingAddress.stake(uint256 arg1, address arg2) with:
                                     gas gas_remaining wei
                                    args 0, msg.sender
                        else:
                            if block.timestamp - stor1[address(msg.sender)].field_1536 / epochLength * 0 / stor1[address(msg.sender)].field_1280 - stor1[address(msg.sender)].field_1024 / epochLength / 10^18 and 10^9 > -1 / block.timestamp - stor1[address(msg.sender)].field_1536 / epochLength * 0 / stor1[address(msg.sender)].field_1280 - stor1[address(msg.sender)].field_1024 / epochLength / 10^18:
                                revert with 'NH{q', 17
                            if not block.timestamp - stor1[address(msg.sender)].field_1536 / epochLength * 0 / stor1[address(msg.sender)].field_1280 - stor1[address(msg.sender)].field_1024 / epochLength / 10^18:
                                revert with 'NH{q', 18
                            if 10^9 * block.timestamp - stor1[address(msg.sender)].field_1536 / epochLength * 0 / stor1[address(msg.sender)].field_1280 - stor1[address(msg.sender)].field_1024 / epochLength / 10^18 / block.timestamp - stor1[address(msg.sender)].field_1536 / epochLength * 0 / stor1[address(msg.sender)].field_1280 - stor1[address(msg.sender)].field_1024 / epochLength / 10^18 != 10^9:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require ext_code.size(treasuryAddress)
                            if not arg1:
                                call treasuryAddress.mintRewards(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, 10^9 * block.timestamp - stor1[address(msg.sender)].field_1536 / epochLength * 0 / stor1[address(msg.sender)].field_1280 - stor1[address(msg.sender)].field_1024 / epochLength / 10^18
                            else:
                                call treasuryAddress.mintRewards(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(this.address), 10^9 * block.timestamp - stor1[address(msg.sender)].field_1536 / epochLength * 0 / stor1[address(msg.sender)].field_1280 - stor1[address(msg.sender)].field_1024 / epochLength / 10^18
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(tokenAddress)
                                call tokenAddress.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stakingAddress, block.timestamp - stor1[address(msg.sender)].field_1536 / epochLength * 0 / stor1[address(msg.sender)].field_1280 - stor1[address(msg.sender)].field_1024 / epochLength
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                require ext_code.size(stakingAddress)
                                call stakingAddress.stake(uint256 arg1, address arg2) with:
                                     gas gas_remaining wei
                                    args 10^9 * block.timestamp - stor1[address(msg.sender)].field_1536 / epochLength * 0 / stor1[address(msg.sender)].field_1280 - stor1[address(msg.sender)].field_1024 / epochLength / 10^18, msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if stor1[address(msg.sender)].field_512 > (-1 * block.timestamp - stor1[address(msg.sender)].field_1536 / epochLength * 0 / stor1[address(msg.sender)].field_1280 - stor1[address(msg.sender)].field_1024 / epochLength) - 1:
                            revert with 'NH{q', 17
                        if stor1[address(msg.sender)].field_512 + (block.timestamp - stor1[address(msg.sender)].field_1536 / epochLength * 0 / stor1[address(msg.sender)].field_1280 - stor1[address(msg.sender)].field_1024 / epochLength) < stor1[address(msg.sender)].field_512:
                            revert with 0, 'SafeMath: addition overflow'
                        stor1[address(msg.sender)].field_512 += block.timestamp - stor1[address(msg.sender)].field_1536 / epochLength * 0 / stor1[address(msg.sender)].field_1280 - stor1[address(msg.sender)].field_1024 / epochLength
                    else:
                        if stor1[address(msg.sender)].field_512 > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < stor1[address(msg.sender)].field_512:
                            revert with 'NH{q', 17
                        if -stor1[address(msg.sender)].field_512 <= 0:
                            revert with 0, 'Reward is not available!'
                        if not -stor1[address(msg.sender)].field_512 / 10^18:
                            require ext_code.size(treasuryAddress)
                            if not arg1:
                                call treasuryAddress.mintRewards(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, 0
                            else:
                                call treasuryAddress.mintRewards(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(this.address), 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(tokenAddress)
                                call tokenAddress.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stakingAddress, -stor1[address(msg.sender)].field_512
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                require ext_code.size(stakingAddress)
                                call stakingAddress.stake(uint256 arg1, address arg2) with:
                                     gas gas_remaining wei
                                    args 0, msg.sender
                        else:
                            if -stor1[address(msg.sender)].field_512 / 10^18 and 10^9 > -1 / -stor1[address(msg.sender)].field_512 / 10^18:
                                revert with 'NH{q', 17
                            if not -stor1[address(msg.sender)].field_512 / 10^18:
                                revert with 'NH{q', 18
                            if 10^9 * -stor1[address(msg.sender)].field_512 / 10^18 / -stor1[address(msg.sender)].field_512 / 10^18 != 10^9:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require ext_code.size(treasuryAddress)
                            if not arg1:
                                call treasuryAddress.mintRewards(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, 10^9 * -stor1[address(msg.sender)].field_512 / 10^18
                            else:
                                call treasuryAddress.mintRewards(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(this.address), 10^9 * -stor1[address(msg.sender)].field_512 / 10^18
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(tokenAddress)
                                call tokenAddress.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stakingAddress, -stor1[address(msg.sender)].field_512
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                require ext_code.size(stakingAddress)
                                call stakingAddress.stake(uint256 arg1, address arg2) with:
                                     gas gas_remaining wei
                                    args 10^9 * -stor1[address(msg.sender)].field_512 / 10^18, msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if stor1[address(msg.sender)].field_512 > stor1[address(msg.sender)].field_512 - 1:
                            revert with 'NH{q', 17
                        if 0 < stor1[address(msg.sender)].field_512:
                            revert with 0, 'SafeMath: addition overflow'
                        stor1[address(msg.sender)].field_512 = 0
        else:
            if stor1[address(msg.sender)].field_256 and rebaseRate > -1 / stor1[address(msg.sender)].field_256:
                revert with 'NH{q', 17
            if not stor1[address(msg.sender)].field_256:
                revert with 'NH{q', 18
            if stor1[address(msg.sender)].field_256 * rebaseRate / stor1[address(msg.sender)].field_256 != rebaseRate:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if stor1[address(msg.sender)].field_1024 > stor1[address(msg.sender)].field_1280:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if stor1[address(msg.sender)].field_1280 < stor1[address(msg.sender)].field_1024:
                revert with 'NH{q', 17
            if epochLength <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not epochLength:
                revert with 'NH{q', 18
            if stor1[address(msg.sender)].field_1536 > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if block.timestamp < stor1[address(msg.sender)].field_1536:
                revert with 'NH{q', 17
            if epochLength <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not epochLength:
                revert with 'NH{q', 18
            if block.timestamp - stor1[address(msg.sender)].field_1536 / epochLength < 1:
                if stor1[address(msg.sender)].field_512 > -1:
                    revert with 'NH{q', 17
                if stor1[address(msg.sender)].field_512 < stor1[address(msg.sender)].field_512:
                    revert with 0, 'SafeMath: addition overflow'
                if stor1[address(msg.sender)].field_512 <= stor1[address(msg.sender)].field_256 * rebaseRate / 10000:
                    revert with 0, 'Reward is not available!'
                if stor1[address(msg.sender)].field_512 > stor1[address(msg.sender)].field_256 * rebaseRate / 10000:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor1[address(msg.sender)].field_256 * rebaseRate / 10000 < stor1[address(msg.sender)].field_512:
                    revert with 'NH{q', 17
                if (stor1[address(msg.sender)].field_256 * rebaseRate / 10000) - stor1[address(msg.sender)].field_512 <= 0:
                    revert with 0, 'Reward is not available!'
                if not (stor1[address(msg.sender)].field_256 * rebaseRate / 10000) - stor1[address(msg.sender)].field_512 / 10^18:
                    require ext_code.size(treasuryAddress)
                    if not arg1:
                        call treasuryAddress.mintRewards(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, 0
                    else:
                        call treasuryAddress.mintRewards(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(this.address), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(tokenAddress)
                        call tokenAddress.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args stakingAddress, (stor1[address(msg.sender)].field_256 * rebaseRate / 10000) - stor1[address(msg.sender)].field_512
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(stakingAddress)
                        call stakingAddress.stake(uint256 arg1, address arg2) with:
                             gas gas_remaining wei
                            args 0, msg.sender
                else:
                    if (stor1[address(msg.sender)].field_256 * rebaseRate / 10000) - stor1[address(msg.sender)].field_512 / 10^18 and 10^9 > -1 / (stor1[address(msg.sender)].field_256 * rebaseRate / 10000) - stor1[address(msg.sender)].field_512 / 10^18:
                        revert with 'NH{q', 17
                    if not (stor1[address(msg.sender)].field_256 * rebaseRate / 10000) - stor1[address(msg.sender)].field_512 / 10^18:
                        revert with 'NH{q', 18
                    if 10^9 * (stor1[address(msg.sender)].field_256 * rebaseRate / 10000) - stor1[address(msg.sender)].field_512 / 10^18 / (stor1[address(msg.sender)].field_256 * rebaseRate / 10000) - stor1[address(msg.sender)].field_512 / 10^18 != 10^9:
                        revert with 0, 'SafeMath: multiplication overflow'
                    require ext_code.size(treasuryAddress)
                    if not arg1:
                        call treasuryAddress.mintRewards(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, 10^9 * (stor1[address(msg.sender)].field_256 * rebaseRate / 10000) - stor1[address(msg.sender)].field_512 / 10^18
                    else:
                        call treasuryAddress.mintRewards(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(this.address), 10^9 * (stor1[address(msg.sender)].field_256 * rebaseRate / 10000) - stor1[address(msg.sender)].field_512 / 10^18
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(tokenAddress)
                        call tokenAddress.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args stakingAddress, (stor1[address(msg.sender)].field_256 * rebaseRate / 10000) - stor1[address(msg.sender)].field_512
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(stakingAddress)
                        call stakingAddress.stake(uint256 arg1, address arg2) with:
                             gas gas_remaining wei
                            args 10^9 * (stor1[address(msg.sender)].field_256 * rebaseRate / 10000) - stor1[address(msg.sender)].field_512 / 10^18, msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if stor1[address(msg.sender)].field_512 > -(stor1[address(msg.sender)].field_256 * rebaseRate / 10000) + stor1[address(msg.sender)].field_512 - 1:
                    revert with 'NH{q', 17
                if stor1[address(msg.sender)].field_256 * rebaseRate / 10000 < stor1[address(msg.sender)].field_512:
                    revert with 0, 'SafeMath: addition overflow'
                stor1[address(msg.sender)].field_512 = stor1[address(msg.sender)].field_256 * rebaseRate / 10000
            else:
                if stor1[address(msg.sender)].field_1280 - stor1[address(msg.sender)].field_1024 / epochLength <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                if not stor1[address(msg.sender)].field_1280 - stor1[address(msg.sender)].field_1024 / epochLength:
                    revert with 'NH{q', 18
                if not block.timestamp - stor1[address(msg.sender)].field_1536 / epochLength:
                    if stor1[address(msg.sender)].field_512 > -1:
                        revert with 'NH{q', 17
                    if stor1[address(msg.sender)].field_512 < stor1[address(msg.sender)].field_512:
                        revert with 0, 'SafeMath: addition overflow'
                    if stor1[address(msg.sender)].field_512 <= stor1[address(msg.sender)].field_256 * rebaseRate / 10000:
                        revert with 0, 'Reward is not available!'
                    if stor1[address(msg.sender)].field_512 > stor1[address(msg.sender)].field_256 * rebaseRate / 10000:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor1[address(msg.sender)].field_256 * rebaseRate / 10000 < stor1[address(msg.sender)].field_512:
                        revert with 'NH{q', 17
                    if (stor1[address(msg.sender)].field_256 * rebaseRate / 10000) - stor1[address(msg.sender)].field_512 <= 0:
                        revert with 0, 'Reward is not available!'
                    if not (stor1[address(msg.sender)].field_256 * rebaseRate / 10000) - stor1[address(msg.sender)].field_512 / 10^18:
                        require ext_code.size(treasuryAddress)
                        if not arg1:
                            call treasuryAddress.mintRewards(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, 0
                        else:
                            call treasuryAddress.mintRewards(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(this.address), 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(tokenAddress)
                            call tokenAddress.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args stakingAddress, (stor1[address(msg.sender)].field_256 * rebaseRate / 10000) - stor1[address(msg.sender)].field_512
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            require ext_code.size(stakingAddress)
                            call stakingAddress.stake(uint256 arg1, address arg2) with:
                                 gas gas_remaining wei
                                args 0, msg.sender
                    else:
                        if (stor1[address(msg.sender)].field_256 * rebaseRate / 10000) - stor1[address(msg.sender)].field_512 / 10^18 and 10^9 > -1 / (stor1[address(msg.sender)].field_256 * rebaseRate / 10000) - stor1[address(msg.sender)].field_512 / 10^18:
                            revert with 'NH{q', 17
                        if not (stor1[address(msg.sender)].field_256 * rebaseRate / 10000) - stor1[address(msg.sender)].field_512 / 10^18:
                            revert with 'NH{q', 18
                        if 10^9 * (stor1[address(msg.sender)].field_256 * rebaseRate / 10000) - stor1[address(msg.sender)].field_512 / 10^18 / (stor1[address(msg.sender)].field_256 * rebaseRate / 10000) - stor1[address(msg.sender)].field_512 / 10^18 != 10^9:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require ext_code.size(treasuryAddress)
                        if not arg1:
                            call treasuryAddress.mintRewards(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, 10^9 * (stor1[address(msg.sender)].field_256 * rebaseRate / 10000) - stor1[address(msg.sender)].field_512 / 10^18
                        else:
                            call treasuryAddress.mintRewards(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(this.address), 10^9 * (stor1[address(msg.sender)].field_256 * rebaseRate / 10000) - stor1[address(msg.sender)].field_512 / 10^18
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(tokenAddress)
                            call tokenAddress.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args stakingAddress, (stor1[address(msg.sender)].field_256 * rebaseRate / 10000) - stor1[address(msg.sender)].field_512
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            require ext_code.size(stakingAddress)
                            call stakingAddress.stake(uint256 arg1, address arg2) with:
                                 gas gas_remaining wei
                                args 10^9 * (stor1[address(msg.sender)].field_256 * rebaseRate / 10000) - stor1[address(msg.sender)].field_512 / 10^18, msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if stor1[address(msg.sender)].field_512 > -(stor1[address(msg.sender)].field_256 * rebaseRate / 10000) + stor1[address(msg.sender)].field_512 - 1:
                        revert with 'NH{q', 17
                    if stor1[address(msg.sender)].field_256 * rebaseRate / 10000 < stor1[address(msg.sender)].field_512:
                        revert with 0, 'SafeMath: addition overflow'
                    stor1[address(msg.sender)].field_512 = stor1[address(msg.sender)].field_256 * rebaseRate / 10000
                else:
                    if block.timestamp - stor1[address(msg.sender)].field_1536 / epochLength and stor1[address(msg.sender)].field_256 * rebaseRate / 10000 / stor1[address(msg.sender)].field_1280 - stor1[address(msg.sender)].field_1024 / epochLength > -1 / block.timestamp - stor1[address(msg.sender)].field_1536 / epochLength:
                        revert with 'NH{q', 17
                    if not block.timestamp - stor1[address(msg.sender)].field_1536 / epochLength:
                        revert with 'NH{q', 18
                    if block.timestamp - stor1[address(msg.sender)].field_1536 / epochLength * stor1[address(msg.sender)].field_256 * rebaseRate / 10000 / stor1[address(msg.sender)].field_1280 - stor1[address(msg.sender)].field_1024 / epochLength / block.timestamp - stor1[address(msg.sender)].field_1536 / epochLength != stor1[address(msg.sender)].field_256 * rebaseRate / 10000 / stor1[address(msg.sender)].field_1280 - stor1[address(msg.sender)].field_1024 / epochLength:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if stor1[address(msg.sender)].field_512 > (-1 * block.timestamp - stor1[address(msg.sender)].field_1536 / epochLength * stor1[address(msg.sender)].field_256 * rebaseRate / 10000 / stor1[address(msg.sender)].field_1280 - stor1[address(msg.sender)].field_1024 / epochLength) - 1:
                        revert with 'NH{q', 17
                    if stor1[address(msg.sender)].field_512 + (block.timestamp - stor1[address(msg.sender)].field_1536 / epochLength * stor1[address(msg.sender)].field_256 * rebaseRate / 10000 / stor1[address(msg.sender)].field_1280 - stor1[address(msg.sender)].field_1024 / epochLength) < stor1[address(msg.sender)].field_512:
                        revert with 0, 'SafeMath: addition overflow'
                    if stor1[address(msg.sender)].field_512 + (block.timestamp - stor1[address(msg.sender)].field_1536 / epochLength * stor1[address(msg.sender)].field_256 * rebaseRate / 10000 / stor1[address(msg.sender)].field_1280 - stor1[address(msg.sender)].field_1024 / epochLength) <= stor1[address(msg.sender)].field_256 * rebaseRate / 10000:
                        if block.timestamp - stor1[address(msg.sender)].field_1536 / epochLength * stor1[address(msg.sender)].field_256 * rebaseRate / 10000 / stor1[address(msg.sender)].field_1280 - stor1[address(msg.sender)].field_1024 / epochLength <= 0:
                            revert with 0, 'Reward is not available!'
                        if not block.timestamp - stor1[address(msg.sender)].field_1536 / epochLength * stor1[address(msg.sender)].field_256 * rebaseRate / 10000 / stor1[address(msg.sender)].field_1280 - stor1[address(msg.sender)].field_1024 / epochLength / 10^18:
                            require ext_code.size(treasuryAddress)
                            if not arg1:
                                call treasuryAddress.mintRewards(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, 0
                            else:
                                call treasuryAddress.mintRewards(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(this.address), 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(tokenAddress)
                                call tokenAddress.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stakingAddress, block.timestamp - stor1[address(msg.sender)].field_1536 / epochLength * stor1[address(msg.sender)].field_256 * rebaseRate / 10000 / stor1[address(msg.sender)].field_1280 - stor1[address(msg.sender)].field_1024 / epochLength
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                require ext_code.size(stakingAddress)
                                call stakingAddress.stake(uint256 arg1, address arg2) with:
                                     gas gas_remaining wei
                                    args 0, msg.sender
                        else:
                            if block.timestamp - stor1[address(msg.sender)].field_1536 / epochLength * stor1[address(msg.sender)].field_256 * rebaseRate / 10000 / stor1[address(msg.sender)].field_1280 - stor1[address(msg.sender)].field_1024 / epochLength / 10^18 and 10^9 > -1 / block.timestamp - stor1[address(msg.sender)].field_1536 / epochLength * stor1[address(msg.sender)].field_256 * rebaseRate / 10000 / stor1[address(msg.sender)].field_1280 - stor1[address(msg.sender)].field_1024 / epochLength / 10^18:
                                revert with 'NH{q', 17
                            if not block.timestamp - stor1[address(msg.sender)].field_1536 / epochLength * stor1[address(msg.sender)].field_256 * rebaseRate / 10000 / stor1[address(msg.sender)].field_1280 - stor1[address(msg.sender)].field_1024 / epochLength / 10^18:
                                revert with 'NH{q', 18
                            if 10^9 * block.timestamp - stor1[address(msg.sender)].field_1536 / epochLength * stor1[address(msg.sender)].field_256 * rebaseRate / 10000 / stor1[address(msg.sender)].field_1280 - stor1[address(msg.sender)].field_1024 / epochLength / 10^18 / block.timestamp - stor1[address(msg.sender)].field_1536 / epochLength * stor1[address(msg.sender)].field_256 * rebaseRate / 10000 / stor1[address(msg.sender)].field_1280 - stor1[address(msg.sender)].field_1024 / epochLength / 10^18 != 10^9:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require ext_code.size(treasuryAddress)
                            if not arg1:
                                call treasuryAddress.mintRewards(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, 10^9 * block.timestamp - stor1[address(msg.sender)].field_1536 / epochLength * stor1[address(msg.sender)].field_256 * rebaseRate / 10000 / stor1[address(msg.sender)].field_1280 - stor1[address(msg.sender)].field_1024 / epochLength / 10^18
                            else:
                                call treasuryAddress.mintRewards(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(this.address), 10^9 * block.timestamp - stor1[address(msg.sender)].field_1536 / epochLength * stor1[address(msg.sender)].field_256 * rebaseRate / 10000 / stor1[address(msg.sender)].field_1280 - stor1[address(msg.sender)].field_1024 / epochLength / 10^18
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(tokenAddress)
                                call tokenAddress.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stakingAddress, block.timestamp - stor1[address(msg.sender)].field_1536 / epochLength * stor1[address(msg.sender)].field_256 * rebaseRate / 10000 / stor1[address(msg.sender)].field_1280 - stor1[address(msg.sender)].field_1024 / epochLength
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                require ext_code.size(stakingAddress)
                                call stakingAddress.stake(uint256 arg1, address arg2) with:
                                     gas gas_remaining wei
                                    args 10^9 * block.timestamp - stor1[address(msg.sender)].field_1536 / epochLength * stor1[address(msg.sender)].field_256 * rebaseRate / 10000 / stor1[address(msg.sender)].field_1280 - stor1[address(msg.sender)].field_1024 / epochLength / 10^18, msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if stor1[address(msg.sender)].field_512 > (-1 * block.timestamp - stor1[address(msg.sender)].field_1536 / epochLength * stor1[address(msg.sender)].field_256 * rebaseRate / 10000 / stor1[address(msg.sender)].field_1280 - stor1[address(msg.sender)].field_1024 / epochLength) - 1:
                            revert with 'NH{q', 17
                        if stor1[address(msg.sender)].field_512 + (block.timestamp - stor1[address(msg.sender)].field_1536 / epochLength * stor1[address(msg.sender)].field_256 * rebaseRate / 10000 / stor1[address(msg.sender)].field_1280 - stor1[address(msg.sender)].field_1024 / epochLength) < stor1[address(msg.sender)].field_512:
                            revert with 0, 'SafeMath: addition overflow'
                        stor1[address(msg.sender)].field_512 += block.timestamp - stor1[address(msg.sender)].field_1536 / epochLength * stor1[address(msg.sender)].field_256 * rebaseRate / 10000 / stor1[address(msg.sender)].field_1280 - stor1[address(msg.sender)].field_1024 / epochLength
                    else:
                        if stor1[address(msg.sender)].field_512 > stor1[address(msg.sender)].field_256 * rebaseRate / 10000:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if stor1[address(msg.sender)].field_256 * rebaseRate / 10000 < stor1[address(msg.sender)].field_512:
                            revert with 'NH{q', 17
                        if (stor1[address(msg.sender)].field_256 * rebaseRate / 10000) - stor1[address(msg.sender)].field_512 <= 0:
                            revert with 0, 'Reward is not available!'
                        if not (stor1[address(msg.sender)].field_256 * rebaseRate / 10000) - stor1[address(msg.sender)].field_512 / 10^18:
                            require ext_code.size(treasuryAddress)
                            if not arg1:
                                call treasuryAddress.mintRewards(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, 0
                            else:
                                call treasuryAddress.mintRewards(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(this.address), 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(tokenAddress)
                                call tokenAddress.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stakingAddress, (stor1[address(msg.sender)].field_256 * rebaseRate / 10000) - stor1[address(msg.sender)].field_512
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                require ext_code.size(stakingAddress)
                                call stakingAddress.stake(uint256 arg1, address arg2) with:
                                     gas gas_remaining wei
                                    args 0, msg.sender
                        else:
                            if (stor1[address(msg.sender)].field_256 * rebaseRate / 10000) - stor1[address(msg.sender)].field_512 / 10^18 and 10^9 > -1 / (stor1[address(msg.sender)].field_256 * rebaseRate / 10000) - stor1[address(msg.sender)].field_512 / 10^18:
                                revert with 'NH{q', 17
                            if not (stor1[address(msg.sender)].field_256 * rebaseRate / 10000) - stor1[address(msg.sender)].field_512 / 10^18:
                                revert with 'NH{q', 18
                            if 10^9 * (stor1[address(msg.sender)].field_256 * rebaseRate / 10000) - stor1[address(msg.sender)].field_512 / 10^18 / (stor1[address(msg.sender)].field_256 * rebaseRate / 10000) - stor1[address(msg.sender)].field_512 / 10^18 != 10^9:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require ext_code.size(treasuryAddress)
                            if not arg1:
                                call treasuryAddress.mintRewards(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, 10^9 * (stor1[address(msg.sender)].field_256 * rebaseRate / 10000) - stor1[address(msg.sender)].field_512 / 10^18
                            else:
                                call treasuryAddress.mintRewards(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(this.address), 10^9 * (stor1[address(msg.sender)].field_256 * rebaseRate / 10000) - stor1[address(msg.sender)].field_512 / 10^18
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(tokenAddress)
                                call tokenAddress.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stakingAddress, (stor1[address(msg.sender)].field_256 * rebaseRate / 10000) - stor1[address(msg.sender)].field_512
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                require ext_code.size(stakingAddress)
                                call stakingAddress.stake(uint256 arg1, address arg2) with:
                                     gas gas_remaining wei
                                    args 10^9 * (stor1[address(msg.sender)].field_256 * rebaseRate / 10000) - stor1[address(msg.sender)].field_512 / 10^18, msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if stor1[address(msg.sender)].field_512 > -(stor1[address(msg.sender)].field_256 * rebaseRate / 10000) + stor1[address(msg.sender)].field_512 - 1:
                            revert with 'NH{q', 17
                        if stor1[address(msg.sender)].field_256 * rebaseRate / 10000 < stor1[address(msg.sender)].field_512:
                            revert with 0, 'SafeMath: addition overflow'
                        stor1[address(msg.sender)].field_512 = stor1[address(msg.sender)].field_256 * rebaseRate / 10000
    stor1[address(msg.sender)].field_1536 = block.timestamp
}



}

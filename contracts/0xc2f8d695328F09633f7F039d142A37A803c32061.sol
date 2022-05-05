contract main {




// =====================  Runtime code  =====================


#
#  - claim()
#
const ARD_ALLOCATION = 50000 * 10^18


address owner;
uint256 stor1;
address ARDAddress;
address buyingTokenAddress;
uint256 roundActive;
mapping of struct rounds;
mapping of uint8 stor6;
mapping of uint256 tokenBought;
mapping of uint256 totalBuyingTokenSpend;
uint256 totalTokenSold;
array of uint256 claimableTimestamp;
mapping of uint256 claimablePercents;
mapping of uint256 claimCounts;

function roundActive() payable {
    return roundActive
}

function ARD() payable {
    return ARDAddress
}

function getRoundActive() payable {
    return roundActive
}

function totalBuyingTokenSpend(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return totalBuyingTokenSpend[arg1][arg2]
}

function claimableTimestamp(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < claimableTimestamp.length
    return claimableTimestamp[arg1]
}

function getTokenBought(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0, 'Zero address'
    return tokenBought[address(arg1)]
}

function rounds(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return rounds[arg1].field_0, rounds[arg1].field_256, rounds[arg1].field_512, rounds[arg1].field_768
}

function owner() payable {
    return owner
}

function claimablePercents(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return claimablePercents[arg1]
}

function tokenBoughtTotal(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return tokenBought[arg1]
}

function totalTokenSold() payable {
    return totalTokenSold
}

function claimCounts(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return claimCounts[arg1]
}

function BuyingToken() payable {
    return buyingTokenAddress
}

function whiteListed(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor6[arg1])
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

function setArdToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'Zero address'
    ARDAddress = arg1
}

function setUsdcToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'Zero address'
    buyingTokenAddress = arg1
}

function setActiveRound(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 != 1:
        if arg1 != 2:
            revert with 0, 'Round ID invalid'
    roundActive = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setRoundSale(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 != 1:
        if arg1 != 2:
            revert with 0, 'Round ID invalid'
    if arg3 >= arg4:
        revert with 0, 'Spend invalid'
    rounds[arg1].field_0 = arg2
    rounds[arg1].field_256 = arg3
    rounds[arg1].field_512 = arg4
    rounds[arg1].field_768 = arg5
}

function withdrawFunds() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(buyingTokenAddress)
    staticcall buyingTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(buyingTokenAddress)
    call buyingTokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function withdrawUnsold() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(ARDAddress)
    staticcall ARDAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < totalTokenSold:
        revert with 'NH{q', 17
    require ext_code.size(ARDAddress)
    call ARDAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0] - totalTokenSold
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function addToWhiteList(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg1.length) + 97 > test266151307() or floor32(arg1.length) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1.length <= 0:
        revert with 0, 'Invalid input'
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 6
        stor6[mem[(32 * idx) + 140 len 20]] = 1
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function removeFromWhiteList(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg1.length) + 97 > test266151307() or floor32(arg1.length) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1.length <= 0:
        revert with 0, 'Invalid input'
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 6
        stor6[mem[(32 * idx) + 140 len 20]] = 0
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function setClaimableBlocks(uint256[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg1.length) + 97 > test266151307() or floor32(arg1.length) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1.length <= 0:
        revert with 0, 'Empty input'
    claimableTimestamp.length = arg1.length
    if not arg1.length:
        idx = 0
        while claimableTimestamp.length > idx:
            claimableTimestamp[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg1.length) + 128 > idx:
            claimableTimestamp[s] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
        while claimableTimestamp.length > idx:
            claimableTimestamp[idx] = 0
            idx = idx + 1
            continue 
}

function setClaimablePercents(uint256[] arg1, uint256[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg1.length) + 97 > test266151307() or floor32(arg1.length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg1.length
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg1.length) + floor32(arg2.length) + 98 > test266151307() or floor32(arg2.length) + 98 < 97:
        revert with 'NH{q', 65
    mem[floor32(arg1.length) + 97] = arg2.length
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    idx = 0
    s = arg2 + 36
    t = floor32(arg1.length) + 129
    while idx < arg2.length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1.length <= 0:
        revert with 0, 'Empty input'
    if arg1.length != arg2.length:
        revert with 0, 'Empty input'
    idx = 0
    while idx < arg1.length:
        if idx >= arg2.length:
            revert with 'NH{q', 50
        if idx >= arg1.length:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 11
        claimablePercents[mem[(32 * idx) + 128]] = mem[(32 * idx) + floor32(arg1.length) + 129]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function buy(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if roundActive != 1:
        if roundActive != 2:
            revert with 0, 'No open sale rounds found'
    if block.timestamp < rounds[stor4].field_768:
        revert with 0, 'Presale has not started'
    if roundActive == 1:
        if bool(stor6[address(msg.sender)]) != 1:
            revert with 0, 'Not whitelisted'
    if totalBuyingTokenSpend[stor4][address(msg.sender)] > -arg1 - 1:
        revert with 'NH{q', 17
    if totalBuyingTokenSpend[stor4][address(msg.sender)] + arg1 < rounds[stor4].field_256:
        revert with 0, 'Below minimum amount'
    if totalBuyingTokenSpend[stor4][address(msg.sender)] > -arg1 - 1:
        revert with 'NH{q', 17
    if totalBuyingTokenSpend[stor4][address(msg.sender)] + arg1 > rounds[stor4].field_512:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You have reached maximum spend amount per user'
    if not rounds[stor4].field_0:
        revert with 'NH{q', 18
    if arg1 / rounds[stor4].field_0 and 1000 > -1 / arg1 / rounds[stor4].field_0:
        revert with 'NH{q', 17
    if totalTokenSold > (-1000 * arg1 / rounds[stor4].field_0) - 1:
        revert with 'NH{q', 17
    if totalTokenSold + (1000 * arg1 / rounds[stor4].field_0) > 50000 * 10^18:
        revert with 0, 'Token presale hardcap reached'
    require ext_code.size(buyingTokenAddress)
    call buyingTokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if tokenBought[address(msg.sender)] > (-1000 * arg1 / rounds[stor4].field_0) - 1:
        revert with 'NH{q', 17
    tokenBought[address(msg.sender)] += 1000 * arg1 / rounds[stor4].field_0
    if totalBuyingTokenSpend[stor4][address(msg.sender)] > -arg1 - 1:
        revert with 'NH{q', 17
    totalBuyingTokenSpend[stor4][address(msg.sender)] += arg1
    if totalTokenSold > (-1000 * arg1 / rounds[stor4].field_0) - 1:
        revert with 'NH{q', 17
    totalTokenSold += 1000 * arg1 / rounds[stor4].field_0
    emit TokenBuy(msg.sender, 1000 * arg1 / rounds[stor4].field_0);
    stor1 = 1
}



}

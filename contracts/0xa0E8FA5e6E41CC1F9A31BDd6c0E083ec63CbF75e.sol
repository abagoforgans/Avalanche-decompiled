contract main {




// =====================  Runtime code  =====================


address owner;
uint256 saleStartTimestamp;
uint256 saleEndTimestamp;
uint256 sub_dfc5d02f;
uint256 sub_265385cd;
address sub_7d71a7afAddress;
address sub_cf3085f6Address;
uint256 tokenPrice;
uint256 MAX_BUY_LIMIT;
uint256 tokenSold;
uint256 totalDeposited;
mapping of uint8 stor11;
mapping of uint256 sub_71d9a35b;
mapping of uint256 sub_2546cd37;
mapping of uint256 claimAmount;

function sub_2546cd37(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_2546cd37[arg1]
}

function sub_265385cd(?) payable {
    return sub_265385cd
}

function saleStartTimestamp() payable {
    return saleStartTimestamp
}

function tokenSold() payable {
    return tokenSold
}

function sub_71d9a35b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_71d9a35b[arg1]
}

function claimAmount(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return claimAmount[arg1]
}

function sub_7d71a7af(?) payable {
    return sub_7d71a7afAddress
}

function tokenPrice() payable {
    return tokenPrice
}

function owner() payable {
    return owner
}

function MAX_BUY_LIMIT() payable {
    return MAX_BUY_LIMIT
}

function saleEndTimestamp() payable {
    return saleEndTimestamp
}

function sub_cf3085f6(?) payable {
    return sub_cf3085f6Address
}

function sub_dfc5d02f(?) payable {
    return sub_dfc5d02f
}

function whiteListed(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor11[arg1])
}

function totalDeposited() payable {
    return totalDeposited
}

function _fallback() payable {
    revert
}

function claimStarted() payable {
    if not sub_dfc5d02f:
        return 0
    return (block.timestamp > sub_dfc5d02f)
}

function sub_2b828331(?) payable {
    if not sub_265385cd:
        return 0
    return (block.timestamp > sub_265385cd)
}

function saleEnded() payable {
    if not saleEndTimestamp:
        return 0
    return (block.timestamp > saleEndTimestamp)
}

function saleStarted() payable {
    if not saleStartTimestamp:
        return 0
    return (block.timestamp > saleStartTimestamp)
}

function setTokenPrice(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    tokenPrice = arg1
}

function setMaxBuyLimit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    MAX_BUY_LIMIT = arg1
}

function sub_03d89b12(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_7d71a7afAddress = address(arg1)
}

function setPresaleTokenAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_cf3085f6Address = arg1
}

function sub_874749b5(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_dfc5d02f = arg1
    sub_265385cd = arg2
}

function sub_4531a8ec(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    saleStartTimestamp = arg1
    saleEndTimestamp = arg2
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

function claim() payable {
    if not sub_dfc5d02f:
        revert with 0, 'Claim is not started'
    if block.timestamp > sub_dfc5d02f != 1:
        revert with 0, 'Claim is not started'
    if bool(stor11[address(msg.sender)]) != 1:
        revert with 0, 'Not whitelisted'
    if sub_265385cd:
        if block.timestamp > sub_265385cd:
            revert with 0, 'Claim over'
    call sub_cf3085f6Address.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, claimAmount[address(msg.sender)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit Claimed(claimAmount[address(msg.sender)], msg.sender);
}

function withdraw(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not saleEndTimestamp:
        revert with 0, 'Sale is not over'
    if block.timestamp > saleEndTimestamp != 1:
        revert with 0, 'Sale is not over'
    staticcall sub_7d71a7afAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    call sub_7d71a7afAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function getUnsoldTokens(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not saleEndTimestamp:
        revert with 0, 'Sale is not over'
    if block.timestamp > saleEndTimestamp != 1:
        revert with 0, 'Sale is not over'
    staticcall sub_cf3085f6Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    call sub_cf3085f6Address.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function setWhitelist(address[] arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg1.length) + 97 > test266151307() or floor32(arg1.length) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = arg1 + 36
    s = 128
    while idx < arg1 + (32 * arg1.length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 'NH{q', 50
        stor11[mem[(32 * idx) + 140 len 20]] = uint8(arg2)
        if idx >= arg1.length:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 13
        sub_2546cd37[mem[(32 * idx) + 140 len 20]] = 0
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function buy(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not saleStartTimestamp:
        revert with 0, 'Sale is not started'
    if block.timestamp > saleStartTimestamp != 1:
        revert with 0, 'Sale is not started'
    if bool(stor11[address(msg.sender)]) != 1:
        revert with 0, 'Not whitelisted'
    if arg1 > MAX_BUY_LIMIT:
        revert with 0, 'Payment declined'
    if sub_2546cd37[address(msg.sender)] > -arg1 - 1:
        revert with 'NH{q', 17
    if sub_2546cd37[address(msg.sender)] + arg1 > MAX_BUY_LIMIT:
        revert with 0, 'Payment declined'
    if saleEndTimestamp:
        if block.timestamp > saleEndTimestamp:
            revert with 0, 'Sale over'
    call sub_7d71a7afAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if sub_71d9a35b[address(msg.sender)] > -arg1 - 1:
        revert with 'NH{q', 17
    sub_71d9a35b[address(msg.sender)] += arg1
    if sub_2546cd37[address(msg.sender)] > -arg1 - 1:
        revert with 'NH{q', 17
    sub_2546cd37[address(msg.sender)] += arg1
    if not arg1:
        if not tokenPrice:
            revert with 'NH{q', 18
        if claimAmount[address(msg.sender)] > -(0 / tokenPrice) - 1:
            revert with 'NH{q', 17
        claimAmount[address(msg.sender)] += 0 / tokenPrice
        if tokenSold > -(0 / tokenPrice) - 1:
            revert with 'NH{q', 17
        tokenSold += 0 / tokenPrice
    else:
        if arg1 and 10^9 > -1 / arg1:
            revert with 'NH{q', 17
        if not arg1:
            revert with 'NH{q', 18
        if 10^9 * arg1 / arg1 != 10^9:
            revert with 'NH{q', 1
        if not tokenPrice:
            revert with 'NH{q', 18
        if claimAmount[address(msg.sender)] > -(10^9 * arg1 / tokenPrice) - 1:
            revert with 'NH{q', 17
        claimAmount[address(msg.sender)] += 10^9 * arg1 / tokenPrice
        if tokenSold > -(10^9 * arg1 / tokenPrice) - 1:
            revert with 'NH{q', 17
        tokenSold += 10^9 * arg1 / tokenPrice
    if totalDeposited > -arg1 - 1:
        revert with 'NH{q', 17
    totalDeposited += arg1
    emit Purchase(arg1);
}



}

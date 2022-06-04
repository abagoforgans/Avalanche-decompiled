contract main {




// =====================  Runtime code  =====================


address owner;
uint256 saleStartTimestamp;
uint256 saleEndTimestamp;
uint256 sub_dfc5d02f;
uint256 sub_265385cd;
address sub_cf3085f6Address;
uint256 tokenPrice;
uint256 MAX_BUY_LIMIT;
uint256 tokenSold;
uint256 totalDeposited;
mapping of uint8 stor10;
mapping of uint256 sub_71d9a35b;
mapping of uint256 sub_2546cd37;
mapping of uint256 claimAmount;

function sub_2546cd37(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_2546cd37[arg1]
}

function sub_265385cd(?) {
    return sub_265385cd
}

function saleStartTimestamp() {
    return saleStartTimestamp
}

function tokenSold() {
    return tokenSold
}

function sub_71d9a35b(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_71d9a35b[arg1]
}

function claimAmount(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return claimAmount[arg1]
}

function tokenPrice() {
    return tokenPrice
}

function owner() {
    return owner
}

function MAX_BUY_LIMIT() {
    return MAX_BUY_LIMIT
}

function saleEndTimestamp() {
    return saleEndTimestamp
}

function sub_cf3085f6(?) {
    return sub_cf3085f6Address
}

function sub_dfc5d02f(?) {
    return sub_dfc5d02f
}

function whiteListed(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor10[arg1])
}

function totalDeposited() {
    return totalDeposited
}

function _fallback() payable {
    revert
}

function claimStarted() {
    if not sub_dfc5d02f:
        return 0
    return (block.timestamp > sub_dfc5d02f)
}

function sub_2b828331(?) {
    if not sub_265385cd:
        return 0
    return (block.timestamp > sub_265385cd)
}

function saleEnded() {
    if not saleEndTimestamp:
        return 0
    return (block.timestamp > saleEndTimestamp)
}

function saleStarted() {
    if not saleStartTimestamp:
        return 0
    return (block.timestamp > saleStartTimestamp)
}

function setTokenPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    tokenPrice = arg1
}

function setMaxBuyLimit(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    MAX_BUY_LIMIT = arg1
}

function setPresaleTokenAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_cf3085f6Address = arg1
}

function sub_874749b5(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_dfc5d02f = arg1
    sub_265385cd = arg2
}

function sub_4531a8ec(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    saleStartTimestamp = arg1
    saleEndTimestamp = arg2
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function withdraw() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not saleEndTimestamp:
        revert with 0, 'Sale is not over'
    if block.timestamp > saleEndTimestamp != 1:
        revert with 0, 'Sale is not over'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function claim() {
    if not sub_dfc5d02f:
        revert with 0, 'Claim is not started'
    if block.timestamp > sub_dfc5d02f != 1:
        revert with 0, 'Claim is not started'
    if bool(stor10[address(msg.sender)]) != 1:
        revert with 0, 'Not whitelisted'
    if sub_265385cd:
        if block.timestamp > sub_265385cd:
            revert with 0, 'Claim over'
    call sub_cf3085f6Address.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, claimAmount[address(msg.sender)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit Claimed(claimAmount[address(msg.sender)], msg.sender);
}

function getUnsoldTokens(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not saleEndTimestamp:
        revert with 0, 'Sale is not over'
    if block.timestamp > saleEndTimestamp != 1:
        revert with 0, 'Sale is not over'
    staticcall sub_cf3085f6Address.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    call sub_cf3085f6Address.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function setWhitelist(address[] arg1, bool arg2) {
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
        stor10[mem[(32 * idx) + 140 len 20]] = uint8(arg2)
        if idx >= arg1.length:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 12
        sub_2546cd37[mem[(32 * idx) + 140 len 20]] = 0
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function buy() payable {
    if not saleStartTimestamp:
        revert with 0, 'Sale is not started'
    if block.timestamp > saleStartTimestamp != 1:
        revert with 0, 'Sale is not started'
    if bool(stor10[address(msg.sender)]) != 1:
        revert with 0, 'Not whitelisted'
    if msg.value > MAX_BUY_LIMIT:
        revert with 0, 'Payment declined'
    if sub_2546cd37[address(msg.sender)] > -msg.value - 1:
        revert with 'NH{q', 17
    if sub_2546cd37[address(msg.sender)] + msg.value > MAX_BUY_LIMIT:
        revert with 0, 'Payment declined'
    if saleEndTimestamp:
        if block.timestamp > saleEndTimestamp:
            revert with 0, 'Sale over'
    if sub_71d9a35b[address(msg.sender)] > -msg.value - 1:
        revert with 'NH{q', 17
    sub_71d9a35b[address(msg.sender)] += msg.value
    if sub_2546cd37[address(msg.sender)] > -msg.value - 1:
        revert with 'NH{q', 17
    sub_2546cd37[address(msg.sender)] += msg.value
    if not msg.value:
        if not tokenPrice:
            revert with 'NH{q', 18
        if claimAmount[address(msg.sender)] > -(0 / tokenPrice) - 1:
            revert with 'NH{q', 17
        claimAmount[address(msg.sender)] += 0 / tokenPrice
        if tokenSold > -(0 / tokenPrice) - 1:
            revert with 'NH{q', 17
        tokenSold += 0 / tokenPrice
    else:
        if msg.value and 10^9 > -1 / msg.value:
            revert with 'NH{q', 17
        if not msg.value:
            revert with 'NH{q', 18
        if 10^9 * msg.value / msg.value != 10^9:
            revert with 'NH{q', 1
        if not tokenPrice:
            revert with 'NH{q', 18
        if claimAmount[address(msg.sender)] > -(10^9 * msg.value / tokenPrice) - 1:
            revert with 'NH{q', 17
        claimAmount[address(msg.sender)] += 10^9 * msg.value / tokenPrice
        if tokenSold > -(10^9 * msg.value / tokenPrice) - 1:
            revert with 'NH{q', 17
        tokenSold += 10^9 * msg.value / tokenPrice
    if totalDeposited > -msg.value - 1:
        revert with 'NH{q', 17
    totalDeposited += msg.value
    emit Purchase(msg.value);
}



}

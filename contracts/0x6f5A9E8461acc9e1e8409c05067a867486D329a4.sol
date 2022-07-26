contract main {




// =====================  Runtime code  =====================


uint256 stor0;
address owner;
address sub_9b2310c3Address;
address stor3;
uint256 saleStart;
uint256 saleEnd;
uint256 supply;
uint256 distributed;
uint256 sub_be9e500e;
uint256 presaleSupply;
mapping of uint256 sub_ccc7139c;
address adminAddress;
uint256 balance;
address stor13;
array of struct sub_83f96dfc;
uint256 sub_40615ffb;
mapping of uint256 sub_8ede9d43;
mapping of uint256 sub_68218a14;

function supply() {
    return supply
}

function sub_40615ffb(?) {
    return sub_40615ffb
}

function sub_68218a14(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_68218a14[arg1]
}

function sub_83f96dfc(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_83f96dfc[address(arg1)].field_0
}

function owner() {
    return owner
}

function sub_8ede9d43(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_8ede9d43[arg1]
}

function sub_9b2310c3(?) {
    return sub_9b2310c3Address
}

function saleStart() {
    return saleStart
}

function presaleSupply() {
    return presaleSupply
}

function balance() {
    return balance
}

function sub_be9e500e(?) {
    return sub_be9e500e
}

function saleEnd() {
    return saleEnd
}

function sub_ccc7139c(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_ccc7139c[arg1]
}

function distributed() {
    return distributed
}

function adminAddress() {
    return adminAddress
}

function _fallback() payable {
    revert
}

function isSaleActive() {
    if block.timestamp < saleStart:
        return block.timestamp >= saleStart
    return block.timestamp <= saleEnd
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_7c7e67f1(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor13 = address(arg1)
    sub_9b2310c3Address = address(arg1)
}

function setAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, '!nonZero'
    adminAddress = arg1
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

function refund() {
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if not sub_ccc7139c[msg.sender]:
        revert with 0, 'Nothing to refund'
    sub_ccc7139c[msg.sender] = 0
    call msg.sender with:
       value sub_ccc7139c[msg.sender] wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Unable to refund exceeding ether'
    stor0 = 1
}

function updateSaleStart(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if saleStart >= block.timestamp:
        revert with 0, 'Sale has already started'
    if arg1 <= block.timestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Sale start time should be in the future'
    saleStart = arg1
}

function sub_76ddcf68(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if block.timestamp <= saleEnd:
        revert with 0, 'Sale not ended'
    if not adminAddress:
        revert with 0, 'Admin not set'
    call adminAddress with:
       value balance wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    balance = 0
}

function sub_144fdcdf(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if saleStart >= arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Sale end time should be after sale start time'
    if arg1 <= block.timestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Sale end time should be in the future'
    saleEnd = arg1
}

function sub_f400d40a(?) {
    require ext_code.size(stor3)
    staticcall stor3.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    if ext_call.return_data[32] and 10^10 > -1 / ext_call.return_data[32]:
        revert with 0, 17
    if 10^10 * ext_call.return_data[32] and sub_be9e500e > -1 / 10^10 * ext_call.return_data[32]:
        revert with 0, 17
    return (10^10 * ext_call.return_data[32] * sub_be9e500e / 10^18)
}

function destroy() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if saleEnd > -3601:
        revert with 0, 17
    if block.timestamp <= saleEnd + 3600:
        revert with 0, 'Destruction not enabled yet'
    if supply <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Remaining supply already burned or all funds sold'
    supply = 0
    require ext_code.size(sub_9b2310c3Address)
    call sub_9b2310c3Address.0x45fbdf54 with:
         gas gas_remaining wei
        args supply
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Destroyed(supply);
    stor0 = 1
}

function locksOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = arg1
    mem[32] = 15
    mem[64] = (32 * sub_83f96dfc[address(arg1)].field_0) + 128
    mem[96] = sub_83f96dfc[address(arg1)].field_0
    s = 128
    idx = 0
    while idx < sub_83f96dfc[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 15)
        _13 = mem[64]
        mem[64] = mem[64] + 96
        mem[_13] = sub_83f96dfc[address(arg1)][idx].field_0
        mem[_13 + 32] = sub_83f96dfc[address(arg1)][idx].field_256
        mem[_13 + 64] = bool(sub_83f96dfc[address(arg1)][idx].field_512)
        mem[s] = _13
        s = s + 32
        idx = idx + 1
        continue 
    _14 = mem[64]
    mem[mem[64]] = 32
    _15 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _15:
        _21 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_21 + 32]
        mem[t + 64] = bool(mem[_21 + 64])
        idx = idx + 1
        s = s + 32
        t = t + 96
        continue 
    return memory
      from mem[64]
       len _14 + (96 * _15) + -mem[64] + 64
}

function sub_aa940820(?) {
    if block.timestamp >= saleEnd:
        revert with 0, 'Sale ended'
    if not sub_8ede9d43[msg.sender]:
        revert with 0, 'No AVAX deposit to withdraw'
    call msg.sender with:
       value sub_8ede9d43[msg.sender] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if distributed < sub_68218a14[msg.sender]:
        revert with 0, 17
    distributed -= sub_68218a14[msg.sender]
    if sub_40615ffb < sub_68218a14[msg.sender]:
        revert with 0, 17
    sub_40615ffb -= sub_68218a14[msg.sender]
    if supply > !sub_68218a14[msg.sender]:
        revert with 0, 17
    supply += sub_68218a14[msg.sender]
    sub_68218a14[msg.sender] = 0
    sub_83f96dfc[msg.sender].field_0 = 0
    idx = 0
    while 3 * sub_83f96dfc[msg.sender].field_0 > idx:
        sub_83f96dfc[msg.sender][idx].field_0 = 0
        sub_83f96dfc[msg.sender][idx].field_256 = 0
        sub_83f96dfc[msg.sender][idx].field_512 = 0
        idx = idx + 3
        continue 
    if balance < sub_8ede9d43[msg.sender]:
        revert with 0, 17
    balance -= sub_8ede9d43[msg.sender]
    sub_8ede9d43[msg.sender] = 0
    emit 0x67b5a1e8: 0, msg.sender
}

function sub_c909b54e(?) {
    require calldata.size - 4 >= 32
    if not sub_83f96dfc[msg.sender].field_0:
        revert with 0, 'No locks found for your account'
    if sub_83f96dfc[msg.sender].field_0 < 1:
        revert with 0, 17
    if sub_83f96dfc[msg.sender].field_0 - 1 < arg1:
        revert with 0, 'Lock index too high'
    if arg1 >= sub_83f96dfc[msg.sender].field_0:
        revert with 0, 50
    if sub_83f96dfc[msg.sender][arg1].field_512:
        revert with 0, 'Lock already released'
    if arg1 >= sub_83f96dfc[msg.sender].field_0:
        revert with 0, 50
    if block.timestamp <= sub_83f96dfc[msg.sender][arg1].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Lock not yet ready to be released'
    if not stor13:
        revert with 0, 'Talent Scout not set'
    if arg1 >= sub_83f96dfc[msg.sender].field_0:
        revert with 0, 50
    if sub_40615ffb < sub_83f96dfc[msg.sender][arg1].field_0:
        revert with 0, 17
    sub_40615ffb -= sub_83f96dfc[msg.sender][arg1].field_0
    if arg1 >= sub_83f96dfc[msg.sender].field_0:
        revert with 0, 50
    sub_83f96dfc[msg.sender][arg1].field_512 = 1
    if arg1 >= sub_83f96dfc[msg.sender].field_0:
        revert with 0, 50
    require ext_code.size(sub_9b2310c3Address)
    call sub_9b2310c3Address.0x23b872dd with:
         gas gas_remaining wei
        args stor13, msg.sender, sub_83f96dfc[msg.sender][arg1].field_0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    sub_8ede9d43[msg.sender] = 0
    if arg1 >= sub_83f96dfc[msg.sender].field_0:
        revert with 0, 50
    if sub_68218a14[msg.sender] < sub_83f96dfc[msg.sender][arg1].field_0:
        revert with 0, 17
    sub_68218a14[msg.sender] -= sub_83f96dfc[msg.sender][arg1].field_0
    if arg1 >= sub_83f96dfc[msg.sender].field_0:
        revert with 0, 50
    emit Released(msg.sender, sub_83f96dfc[msg.sender][arg1].field_0);
}

function sub_1e4049a1(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(stor3)
    staticcall stor3.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    if ext_call.return_data[32] and 10^10 > -1 / ext_call.return_data[32]:
        revert with 0, 17
    if 10^10 * ext_call.return_data[32] and sub_be9e500e > -1 / 10^10 * ext_call.return_data[32]:
        revert with 0, 17
    if not 10^10 * ext_call.return_data[32] * sub_be9e500e / 10^18:
        revert with 0, 18
    if arg1 / 10^10 * ext_call.return_data[32] * sub_be9e500e / 10^18 and 10^18 > -1 / arg1 / 10^10 * ext_call.return_data[32] * sub_be9e500e / 10^18:
        revert with 0, 17
    if distributed > !(10^18 * arg1 / 10^10 * ext_call.return_data[32] * sub_be9e500e / 10^18):
        revert with 0, 17
    if distributed + (10^18 * arg1 / 10^10 * ext_call.return_data[32] * sub_be9e500e / 10^18) < supply:
        return 10^18 * arg1 / 10^10 * ext_call.return_data[32] * sub_be9e500e / 10^18, 0
    if 10^18 * arg1 / 10^10 * ext_call.return_data[32] * sub_be9e500e / 10^18 < distributed + (10^18 * arg1 / 10^10 * ext_call.return_data[32] * sub_be9e500e / 10^18) - supply:
        revert with 0, 17
    if -distributed + supply and 10^10 * ext_call.return_data[32] * sub_be9e500e / 10^18 > -1 / -distributed + supply:
        revert with 0, 17
    if arg1 < (-1 * distributed * 10^10 * ext_call.return_data[32] * sub_be9e500e / 10^18) + (supply * 10^10 * ext_call.return_data[32] * sub_be9e500e / 10^18) / 10^18:
        revert with 0, 17
    if arg1 < arg1 - ((-1 * distributed * 10^10 * ext_call.return_data[32] * sub_be9e500e / 10^18) + (supply * 10^10 * ext_call.return_data[32] * sub_be9e500e / 10^18) / 10^18):
        revert with 0, 17
    return -distributed + supply, 
           (-1 * distributed * 10^10 * ext_call.return_data[32] * sub_be9e500e / 10^18) + (supply * 10^10 * ext_call.return_data[32] * sub_be9e500e / 10^18) / 10^18
}

function buy() payable {
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if block.timestamp < saleStart:
        revert with 0, 'Sale is not active'
    if block.timestamp > saleEnd:
        revert with 0, 'Sale is not active'
    if supply <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Presale ended, everything was sold'
    require ext_code.size(stor3)
    staticcall stor3.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    if ext_call.return_data[32] and 10^10 > -1 / ext_call.return_data[32]:
        revert with 0, 17
    if 10^10 * ext_call.return_data[32] and sub_be9e500e > -1 / 10^10 * ext_call.return_data[32]:
        revert with 0, 17
    if not 10^10 * ext_call.return_data[32] * sub_be9e500e / 10^18:
        revert with 0, 18
    if msg.value / 10^10 * ext_call.return_data[32] * sub_be9e500e / 10^18 and 10^18 > -1 / msg.value / 10^10 * ext_call.return_data[32] * sub_be9e500e / 10^18:
        revert with 0, 17
    if distributed > !(10^18 * msg.value / 10^10 * ext_call.return_data[32] * sub_be9e500e / 10^18):
        revert with 0, 17
    if distributed + (10^18 * msg.value / 10^10 * ext_call.return_data[32] * sub_be9e500e / 10^18) < supply:
        if balance > !msg.value:
            revert with 0, 17
        balance += msg.value
        if distributed > !(10^18 * msg.value / 10^10 * ext_call.return_data[32] * sub_be9e500e / 10^18):
            revert with 0, 17
        distributed += 10^18 * msg.value / 10^10 * ext_call.return_data[32] * sub_be9e500e / 10^18
        if supply < 10^18 * msg.value / 10^10 * ext_call.return_data[32] * sub_be9e500e / 10^18:
            revert with 0, 17
        supply += -1 * 10^18 * msg.value / 10^10 * ext_call.return_data[32] * sub_be9e500e / 10^18
        if 10^18 * msg.value / 10^10 * ext_call.return_data[32] * sub_be9e500e / 10^18 and 10 > -1 / 10^18 * msg.value / 10^10 * ext_call.return_data[32] * sub_be9e500e / 10^18:
            revert with 0, 17
        if 10^18 * msg.value / 10^10 * ext_call.return_data[32] * sub_be9e500e / 10^18 and 10 > -1 / 10^18 * msg.value / 10^10 * ext_call.return_data[32] * sub_be9e500e / 10^18:
            revert with 0, 17
        if 10^18 * msg.value / 10^10 * ext_call.return_data[32] * sub_be9e500e / 10^18 and 10 > -1 / 10^18 * msg.value / 10^10 * ext_call.return_data[32] * sub_be9e500e / 10^18:
            revert with 0, 17
        if 10^18 * msg.value / 10^10 * ext_call.return_data[32] * sub_be9e500e / 10^18 and 10 > -1 / 10^18 * msg.value / 10^10 * ext_call.return_data[32] * sub_be9e500e / 10^18:
            revert with 0, 17
        if 10^18 * msg.value / 10^10 * ext_call.return_data[32] * sub_be9e500e / 10^18 and 10 > -1 / 10^18 * msg.value / 10^10 * ext_call.return_data[32] * sub_be9e500e / 10^18:
            revert with 0, 17
        if 10^18 * msg.value / 10^10 * ext_call.return_data[32] * sub_be9e500e / 10^18 and 10 > -1 / 10^18 * msg.value / 10^10 * ext_call.return_data[32] * sub_be9e500e / 10^18:
            revert with 0, 17
        if 10^18 * msg.value / 10^10 * ext_call.return_data[32] * sub_be9e500e / 10^18 and 20 > -1 / 10^18 * msg.value / 10^10 * ext_call.return_data[32] * sub_be9e500e / 10^18:
            revert with 0, 17
        if 10^18 * msg.value / 10^10 * ext_call.return_data[32] * sub_be9e500e / 10^18 and 20 > -1 / 10^18 * msg.value / 10^10 * ext_call.return_data[32] * sub_be9e500e / 10^18:
            revert with 0, 17
        if sub_40615ffb > !(10 * 10^18 * msg.value / 10^10 * ext_call.return_data[32] * sub_be9e500e / 10^18 / 100):
            revert with 0, 17
        if sub_40615ffb + (10 * 10^18 * msg.value / 10^10 * ext_call.return_data[32] * sub_be9e500e / 10^18 / 100) > presaleSupply:
            revert with 0, 'Unable to lock the defined amount, cap exceeded'
        if block.timestamp > -15552001:
            revert with 0, 17
        sub_83f96dfc[address(msg.sender)].field_0++
        sub_83f96dfc[address(msg.sender)][sub_83f96dfc[address(msg.sender)].field_0].field_0 = 10 * 10^18 * msg.value / 10^10 * ext_call.return_data[32] * sub_be9e500e / 10^18 / 100
        sub_83f96dfc[address(msg.sender)][sub_83f96dfc[address(msg.sender)].field_0].field_256 = block.timestamp + (4320 * 24 * 3600)
        sub_83f96dfc[address(msg.sender)][sub_83f96dfc[address(msg.sender)].field_0].field_512 = 0
        if sub_40615ffb > !(10 * 10^18 * msg.value / 10^10 * ext_call.return_data[32] * sub_be9e500e / 10^18 / 100):
            revert with 0, 17
        sub_40615ffb += 10 * 10^18 * msg.value / 10^10 * ext_call.return_data[32] * sub_be9e500e / 10^18 / 100
        emit Locked(msg.sender, 10 * 10^18 * msg.value / 10^10 * ext_call.return_data[32] * sub_be9e500e / 10^18 / 100);
        if sub_40615ffb + (10 * 10^18 * msg.value / 10^10 * ext_call.return_data[32] * sub_be9e500e / 10^18 / 100) > presaleSupply:
            revert with 0, 'Unable to lock the defined amount, cap exceeded'
        if block.timestamp > -20736001:
            revert with 0, 17
        sub_83f96dfc[address(msg.sender)].field_0++
        sub_83f96dfc[address(msg.sender)][sub_83f96dfc[address(msg.sender)].field_0].field_0 = 10 * 10^18 * msg.value / 10^10 * ext_call.return_data[32] * sub_be9e500e / 10^18 / 100
        sub_83f96dfc[address(msg.sender)][sub_83f96dfc[address(msg.sender)].field_0].field_256 = block.timestamp + (5760 * 24 * 3600)
        sub_83f96dfc[address(msg.sender)][sub_83f96dfc[address(msg.sender)].field_0].field_512 = 0
        if sub_40615ffb > !(10 * 10^18 * msg.value / 10^10 * ext_call.return_data[32] * sub_be9e500e / 10^18 / 100):
            revert with 0, 17
        sub_40615ffb += 10 * 10^18 * msg.value / 10^10 * ext_call.return_data[32] * sub_be9e500e / 10^18 / 100
        emit Locked(msg.sender, 10 * 10^18 * msg.value / 10^10 * ext_call.return_data[32] * sub_be9e500e / 10^18 / 100);
        if sub_40615ffb + (10 * 10^18 * msg.value / 10^10 * ext_call.return_data[32] * sub_be9e500e / 10^18 / 100) > presaleSupply:
            revert with 0, 'Unable to lock the defined amount, cap exceeded'
        if block.timestamp > -23328001:
            revert with 0, 17
        sub_83f96dfc[address(msg.sender)].field_0++
        sub_83f96dfc[address(msg.sender)][sub_83f96dfc[address(msg.sender)].field_0].field_0 = 10 * 10^18 * msg.value / 10^10 * ext_call.return_data[32] * sub_be9e500e / 10^18 / 100
        sub_83f96dfc[address(msg.sender)][sub_83f96dfc[address(msg.sender)].field_0].field_256 = block.timestamp + (6480 * 24 * 3600)
        sub_83f96dfc[address(msg.sender)][sub_83f96dfc[address(msg.sender)].field_0].field_512 = 0
        if sub_40615ffb > !(10 * 10^18 * msg.value / 10^10 * ext_call.return_data[32] * sub_be9e500e / 10^18 / 100):
            revert with 0, 17
        sub_40615ffb += 10 * 10^18 * msg.value / 10^10 * ext_call.return_data[32] * sub_be9e500e / 10^18 / 100
        emit Locked(msg.sender, 10 * 10^18 * msg.value / 10^10 * ext_call.return_data[32] * sub_be9e500e / 10^18 / 100);
        if sub_40615ffb + (10 * 10^18 * msg.value / 10^10 * ext_call.return_data[32] * sub_be9e500e / 10^18 / 100) > presaleSupply:
            revert with 0, 'Unable to lock the defined amount, cap exceeded'
        if block.timestamp > -25920001:
            revert with 0, 17
        sub_83f96dfc[address(msg.sender)].field_0++
        sub_83f96dfc[address(msg.sender)][sub_83f96dfc[address(msg.sender)].field_0].field_0 = 10 * 10^18 * msg.value / 10^10 * ext_call.return_data[32] * sub_be9e500e / 10^18 / 100
        sub_83f96dfc[address(msg.sender)][sub_83f96dfc[address(msg.sender)].field_0].field_256 = block.timestamp + (2 * 3600 * 24 * 3600)
        sub_83f96dfc[address(msg.sender)][sub_83f96dfc[address(msg.sender)].field_0].field_512 = 0
        if sub_40615ffb > !(10 * 10^18 * msg.value / 10^10 * ext_call.return_data[32] * sub_be9e500e / 10^18 / 100):
            revert with 0, 17
        sub_40615ffb += 10 * 10^18 * msg.value / 10^10 * ext_call.return_data[32] * sub_be9e500e / 10^18 / 100
        emit Locked(msg.sender, 10 * 10^18 * msg.value / 10^10 * ext_call.return_data[32] * sub_be9e500e / 10^18 / 100);
        if sub_40615ffb + (10 * 10^18 * msg.value / 10^10 * ext_call.return_data[32] * sub_be9e500e / 10^18 / 100) > presaleSupply:
            revert with 0, 'Unable to lock the defined amount, cap exceeded'
        if block.timestamp > -28512001:
            revert with 0, 17
        sub_83f96dfc[address(msg.sender)].field_0++
        sub_83f96dfc[address(msg.sender)][sub_83f96dfc[address(msg.sender)].field_0].field_0 = 10 * 10^18 * msg.value / 10^10 * ext_call.return_data[32] * sub_be9e500e / 10^18 / 100
        sub_83f96dfc[address(msg.sender)][sub_83f96dfc[address(msg.sender)].field_0].field_256 = block.timestamp + (7920 * 24 * 3600)
        sub_83f96dfc[address(msg.sender)][sub_83f96dfc[address(msg.sender)].field_0].field_512 = 0
        if sub_40615ffb > !(10 * 10^18 * msg.value / 10^10 * ext_call.return_data[32] * sub_be9e500e / 10^18 / 100):
            revert with 0, 17
        sub_40615ffb += 10 * 10^18 * msg.value / 10^10 * ext_call.return_data[32] * sub_be9e500e / 10^18 / 100
        emit Locked(msg.sender, 10 * 10^18 * msg.value / 10^10 * ext_call.return_data[32] * sub_be9e500e / 10^18 / 100);
        if sub_40615ffb + (10 * 10^18 * msg.value / 10^10 * ext_call.return_data[32] * sub_be9e500e / 10^18 / 100) > presaleSupply:
            revert with 0, 'Unable to lock the defined amount, cap exceeded'
        if block.timestamp > -31104001:
            revert with 0, 17
        sub_83f96dfc[address(msg.sender)].field_0++
        sub_83f96dfc[address(msg.sender)][sub_83f96dfc[address(msg.sender)].field_0].field_0 = 10 * 10^18 * msg.value / 10^10 * ext_call.return_data[32] * sub_be9e500e / 10^18 / 100
        sub_83f96dfc[address(msg.sender)][sub_83f96dfc[address(msg.sender)].field_0].field_256 = block.timestamp + (8640 * 24 * 3600)
        sub_83f96dfc[address(msg.sender)][sub_83f96dfc[address(msg.sender)].field_0].field_512 = 0
        if sub_40615ffb > !(10 * 10^18 * msg.value / 10^10 * ext_call.return_data[32] * sub_be9e500e / 10^18 / 100):
            revert with 0, 17
        sub_40615ffb += 10 * 10^18 * msg.value / 10^10 * ext_call.return_data[32] * sub_be9e500e / 10^18 / 100
        emit Locked(msg.sender, 10 * 10^18 * msg.value / 10^10 * ext_call.return_data[32] * sub_be9e500e / 10^18 / 100);
        if sub_40615ffb > !(20 * 10^18 * msg.value / 10^10 * ext_call.return_data[32] * sub_be9e500e / 10^18 / 100):
            revert with 0, 17
        if sub_40615ffb + (20 * 10^18 * msg.value / 10^10 * ext_call.return_data[32] * sub_be9e500e / 10^18 / 100) > presaleSupply:
            revert with 0, 'Unable to lock the defined amount, cap exceeded'
        if block.timestamp > -38880001:
            revert with 0, 17
        sub_83f96dfc[address(msg.sender)].field_0++
        sub_83f96dfc[address(msg.sender)][sub_83f96dfc[address(msg.sender)].field_0].field_0 = 20 * 10^18 * msg.value / 10^10 * ext_call.return_data[32] * sub_be9e500e / 10^18 / 100
        sub_83f96dfc[address(msg.sender)][sub_83f96dfc[address(msg.sender)].field_0].field_256 = block.timestamp + (3 * 3600 * 24 * 3600)
        sub_83f96dfc[address(msg.sender)][sub_83f96dfc[address(msg.sender)].field_0].field_512 = 0
        if sub_40615ffb > !(20 * 10^18 * msg.value / 10^10 * ext_call.return_data[32] * sub_be9e500e / 10^18 / 100):
            revert with 0, 17
        sub_40615ffb += 20 * 10^18 * msg.value / 10^10 * ext_call.return_data[32] * sub_be9e500e / 10^18 / 100
        emit Locked(msg.sender, 20 * 10^18 * msg.value / 10^10 * ext_call.return_data[32] * sub_be9e500e / 10^18 / 100);
        if sub_40615ffb + (20 * 10^18 * msg.value / 10^10 * ext_call.return_data[32] * sub_be9e500e / 10^18 / 100) > presaleSupply:
            revert with 0, 'Unable to lock the defined amount, cap exceeded'
        if block.timestamp > -46656001:
            revert with 0, 17
        sub_83f96dfc[address(msg.sender)].field_0++
        sub_83f96dfc[address(msg.sender)][sub_83f96dfc[address(msg.sender)].field_0].field_0 = 20 * 10^18 * msg.value / 10^10 * ext_call.return_data[32] * sub_be9e500e / 10^18 / 100
        sub_83f96dfc[address(msg.sender)][sub_83f96dfc[address(msg.sender)].field_0].field_256 = block.timestamp + (12960 * 24 * 3600)
        sub_83f96dfc[address(msg.sender)][sub_83f96dfc[address(msg.sender)].field_0].field_512 = 0
        if sub_40615ffb > !(20 * 10^18 * msg.value / 10^10 * ext_call.return_data[32] * sub_be9e500e / 10^18 / 100):
            revert with 0, 17
        sub_40615ffb += 20 * 10^18 * msg.value / 10^10 * ext_call.return_data[32] * sub_be9e500e / 10^18 / 100
        emit Locked(msg.sender, 20 * 10^18 * msg.value / 10^10 * ext_call.return_data[32] * sub_be9e500e / 10^18 / 100);
        if sub_8ede9d43[msg.sender] > !msg.value:
            revert with 0, 17
        sub_8ede9d43[msg.sender] += msg.value
        if sub_68218a14[msg.sender] > !(10^18 * msg.value / 10^10 * ext_call.return_data[32] * sub_be9e500e / 10^18):
            revert with 0, 17
        sub_68218a14[msg.sender] += 10^18 * msg.value / 10^10 * ext_call.return_data[32] * sub_be9e500e / 10^18
        emit Buy((10^18 * msg.value / 10^10 * ext_call.return_data[32] * sub_be9e500e / 10^18), msg.sender);
    else:
        if 10^18 * msg.value / 10^10 * ext_call.return_data[32] * sub_be9e500e / 10^18 < distributed + (10^18 * msg.value / 10^10 * ext_call.return_data[32] * sub_be9e500e / 10^18) - supply:
            revert with 0, 17
        if -distributed + supply and 10^10 * ext_call.return_data[32] * sub_be9e500e / 10^18 > -1 / -distributed + supply:
            revert with 0, 17
        if msg.value < (-1 * distributed * 10^10 * ext_call.return_data[32] * sub_be9e500e / 10^18) + (supply * 10^10 * ext_call.return_data[32] * sub_be9e500e / 10^18) / 10^18:
            revert with 0, 17
        if msg.value < msg.value - ((-1 * distributed * 10^10 * ext_call.return_data[32] * sub_be9e500e / 10^18) + (supply * 10^10 * ext_call.return_data[32] * sub_be9e500e / 10^18) / 10^18):
            revert with 0, 17
        if balance > !msg.value:
            revert with 0, 17
        balance += msg.value
        if (-1 * distributed * 10^10 * ext_call.return_data[32] * sub_be9e500e / 10^18) + (supply * 10^10 * ext_call.return_data[32] * sub_be9e500e / 10^18) / 10^18:
            if sub_ccc7139c[msg.sender] > !((-1 * distributed * 10^10 * ext_call.return_data[32] * sub_be9e500e / 10^18) + (supply * 10^10 * ext_call.return_data[32] * sub_be9e500e / 10^18) / 10^18):
                revert with 0, 17
            sub_ccc7139c[msg.sender] += (-1 * distributed * 10^10 * ext_call.return_data[32] * sub_be9e500e / 10^18) + (supply * 10^10 * ext_call.return_data[32] * sub_be9e500e / 10^18) / 10^18
        if distributed > !(-distributed + supply):
            revert with 0, 17
        distributed = supply
        if supply < -distributed + supply:
            revert with 0, 17
        supply = distributed
        if -distributed + supply and 10 > -1 / -distributed + supply:
            revert with 0, 17
        if -distributed + supply and 10 > -1 / -distributed + supply:
            revert with 0, 17
        if -distributed + supply and 10 > -1 / -distributed + supply:
            revert with 0, 17
        if -distributed + supply and 10 > -1 / -distributed + supply:
            revert with 0, 17
        if -distributed + supply and 10 > -1 / -distributed + supply:
            revert with 0, 17
        if -distributed + supply and 10 > -1 / -distributed + supply:
            revert with 0, 17
        if -distributed + supply and 20 > -1 / -distributed + supply:
            revert with 0, 17
        if -distributed + supply and 20 > -1 / -distributed + supply:
            revert with 0, 17
        if sub_40615ffb > !((-10 * distributed) + (10 * supply) / 100):
            revert with 0, 17
        if sub_40615ffb + ((-10 * distributed) + (10 * supply) / 100) > presaleSupply:
            revert with 0, 'Unable to lock the defined amount, cap exceeded'
        if block.timestamp > -15552001:
            revert with 0, 17
        sub_83f96dfc[address(msg.sender)].field_0++
        sub_83f96dfc[address(msg.sender)][sub_83f96dfc[address(msg.sender)].field_0].field_0 = (-10 * distributed) + (10 * supply) / 100
        sub_83f96dfc[address(msg.sender)][sub_83f96dfc[address(msg.sender)].field_0].field_256 = block.timestamp + (4320 * 24 * 3600)
        sub_83f96dfc[address(msg.sender)][sub_83f96dfc[address(msg.sender)].field_0].field_512 = 0
        if sub_40615ffb > !((-10 * distributed) + (10 * supply) / 100):
            revert with 0, 17
        sub_40615ffb += (-10 * distributed) + (10 * supply) / 100
        emit Locked(msg.sender, (-10 * distributed) + (10 * supply) / 100);
        if sub_40615ffb + ((-10 * distributed) + (10 * supply) / 100) > presaleSupply:
            revert with 0, 'Unable to lock the defined amount, cap exceeded'
        if block.timestamp > -20736001:
            revert with 0, 17
        sub_83f96dfc[address(msg.sender)].field_0++
        sub_83f96dfc[address(msg.sender)][sub_83f96dfc[address(msg.sender)].field_0].field_0 = (-10 * distributed) + (10 * supply) / 100
        sub_83f96dfc[address(msg.sender)][sub_83f96dfc[address(msg.sender)].field_0].field_256 = block.timestamp + (5760 * 24 * 3600)
        sub_83f96dfc[address(msg.sender)][sub_83f96dfc[address(msg.sender)].field_0].field_512 = 0
        if sub_40615ffb > !((-10 * distributed) + (10 * supply) / 100):
            revert with 0, 17
        sub_40615ffb += (-10 * distributed) + (10 * supply) / 100
        emit Locked(msg.sender, (-10 * distributed) + (10 * supply) / 100);
        if sub_40615ffb + ((-10 * distributed) + (10 * supply) / 100) > presaleSupply:
            revert with 0, 'Unable to lock the defined amount, cap exceeded'
        if block.timestamp > -23328001:
            revert with 0, 17
        sub_83f96dfc[address(msg.sender)].field_0++
        sub_83f96dfc[address(msg.sender)][sub_83f96dfc[address(msg.sender)].field_0].field_0 = (-10 * distributed) + (10 * supply) / 100
        sub_83f96dfc[address(msg.sender)][sub_83f96dfc[address(msg.sender)].field_0].field_256 = block.timestamp + (6480 * 24 * 3600)
        sub_83f96dfc[address(msg.sender)][sub_83f96dfc[address(msg.sender)].field_0].field_512 = 0
        if sub_40615ffb > !((-10 * distributed) + (10 * supply) / 100):
            revert with 0, 17
        sub_40615ffb += (-10 * distributed) + (10 * supply) / 100
        emit Locked(msg.sender, (-10 * distributed) + (10 * supply) / 100);
        if sub_40615ffb + ((-10 * distributed) + (10 * supply) / 100) > presaleSupply:
            revert with 0, 'Unable to lock the defined amount, cap exceeded'
        if block.timestamp > -25920001:
            revert with 0, 17
        sub_83f96dfc[address(msg.sender)].field_0++
        sub_83f96dfc[address(msg.sender)][sub_83f96dfc[address(msg.sender)].field_0].field_0 = (-10 * distributed) + (10 * supply) / 100
        sub_83f96dfc[address(msg.sender)][sub_83f96dfc[address(msg.sender)].field_0].field_256 = block.timestamp + (2 * 3600 * 24 * 3600)
        sub_83f96dfc[address(msg.sender)][sub_83f96dfc[address(msg.sender)].field_0].field_512 = 0
        if sub_40615ffb > !((-10 * distributed) + (10 * supply) / 100):
            revert with 0, 17
        sub_40615ffb += (-10 * distributed) + (10 * supply) / 100
        emit Locked(msg.sender, (-10 * distributed) + (10 * supply) / 100);
        if sub_40615ffb + ((-10 * distributed) + (10 * supply) / 100) > presaleSupply:
            revert with 0, 'Unable to lock the defined amount, cap exceeded'
        if block.timestamp > -28512001:
            revert with 0, 17
        sub_83f96dfc[address(msg.sender)].field_0++
        sub_83f96dfc[address(msg.sender)][sub_83f96dfc[address(msg.sender)].field_0].field_0 = (-10 * distributed) + (10 * supply) / 100
        sub_83f96dfc[address(msg.sender)][sub_83f96dfc[address(msg.sender)].field_0].field_256 = block.timestamp + (7920 * 24 * 3600)
        sub_83f96dfc[address(msg.sender)][sub_83f96dfc[address(msg.sender)].field_0].field_512 = 0
        if sub_40615ffb > !((-10 * distributed) + (10 * supply) / 100):
            revert with 0, 17
        sub_40615ffb += (-10 * distributed) + (10 * supply) / 100
        emit Locked(msg.sender, (-10 * distributed) + (10 * supply) / 100);
        if sub_40615ffb + ((-10 * distributed) + (10 * supply) / 100) > presaleSupply:
            revert with 0, 'Unable to lock the defined amount, cap exceeded'
        if block.timestamp > -31104001:
            revert with 0, 17
        sub_83f96dfc[address(msg.sender)].field_0++
        sub_83f96dfc[address(msg.sender)][sub_83f96dfc[address(msg.sender)].field_0].field_0 = (-10 * distributed) + (10 * supply) / 100
        sub_83f96dfc[address(msg.sender)][sub_83f96dfc[address(msg.sender)].field_0].field_256 = block.timestamp + (8640 * 24 * 3600)
        sub_83f96dfc[address(msg.sender)][sub_83f96dfc[address(msg.sender)].field_0].field_512 = 0
        if sub_40615ffb > !((-10 * distributed) + (10 * supply) / 100):
            revert with 0, 17
        sub_40615ffb += (-10 * distributed) + (10 * supply) / 100
        emit Locked(msg.sender, (-10 * distributed) + (10 * supply) / 100);
        if sub_40615ffb > !((-20 * distributed) + (20 * supply) / 100):
            revert with 0, 17
        if sub_40615ffb + ((-20 * distributed) + (20 * supply) / 100) > presaleSupply:
            revert with 0, 'Unable to lock the defined amount, cap exceeded'
        if block.timestamp > -38880001:
            revert with 0, 17
        sub_83f96dfc[address(msg.sender)].field_0++
        sub_83f96dfc[address(msg.sender)][sub_83f96dfc[address(msg.sender)].field_0].field_0 = (-20 * distributed) + (20 * supply) / 100
        sub_83f96dfc[address(msg.sender)][sub_83f96dfc[address(msg.sender)].field_0].field_256 = block.timestamp + (3 * 3600 * 24 * 3600)
        sub_83f96dfc[address(msg.sender)][sub_83f96dfc[address(msg.sender)].field_0].field_512 = 0
        if sub_40615ffb > !((-20 * distributed) + (20 * supply) / 100):
            revert with 0, 17
        sub_40615ffb += (-20 * distributed) + (20 * supply) / 100
        emit Locked(msg.sender, (-20 * distributed) + (20 * supply) / 100);
        if sub_40615ffb + ((-20 * distributed) + (20 * supply) / 100) > presaleSupply:
            revert with 0, 'Unable to lock the defined amount, cap exceeded'
        if block.timestamp > -46656001:
            revert with 0, 17
        sub_83f96dfc[address(msg.sender)].field_0++
        sub_83f96dfc[address(msg.sender)][sub_83f96dfc[address(msg.sender)].field_0].field_0 = (-20 * distributed) + (20 * supply) / 100
        sub_83f96dfc[address(msg.sender)][sub_83f96dfc[address(msg.sender)].field_0].field_256 = block.timestamp + (12960 * 24 * 3600)
        sub_83f96dfc[address(msg.sender)][sub_83f96dfc[address(msg.sender)].field_0].field_512 = 0
        if sub_40615ffb > !((-20 * distributed) + (20 * supply) / 100):
            revert with 0, 17
        sub_40615ffb += (-20 * distributed) + (20 * supply) / 100
        emit Locked(msg.sender, (-20 * distributed) + (20 * supply) / 100);
        if sub_8ede9d43[msg.sender] > !msg.value:
            revert with 0, 17
        sub_8ede9d43[msg.sender] += msg.value
        if sub_68218a14[msg.sender] > !(-distributed + supply):
            revert with 0, 17
        sub_68218a14[msg.sender] = sub_68218a14[msg.sender] - distributed + supply
        emit Buy((-distributed + supply), msg.sender);
    stor0 = 1
}



}

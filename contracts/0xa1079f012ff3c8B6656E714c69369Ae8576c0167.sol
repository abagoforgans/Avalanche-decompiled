contract main {




// =====================  Runtime code  =====================


#
#  - sub_233f7d2d(?)
#  - deposit(address arg1, uint256 arg2)
#  - updateHoldRequirements(uint256[] arg1)
#  - balanceLevel(address arg1)
#  - isBalanceCovered(address arg1, uint8 arg2)
#  - roll()
#
const MAX_UINT = -1


uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
address owner;
address sub_28ddc982Address;
address stor102;
address sub_ee48ef25Address;
address stor104;
address stor105;
mapping of struct users;
mapping of struct airdrops;
mapping of struct sub_e41e91ef;
uint256 sub_35bbc397;
uint256 sub_639a0b26;
uint256 stor111;
uint256 stor112;
uint256 stor113;
uint256 stor114;
uint256 stor115;
uint256 sub_ea2caab3;
uint256 sub_72fcfe41;
uint256 stor118;
array of uint256 sub_c635701f;
uint256 sub_e812b202;
uint256 total_users;
uint256 total_deposited;
uint256 total_withdraw;
uint256 sub_5432d271;
uint256 sub_c5e63fd6;
address presaleAddress;
array of uint256 stor54733025029901088831001604925566009236597535723592674609900492207440442601457;

function getCustody(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_e41e91ef[address(arg1)].field_256, sub_e41e91ef[address(arg1)].field_1024, sub_e41e91ef[address(arg1)].field_0
}

function sub_28ddc982(?) {
    return sub_28ddc982Address
}

function sub_35bbc397(?) {
    return sub_35bbc397
}

function sub_5432d271(?) {
    return sub_5432d271
}

function sub_639a0b26(?) {
    return sub_639a0b26
}

function sub_72fcfe41(?) {
    return sub_72fcfe41
}

function airdrops(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return airdrops[arg1].field_0, airdrops[arg1].field_256, airdrops[arg1].field_512
}

function owner() {
    return owner
}

function total_withdraw() {
    return total_withdraw
}

function users(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return users[arg1].field_0, 
           users[arg1].field_256,
           users[arg1].field_512,
           users[arg1].field_768,
           users[arg1].field_1024,
           users[arg1].field_1280,
           users[arg1].field_1536,
           users[arg1].field_1792,
           users[arg1].field_2048,
           users[arg1].field_2304,
           users[arg1].field_2560
}

function sub_c5e63fd6(?) {
    return sub_c5e63fd6
}

function sub_c635701f(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_c635701f.length
    return sub_c635701f[arg1]
}

function total_deposited() {
    return total_deposited
}

function sub_e41e91ef(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_e41e91ef[arg1].field_0, 
           sub_e41e91ef[arg1].field_256,
           sub_e41e91ef[arg1].field_512,
           sub_e41e91ef[arg1].field_768,
           sub_e41e91ef[arg1].field_1024
}

function total_users() {
    return total_users
}

function sub_e812b202(?) {
    return sub_e812b202
}

function sub_ea2caab3(?) {
    return sub_ea2caab3
}

function sub_ee48ef25(?) {
    return sub_ee48ef25Address
}

function presale() {
    return presaleAddress
}

function _fallback() payable {
  stop
}

function contractInfo() {
    return total_users, total_deposited, total_withdraw, sub_5432d271, sub_c5e63fd6, sub_e812b202
}

function checkin() {
    sub_e41e91ef[msg.sender].field_768 = block.timestamp
    emit Checkin(block.timestamp, msg.sender);
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function updateRefBonus(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor113 = arg1
}

function updateRefDepth(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor112 = arg1
}

function setTotalTX(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_c5e63fd6 = arg1
}

function updatePayoutRate(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor111 = arg1
}

function setTotalBNB(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_5432d271 = arg1
}

function setTotalUsers(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    total_users = arg1
}

function updateInitialDeposit(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor114 = arg1
}

function setTotalAirdrops(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_e812b202 = arg1
}

function setTotalWithdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    total_withdraw = arg1
}

function updateMaxPayoutCap(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_72fcfe41 = arg1
}

function setTotalDeposits(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    total_deposited = arg1
}

function updateDepositBracketSize(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_ea2caab3 = arg1
}

function updateExitTax(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 <= 20
    sub_639a0b26 = arg1
}

function maxPayoutOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 > 0xb60b60b60b60b60b60b60b60b60b60b60b60b60b60b60b60b60b60b60b60b6:
        revert with 0, 17
    return (360 * arg1 / 100)
}

function setPresale(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    presaleAddress = arg1
}

function updateCompoundTax(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 <= 20
    sub_35bbc397 = arg1
}

function sub_818e6481(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_ee48ef25Address = address(arg1)
}

function userInfoTotals(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return users[address(arg1)].field_256, 
           users[address(arg1)].field_1280,
           users[address(arg1)].field_1792,
           users[address(arg1)].field_512,
           airdrops[address(arg1)].field_0,
           airdrops[address(arg1)].field_256
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

function userInfo(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return users[address(arg1)].field_0, 
           users[address(arg1)].field_1536,
           users[address(arg1)].field_1280,
           users[address(arg1)].field_1792,
           users[address(arg1)].field_768,
           users[address(arg1)].field_1024,
           airdrops[address(arg1)].field_512
}

function isNetPositive(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if airdrops[address(arg1)].field_0 > !users[address(arg1)].field_2048:
        revert with 0, 17
    if airdrops[address(arg1)].field_0 + users[address(arg1)].field_2048 > !users[address(arg1)].field_1280:
        revert with 0, 17
    return (users[address(arg1)].field_1792 < airdrops[address(arg1)].field_0 + users[address(arg1)].field_2048 + users[address(arg1)].field_1280)
}

function creditsAndDebits(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if airdrops[address(arg1)].field_0 > !users[address(arg1)].field_2048:
        revert with 0, 17
    if airdrops[address(arg1)].field_0 + users[address(arg1)].field_2048 > !users[address(arg1)].field_1280:
        revert with 0, 17
    return airdrops[address(arg1)].field_0 + users[address(arg1)].field_2048 + users[address(arg1)].field_1280, 
           users[address(arg1)].field_1792
}

function sustainabilityFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not sub_ea2caab3:
        revert with 0, 18
    if users[address(arg1)].field_1280 / sub_ea2caab3 < stor118:
        if users[address(arg1)].field_1280 / sub_ea2caab3 > 0x3333333333333333333333333333333333333333333333333333333333333333:
            revert with 0, 17
        return (5 * users[address(arg1)].field_1280 / sub_ea2caab3)
    if stor118 > 0x3333333333333333333333333333333333333333333333333333333333333333:
        revert with 0, 17
    return (5 * stor118)
}

function lastActivity(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sub_e41e91ef[address(arg1)].field_512 > block.timestamp:
        if sub_e41e91ef[address(arg1)].field_768 > block.timestamp:
            return sub_e41e91ef[address(arg1)].field_512, 0, sub_e41e91ef[address(arg1)].field_768, 0
        if block.timestamp < sub_e41e91ef[address(arg1)].field_768:
            revert with 0, 17
        return sub_e41e91ef[address(arg1)].field_512, 
               0,
               sub_e41e91ef[address(arg1)].field_768,
               block.timestamp - sub_e41e91ef[address(arg1)].field_768
    if block.timestamp < sub_e41e91ef[address(arg1)].field_512:
        revert with 0, 17
    if sub_e41e91ef[address(arg1)].field_768 > block.timestamp:
        return sub_e41e91ef[address(arg1)].field_512, 
               block.timestamp - sub_e41e91ef[address(arg1)].field_512,
               sub_e41e91ef[address(arg1)].field_768,
               0
    if block.timestamp < sub_e41e91ef[address(arg1)].field_768:
        revert with 0, 17
    return sub_e41e91ef[address(arg1)].field_512, 
           block.timestamp - sub_e41e91ef[address(arg1)].field_512,
           sub_e41e91ef[address(arg1)].field_768,
           block.timestamp - sub_e41e91ef[address(arg1)].field_768
}

function airdrop(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    staticcall stor104.0x79a5b227 with:
            gas gas_remaining wei
           args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    call stor104.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, sub_28ddc982Address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'DRIP to contract transfer failed; check balance and allowance, airdrop'
    if not users[address(arg1)].field_0:
        revert with 0, '_to not found'
    if users[address(arg1)].field_1280 > !ext_call.return_data[0]:
        revert with 0, 17
    users[address(arg1)].field_1280 += ext_call.return_data[0]
    if airdrops[address(msg.sender)].field_0 > !ext_call.return_data[0]:
        revert with 0, 17
    airdrops[address(msg.sender)].field_0 += ext_call.return_data[0]
    airdrops[address(msg.sender)].field_512 = block.timestamp
    if airdrops[arg1].field_256 > !ext_call.return_data[0]:
        revert with 0, 17
    airdrops[arg1].field_256 += ext_call.return_data[0]
    if sub_e812b202 > !ext_call.return_data[0]:
        revert with 0, 17
    sub_e812b202 += ext_call.return_data[0]
    if sub_c5e63fd6 > -2:
        revert with 0, 17
    sub_c5e63fd6++
    emit NewAirdrop(ext_call.return_data[0], block.timestamp, msg.sender, arg1);
    emit 0xfe2cb777: ext_call.return_data[0], arg1
}

function initialize(address arg1, address arg2, address arg3, address arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if uint8(stor0.field_8):
        if ext_code.size(this.address):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    if not uint8(stor0.field_8):
        uint16(stor0.field_0) = 257
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is not initializing'
    owner = msg.sender
    emit OwnershipTransferred(owner, msg.sender);
    total_users = 1
    sub_ea2caab3 = 10000 * 10^18
    sub_72fcfe41 = 100000 * 10^18
    stor114 = 10^18
    stor115 = 10^18
    stor111 = 2
    stor112 = 15
    stor113 = 10
    stor118 = 10
    sub_35bbc397 = 5
    sub_639a0b26 = 10
    stor102 = arg1
    sub_ee48ef25Address = arg2
    stor104 = arg3
    sub_28ddc982Address = arg4
    stor105 = arg4
    sub_c635701f.length++
    stor7901[stor119.length] = 200 * 10^6
    sub_c635701f.length++
    stor7901[stor119.length] = 300 * 10^6
    sub_c635701f.length++
    stor7901[stor119.length] = 500 * 10^6
    sub_c635701f.length++
    stor7901[stor119.length] = 800 * 10^6
    sub_c635701f.length++
    stor7901[stor119.length] = 1300 * 10^6
    sub_c635701f.length++
    stor7901[stor119.length] = 2100 * 10^6
    sub_c635701f.length++
    stor7901[stor119.length] = 3400 * 10^6
    sub_c635701f.length++
    stor7901[stor119.length] = 5500 * 10^6
    sub_c635701f.length++
    stor7901[stor119.length] = 8900 * 10^6
    sub_c635701f.length++
    stor7901[stor119.length] = 4 * 10^6 * 3600
    sub_c635701f.length++
    stor7901[stor119.length] = 23300 * 10^6
    sub_c635701f.length++
    stor7901[stor119.length] = 37700 * 10^6
    sub_c635701f.length++
    stor7901[stor119.length] = 61 * 10^9
    sub_c635701f.length++
    stor7901[stor119.length] = 98700 * 10^6
    sub_c635701f.length++
    stor7901[stor119.length] = 159700 * 10^6
}

function sub_dbd2b7e6(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = cd[4] + 36
    s = 128
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    idx = 0
    s = 0
    s = 0
    s = 0
    while idx < ('cd', 4).length:
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = sub_28ddc982Address
        mem[mem[64] + 68] = cd[36]
        call stor104.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, sub_28ddc982Address, cd[36]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _57 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_57] == bool(mem[_57])
        if not mem[_57]:
            revert with 0, 'DRIP to contract transfer failed; check balance and allowance, airdrop'
        if idx >= mem[96]:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 106
        if not users[mem[(32 * idx) + 140 len 20]].field_0:
            revert with 0, '_to not found'
        mem[mem[64] + 36] = cd[36]
        staticcall stor104.0x79a5b227 with:
                gas gas_remaining wei
               args msg.sender, cd[36]
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _67 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        _69 = mem[_67]
        _70 = mem[_67 + 32]
        if idx >= mem[96]:
            revert with 0, 50
        if users[mem[(32 * idx) + 140 len 20]].field_1280 > !mem[_67]:
            revert with 0, 17
        users[mem[(32 * idx) + 140 len 20]].field_1280 += mem[_67]
        if idx >= mem[96]:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 107
        if airdrops[mem[(32 * idx) + 140 len 20]].field_256 > !_69:
            revert with 0, 17
        airdrops[mem[(32 * idx) + 140 len 20]].field_256 += _69
        if not idx + 1:
            revert with 0, 17
        idx = idx + 1
        s = _70
        s = _69
        s = cd[36]
        continue 
    if airdrops[address(msg.sender)].field_0 > !(36 * ('cd', 4).length):
        revert with 0, 17
    airdrops[address(msg.sender)].field_0 += 36 * ('cd', 4).length
    airdrops[address(msg.sender)].field_512 = block.timestamp
    if sub_e812b202 > !(36 * ('cd', 4).length):
        revert with 0, 17
    sub_e812b202 += 36 * ('cd', 4).length
    if sub_c5e63fd6 > -2:
        revert with 0, 17
    sub_c5e63fd6++
}

function sub_65f4e5c4(?) {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = cd[4] + 36
    s = 128
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require cd[36] <= test266151307()
    require calldata.size > cd[36] + 35
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 98 < 97 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 36).length
    require cd[36] + (352 * ('cd', 36).length) + 36 <= calldata.size
    s = ceil32(32 * ('cd', 4).length) + 129
    idx = cd[36] + 36
    while idx < cd[36] + (352 * ('cd', 36).length) + 36:
        require calldata.size - idx >= 352
        _64 = mem[64]
        if mem[64] + 352 < mem[64] or mem[64] + 352 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + 352
        require cd[idx] == address(cd[idx])
        mem[_64] = cd[idx]
        mem[_64 + 32] = cd[(idx + 32)]
        mem[_64 + 64] = cd[(idx + 64)]
        mem[_64 + 96] = cd[(idx + 96)]
        mem[_64 + 128] = cd[(idx + 128)]
        mem[_64 + 160] = cd[(idx + 160)]
        mem[_64 + 192] = cd[(idx + 192)]
        mem[_64 + 224] = cd[(idx + 224)]
        mem[_64 + 256] = cd[(idx + 256)]
        mem[_64 + 288] = cd[(idx + 288)]
        require cd[(idx + 320)] == address(cd[(idx + 320)])
        mem[_64 + 320] = cd[(idx + 320)]
        mem[s] = _64
        s = s + 32
        idx = idx + 352
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 0, 65
    _65 = mem[64]
    if mem[64] + ceil32(32 * ('cd', 68).length) + 1 < mem[64] or mem[64] + ceil32(32 * ('cd', 68).length) + 1 > test266151307():
        revert with 0, 65
    mem[64] = mem[64] + ceil32(32 * ('cd', 68).length) + 1
    mem[_65] = ('cd', 68).length
    require cd[68] + (96 * ('cd', 68).length) + 36 <= calldata.size
    idx = cd[68] + 36
    s = _65 + 32
    while idx < cd[68] + (96 * ('cd', 68).length) + 36:
        require calldata.size - idx >= 96
        _94 = mem[64]
        if mem[64] + 96 < mem[64] or mem[64] + 96 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + 96
        mem[_94] = cd[idx]
        mem[_94 + 32] = cd[(idx + 32)]
        mem[_94 + 64] = cd[(idx + 64)]
        mem[s] = _94
        idx = idx + 96
        s = s + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < mem[96]:
        if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
            revert with 0, 50
        if idx >= mem[96]:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 106
        users[mem[(32 * idx) + 140 len 20]].field_0 = mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 12 len 20]
        users[mem[(32 * idx) + 140 len 20]].field_256 = mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 32]
        users[mem[(32 * idx) + 140 len 20]].field_512 = mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 64]
        users[mem[(32 * idx) + 140 len 20]].field_768 = mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 96]
        users[mem[(32 * idx) + 140 len 20]].field_1024 = mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 128]
        users[mem[(32 * idx) + 140 len 20]].field_1280 = mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 160]
        users[mem[(32 * idx) + 140 len 20]].field_1536 = mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 192]
        users[mem[(32 * idx) + 140 len 20]].field_1792 = mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 224]
        users[mem[(32 * idx) + 140 len 20]].field_2048 = mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 256]
        users[mem[(32 * idx) + 140 len 20]].field_2304 = mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 288]
        users[mem[(32 * idx) + 140 len 20]].field_2560 = mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 332 len 20]
        if idx >= mem[_65]:
            revert with 0, 50
        _140 = mem[(32 * idx) + _65 + 32]
        if idx >= mem[96]:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 107
        airdrops[mem[(32 * idx) + 140 len 20]].field_0 = mem[_140]
        airdrops[mem[(32 * idx) + 140 len 20]].field_256 = mem[_140 + 32]
        airdrops[mem[(32 * idx) + 140 len 20]].field_512 = mem[_140 + 64]
        if not idx + 1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function claimsAvailable(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if users[address(arg1)].field_1280 > 0xb60b60b60b60b60b60b60b60b60b60b60b60b60b60b60b60b60b60b60b60b6:
        revert with 0, 17
    if not sub_ea2caab3:
        revert with 0, 18
    if 360 * users[address(arg1)].field_1280 / 100 < sub_72fcfe41:
        if users[address(arg1)].field_1280 / sub_ea2caab3 < stor118:
            if users[address(arg1)].field_1280 / sub_ea2caab3 > 0x3333333333333333333333333333333333333333333333333333333333333333:
                revert with 0, 17
            if 360 * users[address(arg1)].field_1280 / 100 <= users[address(arg1)].field_1792:
                return 0
            if stor111 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if not -users[address(arg1)].field_1280:
                if users[address(arg1)].field_1536 <= block.timestamp:
                    if block.timestamp < users[address(arg1)].field_1536:
                        revert with 0, 17
                    if False and block.timestamp - users[address(arg1)].field_1536 > 0:
                        revert with 0, 17
                if users[address(arg1)].field_1792 > -1:
                    revert with 0, 17
                if users[address(arg1)].field_1792 <= 360 * users[address(arg1)].field_1280 / 100:
                    if False and 5 * users[address(arg1)].field_1280 / sub_ea2caab3 > 0:
                        revert with 0, 17
                    else:
                        return 0
            else:
                if users[address(arg1)].field_1280 and 10^18 * stor111 > -1 / users[address(arg1)].field_1280:
                    revert with 0, 17
                if not users[address(arg1)].field_1280:
                    revert with 0, 18
                if 10^18 * users[address(arg1)].field_1280 * stor111 / users[address(arg1)].field_1280 != 10^18 * stor111:
                    revert with 0, 1
                if users[address(arg1)].field_1536 > block.timestamp:
                    if 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 and 0 > -1 / 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600:
                        revert with 0, 17
                    if users[address(arg1)].field_1792 > -1:
                        revert with 0, 17
                    if users[address(arg1)].field_1792 <= 360 * users[address(arg1)].field_1280 / 100:
                        if False and 5 * users[address(arg1)].field_1280 / sub_ea2caab3 > 0:
                            revert with 0, 17
                        else:
                            return 0
                else:
                    if block.timestamp < users[address(arg1)].field_1536:
                        revert with 0, 17
                    if 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 and block.timestamp - users[address(arg1)].field_1536 > -1 / 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600:
                        revert with 0, 17
                    if users[address(arg1)].field_1792 > !((block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600)):
                        revert with 0, 17
                    if users[address(arg1)].field_1792 + (block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) <= 360 * users[address(arg1)].field_1280 / 100:
                        if (block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) and 5 * users[address(arg1)].field_1280 / sub_ea2caab3 > -1 / (block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600):
                            revert with 0, 17
                        if (5 * block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(arg1)].field_1280 / sub_ea2caab3) - (5 * users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(arg1)].field_1280 / sub_ea2caab3) / 100 > (block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600):
                            return 0
                        if (block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) < (5 * block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(arg1)].field_1280 / sub_ea2caab3) - (5 * users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(arg1)].field_1280 / sub_ea2caab3) / 100:
                            revert with 0, 17
                        return ((block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(arg1)].field_1280 / sub_ea2caab3) - (5 * users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(arg1)].field_1280 / sub_ea2caab3) / 100))
            if users[address(arg1)].field_1792 > 360 * users[address(arg1)].field_1280 / 100:
                if False and 5 * users[address(arg1)].field_1280 / sub_ea2caab3 > 0:
                    revert with 0, 17
                else:
                    return 0
            if 360 * users[address(arg1)].field_1280 / 100 < users[address(arg1)].field_1792:
                revert with 0, 17
            if (360 * users[address(arg1)].field_1280 / 100) - users[address(arg1)].field_1792 and 5 * users[address(arg1)].field_1280 / sub_ea2caab3 > -1 / (360 * users[address(arg1)].field_1280 / 100) - users[address(arg1)].field_1792:
                revert with 0, 17
            if (5 * 360 * users[address(arg1)].field_1280 / 100 * users[address(arg1)].field_1280 / sub_ea2caab3) - (5 * users[address(arg1)].field_1792 * users[address(arg1)].field_1280 / sub_ea2caab3) / 100 > (360 * users[address(arg1)].field_1280 / 100) - users[address(arg1)].field_1792:
                return 0
            if (360 * users[address(arg1)].field_1280 / 100) - users[address(arg1)].field_1792 < (5 * 360 * users[address(arg1)].field_1280 / 100 * users[address(arg1)].field_1280 / sub_ea2caab3) - (5 * users[address(arg1)].field_1792 * users[address(arg1)].field_1280 / sub_ea2caab3) / 100:
                revert with 0, 17
            return ((360 * users[address(arg1)].field_1280 / 100) - users[address(arg1)].field_1792 - ((5 * 360 * users[address(arg1)].field_1280 / 100 * users[address(arg1)].field_1280 / sub_ea2caab3) - (5 * users[address(arg1)].field_1792 * users[address(arg1)].field_1280 / sub_ea2caab3) / 100))
        if stor118 > 0x3333333333333333333333333333333333333333333333333333333333333333:
            revert with 0, 17
        if 360 * users[address(arg1)].field_1280 / 100 <= users[address(arg1)].field_1792:
            return 0
        if stor111 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        if not -users[address(arg1)].field_1280:
            if users[address(arg1)].field_1536 <= block.timestamp:
                if block.timestamp < users[address(arg1)].field_1536:
                    revert with 0, 17
                if False and block.timestamp - users[address(arg1)].field_1536 > 0:
                    revert with 0, 17
            if users[address(arg1)].field_1792 > -1:
                revert with 0, 17
            if users[address(arg1)].field_1792 <= 360 * users[address(arg1)].field_1280 / 100:
                if False and 5 * stor118 > 0:
                    revert with 0, 17
                else:
                    return 0
        else:
            if users[address(arg1)].field_1280 and 10^18 * stor111 > -1 / users[address(arg1)].field_1280:
                revert with 0, 17
            if not users[address(arg1)].field_1280:
                revert with 0, 18
            if 10^18 * users[address(arg1)].field_1280 * stor111 / users[address(arg1)].field_1280 != 10^18 * stor111:
                revert with 0, 1
            if users[address(arg1)].field_1536 > block.timestamp:
                if 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 and 0 > -1 / 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600:
                    revert with 0, 17
                if users[address(arg1)].field_1792 > -1:
                    revert with 0, 17
                if users[address(arg1)].field_1792 <= 360 * users[address(arg1)].field_1280 / 100:
                    if False and 5 * stor118 > 0:
                        revert with 0, 17
                    else:
                        return 0
            else:
                if block.timestamp < users[address(arg1)].field_1536:
                    revert with 0, 17
                if 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 and block.timestamp - users[address(arg1)].field_1536 > -1 / 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600:
                    revert with 0, 17
                if users[address(arg1)].field_1792 > !((block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600)):
                    revert with 0, 17
                if users[address(arg1)].field_1792 + (block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) <= 360 * users[address(arg1)].field_1280 / 100:
                    if (block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) and 5 * stor118 > -1 / (block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600):
                        revert with 0, 17
                    if (5 * block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) - (5 * users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) / 100 > (block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600):
                        return 0
                    if (block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) < (5 * block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) - (5 * users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) / 100:
                        revert with 0, 17
                    return ((block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) - (5 * users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) / 100))
        if users[address(arg1)].field_1792 > 360 * users[address(arg1)].field_1280 / 100:
            if False and 5 * stor118 > 0:
                revert with 0, 17
            else:
                return 0
        if 360 * users[address(arg1)].field_1280 / 100 < users[address(arg1)].field_1792:
            revert with 0, 17
        if (360 * users[address(arg1)].field_1280 / 100) - users[address(arg1)].field_1792 and 5 * stor118 > -1 / (360 * users[address(arg1)].field_1280 / 100) - users[address(arg1)].field_1792:
            revert with 0, 17
        if (5 * 360 * users[address(arg1)].field_1280 / 100 * stor118) - (5 * users[address(arg1)].field_1792 * stor118) / 100 > (360 * users[address(arg1)].field_1280 / 100) - users[address(arg1)].field_1792:
            return 0
        if (360 * users[address(arg1)].field_1280 / 100) - users[address(arg1)].field_1792 < (5 * 360 * users[address(arg1)].field_1280 / 100 * stor118) - (5 * users[address(arg1)].field_1792 * stor118) / 100:
            revert with 0, 17
        return ((360 * users[address(arg1)].field_1280 / 100) - users[address(arg1)].field_1792 - ((5 * 360 * users[address(arg1)].field_1280 / 100 * stor118) - (5 * users[address(arg1)].field_1792 * stor118) / 100))
    if users[address(arg1)].field_1280 / sub_ea2caab3 < stor118:
        if users[address(arg1)].field_1280 / sub_ea2caab3 > 0x3333333333333333333333333333333333333333333333333333333333333333:
            revert with 0, 17
        if sub_72fcfe41 <= users[address(arg1)].field_1792:
            return 0
        if stor111 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        if not -users[address(arg1)].field_1280:
            if users[address(arg1)].field_1536 <= block.timestamp:
                if block.timestamp < users[address(arg1)].field_1536:
                    revert with 0, 17
                if False and block.timestamp - users[address(arg1)].field_1536 > 0:
                    revert with 0, 17
            if users[address(arg1)].field_1792 > -1:
                revert with 0, 17
            if users[address(arg1)].field_1792 <= sub_72fcfe41:
                if False and 5 * users[address(arg1)].field_1280 / sub_ea2caab3 > 0:
                    revert with 0, 17
                else:
                    return 0
        else:
            if users[address(arg1)].field_1280 and 10^18 * stor111 > -1 / users[address(arg1)].field_1280:
                revert with 0, 17
            if not users[address(arg1)].field_1280:
                revert with 0, 18
            if 10^18 * users[address(arg1)].field_1280 * stor111 / users[address(arg1)].field_1280 != 10^18 * stor111:
                revert with 0, 1
            if users[address(arg1)].field_1536 > block.timestamp:
                if 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 and 0 > -1 / 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600:
                    revert with 0, 17
                if users[address(arg1)].field_1792 > -1:
                    revert with 0, 17
                if users[address(arg1)].field_1792 <= sub_72fcfe41:
                    if False and 5 * users[address(arg1)].field_1280 / sub_ea2caab3 > 0:
                        revert with 0, 17
                    else:
                        return 0
            else:
                if block.timestamp < users[address(arg1)].field_1536:
                    revert with 0, 17
                if 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 and block.timestamp - users[address(arg1)].field_1536 > -1 / 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600:
                    revert with 0, 17
                if users[address(arg1)].field_1792 > !((block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600)):
                    revert with 0, 17
                if users[address(arg1)].field_1792 + (block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) <= sub_72fcfe41:
                    if (block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) and 5 * users[address(arg1)].field_1280 / sub_ea2caab3 > -1 / (block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600):
                        revert with 0, 17
                    if (5 * block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(arg1)].field_1280 / sub_ea2caab3) - (5 * users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(arg1)].field_1280 / sub_ea2caab3) / 100 > (block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600):
                        return 0
                    if (block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) < (5 * block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(arg1)].field_1280 / sub_ea2caab3) - (5 * users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(arg1)].field_1280 / sub_ea2caab3) / 100:
                        revert with 0, 17
                    return ((block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(arg1)].field_1280 / sub_ea2caab3) - (5 * users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(arg1)].field_1280 / sub_ea2caab3) / 100))
        if users[address(arg1)].field_1792 > sub_72fcfe41:
            if False and 5 * users[address(arg1)].field_1280 / sub_ea2caab3 > 0:
                revert with 0, 17
            else:
                return 0
        if sub_72fcfe41 < users[address(arg1)].field_1792:
            revert with 0, 17
        if sub_72fcfe41 - users[address(arg1)].field_1792 and 5 * users[address(arg1)].field_1280 / sub_ea2caab3 > -1 / sub_72fcfe41 - users[address(arg1)].field_1792:
            revert with 0, 17
        if (5 * sub_72fcfe41 * users[address(arg1)].field_1280 / sub_ea2caab3) - (5 * users[address(arg1)].field_1792 * users[address(arg1)].field_1280 / sub_ea2caab3) / 100 > sub_72fcfe41 - users[address(arg1)].field_1792:
            return 0
        if sub_72fcfe41 - users[address(arg1)].field_1792 < (5 * sub_72fcfe41 * users[address(arg1)].field_1280 / sub_ea2caab3) - (5 * users[address(arg1)].field_1792 * users[address(arg1)].field_1280 / sub_ea2caab3) / 100:
            revert with 0, 17
        return (sub_72fcfe41 - users[address(arg1)].field_1792 - ((5 * sub_72fcfe41 * users[address(arg1)].field_1280 / sub_ea2caab3) - (5 * users[address(arg1)].field_1792 * users[address(arg1)].field_1280 / sub_ea2caab3) / 100))
    if stor118 > 0x3333333333333333333333333333333333333333333333333333333333333333:
        revert with 0, 17
    if sub_72fcfe41 <= users[address(arg1)].field_1792:
        return 0
    if stor111 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if not -users[address(arg1)].field_1280:
        if users[address(arg1)].field_1536 <= block.timestamp:
            if block.timestamp < users[address(arg1)].field_1536:
                revert with 0, 17
            if False and block.timestamp - users[address(arg1)].field_1536 > 0:
                revert with 0, 17
        if users[address(arg1)].field_1792 > -1:
            revert with 0, 17
        if users[address(arg1)].field_1792 <= sub_72fcfe41:
            if False and 5 * stor118 > 0:
                revert with 0, 17
            else:
                return 0
    else:
        if users[address(arg1)].field_1280 and 10^18 * stor111 > -1 / users[address(arg1)].field_1280:
            revert with 0, 17
        if not users[address(arg1)].field_1280:
            revert with 0, 18
        if 10^18 * users[address(arg1)].field_1280 * stor111 / users[address(arg1)].field_1280 != 10^18 * stor111:
            revert with 0, 1
        if users[address(arg1)].field_1536 > block.timestamp:
            if 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 and 0 > -1 / 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600:
                revert with 0, 17
            if users[address(arg1)].field_1792 > -1:
                revert with 0, 17
            if users[address(arg1)].field_1792 <= sub_72fcfe41:
                if False and 5 * stor118 > 0:
                    revert with 0, 17
                else:
                    return 0
        else:
            if block.timestamp < users[address(arg1)].field_1536:
                revert with 0, 17
            if 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 and block.timestamp - users[address(arg1)].field_1536 > -1 / 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600:
                revert with 0, 17
            if users[address(arg1)].field_1792 > !((block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600)):
                revert with 0, 17
            if users[address(arg1)].field_1792 + (block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) <= sub_72fcfe41:
                if (block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) and 5 * stor118 > -1 / (block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600):
                    revert with 0, 17
                if (5 * block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) - (5 * users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) / 100 > (block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600):
                    return 0
                if (block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) < (5 * block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) - (5 * users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) / 100:
                    revert with 0, 17
                return ((block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) - (5 * users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) / 100))
    if users[address(arg1)].field_1792 > sub_72fcfe41:
        if False and 5 * stor118 > 0:
            revert with 0, 17
        else:
            return 0
    if sub_72fcfe41 < users[address(arg1)].field_1792:
        revert with 0, 17
    if sub_72fcfe41 - users[address(arg1)].field_1792 and 5 * stor118 > -1 / sub_72fcfe41 - users[address(arg1)].field_1792:
        revert with 0, 17
    if (5 * sub_72fcfe41 * stor118) - (5 * users[address(arg1)].field_1792 * stor118) / 100 > sub_72fcfe41 - users[address(arg1)].field_1792:
        return 0
    if sub_72fcfe41 - users[address(arg1)].field_1792 < (5 * sub_72fcfe41 * stor118) - (5 * users[address(arg1)].field_1792 * stor118) / 100:
        revert with 0, 17
    return (sub_72fcfe41 - users[address(arg1)].field_1792 - ((5 * sub_72fcfe41 * stor118) - (5 * users[address(arg1)].field_1792 * stor118) / 100))
}

function payoutOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if users[address(arg1)].field_1280 > 0xb60b60b60b60b60b60b60b60b60b60b60b60b60b60b60b60b60b60b60b60b6:
        revert with 0, 17
    if not sub_ea2caab3:
        revert with 0, 18
    if 360 * users[address(arg1)].field_1280 / 100 < sub_72fcfe41:
        if users[address(arg1)].field_1280 / sub_ea2caab3 < stor118:
            if users[address(arg1)].field_1280 / sub_ea2caab3 > 0x3333333333333333333333333333333333333333333333333333333333333333:
                revert with 0, 17
            if 360 * users[address(arg1)].field_1280 / 100 <= users[address(arg1)].field_1792:
                return 0, 360 * users[address(arg1)].field_1280 / 100, 0, 0
            if stor111 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if not -users[address(arg1)].field_1280:
                if users[address(arg1)].field_1536 <= block.timestamp:
                    if block.timestamp < users[address(arg1)].field_1536:
                        revert with 0, 17
                    if False and block.timestamp - users[address(arg1)].field_1536 > 0:
                        revert with 0, 17
                if users[address(arg1)].field_1792 > -1:
                    revert with 0, 17
                if users[address(arg1)].field_1792 <= 360 * users[address(arg1)].field_1280 / 100:
                    if False and 5 * users[address(arg1)].field_1280 / sub_ea2caab3 > 0:
                        revert with 0, 17
                    return 0, 360 * users[address(arg1)].field_1280 / 100, 0, 0
            else:
                if users[address(arg1)].field_1280 and 10^18 * stor111 > -1 / users[address(arg1)].field_1280:
                    revert with 0, 17
                if not users[address(arg1)].field_1280:
                    revert with 0, 18
                if 10^18 * users[address(arg1)].field_1280 * stor111 / users[address(arg1)].field_1280 != 10^18 * stor111:
                    revert with 0, 1
                if users[address(arg1)].field_1536 > block.timestamp:
                    if 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 and 0 > -1 / 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600:
                        revert with 0, 17
                    if users[address(arg1)].field_1792 > -1:
                        revert with 0, 17
                    if users[address(arg1)].field_1792 <= 360 * users[address(arg1)].field_1280 / 100:
                        if False and 5 * users[address(arg1)].field_1280 / sub_ea2caab3 > 0:
                            revert with 0, 17
                        return 0, 360 * users[address(arg1)].field_1280 / 100, 0, 0
                else:
                    if block.timestamp < users[address(arg1)].field_1536:
                        revert with 0, 17
                    if 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 and block.timestamp - users[address(arg1)].field_1536 > -1 / 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600:
                        revert with 0, 17
                    if users[address(arg1)].field_1792 > !((block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600)):
                        revert with 0, 17
                    if users[address(arg1)].field_1792 + (block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) <= 360 * users[address(arg1)].field_1280 / 100:
                        if (block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) and 5 * users[address(arg1)].field_1280 / sub_ea2caab3 > -1 / (block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600):
                            revert with 0, 17
                        if (5 * block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(arg1)].field_1280 / sub_ea2caab3) - (5 * users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(arg1)].field_1280 / sub_ea2caab3) / 100 > (block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600):
                            return (block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600), 
                                   360 * users[address(arg1)].field_1280 / 100,
                                   0,
                                   (5 * block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(arg1)].field_1280 / sub_ea2caab3) - (5 * users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(arg1)].field_1280 / sub_ea2caab3) / 100
                        if (block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) < (5 * block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(arg1)].field_1280 / sub_ea2caab3) - (5 * users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(arg1)].field_1280 / sub_ea2caab3) / 100:
                            revert with 0, 17
                        return (block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600), 
                               360 * users[address(arg1)].field_1280 / 100,
                               (block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(arg1)].field_1280 / sub_ea2caab3) - (5 * users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(arg1)].field_1280 / sub_ea2caab3) / 100),
                               (5 * block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(arg1)].field_1280 / sub_ea2caab3) - (5 * users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(arg1)].field_1280 / sub_ea2caab3) / 100
            if users[address(arg1)].field_1792 > 360 * users[address(arg1)].field_1280 / 100:
                if False and 5 * users[address(arg1)].field_1280 / sub_ea2caab3 > 0:
                    revert with 0, 17
                return 0, 360 * users[address(arg1)].field_1280 / 100, 0, 0
            if 360 * users[address(arg1)].field_1280 / 100 < users[address(arg1)].field_1792:
                revert with 0, 17
            if (360 * users[address(arg1)].field_1280 / 100) - users[address(arg1)].field_1792 and 5 * users[address(arg1)].field_1280 / sub_ea2caab3 > -1 / (360 * users[address(arg1)].field_1280 / 100) - users[address(arg1)].field_1792:
                revert with 0, 17
            if (5 * 360 * users[address(arg1)].field_1280 / 100 * users[address(arg1)].field_1280 / sub_ea2caab3) - (5 * users[address(arg1)].field_1792 * users[address(arg1)].field_1280 / sub_ea2caab3) / 100 > (360 * users[address(arg1)].field_1280 / 100) - users[address(arg1)].field_1792:
                return (360 * users[address(arg1)].field_1280 / 100) - users[address(arg1)].field_1792, 
                       360 * users[address(arg1)].field_1280 / 100,
                       0,
                       (5 * 360 * users[address(arg1)].field_1280 / 100 * users[address(arg1)].field_1280 / sub_ea2caab3) - (5 * users[address(arg1)].field_1792 * users[address(arg1)].field_1280 / sub_ea2caab3) / 100
            if (360 * users[address(arg1)].field_1280 / 100) - users[address(arg1)].field_1792 < (5 * 360 * users[address(arg1)].field_1280 / 100 * users[address(arg1)].field_1280 / sub_ea2caab3) - (5 * users[address(arg1)].field_1792 * users[address(arg1)].field_1280 / sub_ea2caab3) / 100:
                revert with 0, 17
            return (360 * users[address(arg1)].field_1280 / 100) - users[address(arg1)].field_1792, 
                   360 * users[address(arg1)].field_1280 / 100,
                   (360 * users[address(arg1)].field_1280 / 100) - users[address(arg1)].field_1792 - ((5 * 360 * users[address(arg1)].field_1280 / 100 * users[address(arg1)].field_1280 / sub_ea2caab3) - (5 * users[address(arg1)].field_1792 * users[address(arg1)].field_1280 / sub_ea2caab3) / 100),
                   (5 * 360 * users[address(arg1)].field_1280 / 100 * users[address(arg1)].field_1280 / sub_ea2caab3) - (5 * users[address(arg1)].field_1792 * users[address(arg1)].field_1280 / sub_ea2caab3) / 100
        if stor118 > 0x3333333333333333333333333333333333333333333333333333333333333333:
            revert with 0, 17
        if 360 * users[address(arg1)].field_1280 / 100 <= users[address(arg1)].field_1792:
            return 0, 360 * users[address(arg1)].field_1280 / 100, 0, 0
        if stor111 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        if not -users[address(arg1)].field_1280:
            if users[address(arg1)].field_1536 <= block.timestamp:
                if block.timestamp < users[address(arg1)].field_1536:
                    revert with 0, 17
                if False and block.timestamp - users[address(arg1)].field_1536 > 0:
                    revert with 0, 17
            if users[address(arg1)].field_1792 > -1:
                revert with 0, 17
            if users[address(arg1)].field_1792 <= 360 * users[address(arg1)].field_1280 / 100:
                if False and 5 * stor118 > 0:
                    revert with 0, 17
                return 0, 360 * users[address(arg1)].field_1280 / 100, 0, 0
        else:
            if users[address(arg1)].field_1280 and 10^18 * stor111 > -1 / users[address(arg1)].field_1280:
                revert with 0, 17
            if not users[address(arg1)].field_1280:
                revert with 0, 18
            if 10^18 * users[address(arg1)].field_1280 * stor111 / users[address(arg1)].field_1280 != 10^18 * stor111:
                revert with 0, 1
            if users[address(arg1)].field_1536 > block.timestamp:
                if 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 and 0 > -1 / 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600:
                    revert with 0, 17
                if users[address(arg1)].field_1792 > -1:
                    revert with 0, 17
                if users[address(arg1)].field_1792 <= 360 * users[address(arg1)].field_1280 / 100:
                    if False and 5 * stor118 > 0:
                        revert with 0, 17
                    return 0, 360 * users[address(arg1)].field_1280 / 100, 0, 0
            else:
                if block.timestamp < users[address(arg1)].field_1536:
                    revert with 0, 17
                if 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 and block.timestamp - users[address(arg1)].field_1536 > -1 / 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600:
                    revert with 0, 17
                if users[address(arg1)].field_1792 > !((block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600)):
                    revert with 0, 17
                if users[address(arg1)].field_1792 + (block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) <= 360 * users[address(arg1)].field_1280 / 100:
                    if (block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) and 5 * stor118 > -1 / (block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600):
                        revert with 0, 17
                    if (5 * block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) - (5 * users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) / 100 > (block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600):
                        return (block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600), 
                               360 * users[address(arg1)].field_1280 / 100,
                               0,
                               (5 * block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) - (5 * users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) / 100
                    if (block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) < (5 * block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) - (5 * users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) / 100:
                        revert with 0, 17
                    return (block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600), 
                           360 * users[address(arg1)].field_1280 / 100,
                           (block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) - (5 * users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) / 100),
                           (5 * block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) - (5 * users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) / 100
        if users[address(arg1)].field_1792 > 360 * users[address(arg1)].field_1280 / 100:
            if False and 5 * stor118 > 0:
                revert with 0, 17
            return 0, 360 * users[address(arg1)].field_1280 / 100, 0, 0
        if 360 * users[address(arg1)].field_1280 / 100 < users[address(arg1)].field_1792:
            revert with 0, 17
        if (360 * users[address(arg1)].field_1280 / 100) - users[address(arg1)].field_1792 and 5 * stor118 > -1 / (360 * users[address(arg1)].field_1280 / 100) - users[address(arg1)].field_1792:
            revert with 0, 17
        if (5 * 360 * users[address(arg1)].field_1280 / 100 * stor118) - (5 * users[address(arg1)].field_1792 * stor118) / 100 > (360 * users[address(arg1)].field_1280 / 100) - users[address(arg1)].field_1792:
            return (360 * users[address(arg1)].field_1280 / 100) - users[address(arg1)].field_1792, 
                   360 * users[address(arg1)].field_1280 / 100,
                   0,
                   (5 * 360 * users[address(arg1)].field_1280 / 100 * stor118) - (5 * users[address(arg1)].field_1792 * stor118) / 100
        if (360 * users[address(arg1)].field_1280 / 100) - users[address(arg1)].field_1792 < (5 * 360 * users[address(arg1)].field_1280 / 100 * stor118) - (5 * users[address(arg1)].field_1792 * stor118) / 100:
            revert with 0, 17
        return (360 * users[address(arg1)].field_1280 / 100) - users[address(arg1)].field_1792, 
               360 * users[address(arg1)].field_1280 / 100,
               (360 * users[address(arg1)].field_1280 / 100) - users[address(arg1)].field_1792 - ((5 * 360 * users[address(arg1)].field_1280 / 100 * stor118) - (5 * users[address(arg1)].field_1792 * stor118) / 100),
               (5 * 360 * users[address(arg1)].field_1280 / 100 * stor118) - (5 * users[address(arg1)].field_1792 * stor118) / 100
    if users[address(arg1)].field_1280 / sub_ea2caab3 < stor118:
        if users[address(arg1)].field_1280 / sub_ea2caab3 > 0x3333333333333333333333333333333333333333333333333333333333333333:
            revert with 0, 17
        if sub_72fcfe41 <= users[address(arg1)].field_1792:
            return 0, sub_72fcfe41, 0, 0
        if stor111 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        if not -users[address(arg1)].field_1280:
            if users[address(arg1)].field_1536 <= block.timestamp:
                if block.timestamp < users[address(arg1)].field_1536:
                    revert with 0, 17
                if False and block.timestamp - users[address(arg1)].field_1536 > 0:
                    revert with 0, 17
            if users[address(arg1)].field_1792 > -1:
                revert with 0, 17
            if users[address(arg1)].field_1792 <= sub_72fcfe41:
                if False and 5 * users[address(arg1)].field_1280 / sub_ea2caab3 > 0:
                    revert with 0, 17
                return 0, sub_72fcfe41, 0, 0
        else:
            if users[address(arg1)].field_1280 and 10^18 * stor111 > -1 / users[address(arg1)].field_1280:
                revert with 0, 17
            if not users[address(arg1)].field_1280:
                revert with 0, 18
            if 10^18 * users[address(arg1)].field_1280 * stor111 / users[address(arg1)].field_1280 != 10^18 * stor111:
                revert with 0, 1
            if users[address(arg1)].field_1536 > block.timestamp:
                if 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 and 0 > -1 / 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600:
                    revert with 0, 17
                if users[address(arg1)].field_1792 > -1:
                    revert with 0, 17
                if users[address(arg1)].field_1792 <= sub_72fcfe41:
                    if False and 5 * users[address(arg1)].field_1280 / sub_ea2caab3 > 0:
                        revert with 0, 17
                    return 0, sub_72fcfe41, 0, 0
            else:
                if block.timestamp < users[address(arg1)].field_1536:
                    revert with 0, 17
                if 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 and block.timestamp - users[address(arg1)].field_1536 > -1 / 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600:
                    revert with 0, 17
                if users[address(arg1)].field_1792 > !((block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600)):
                    revert with 0, 17
                if users[address(arg1)].field_1792 + (block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) <= sub_72fcfe41:
                    if (block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) and 5 * users[address(arg1)].field_1280 / sub_ea2caab3 > -1 / (block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600):
                        revert with 0, 17
                    if (5 * block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(arg1)].field_1280 / sub_ea2caab3) - (5 * users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(arg1)].field_1280 / sub_ea2caab3) / 100 > (block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600):
                        return (block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600), 
                               sub_72fcfe41,
                               0,
                               (5 * block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(arg1)].field_1280 / sub_ea2caab3) - (5 * users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(arg1)].field_1280 / sub_ea2caab3) / 100
                    if (block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) < (5 * block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(arg1)].field_1280 / sub_ea2caab3) - (5 * users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(arg1)].field_1280 / sub_ea2caab3) / 100:
                        revert with 0, 17
                    return (block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600), 
                           sub_72fcfe41,
                           (block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(arg1)].field_1280 / sub_ea2caab3) - (5 * users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(arg1)].field_1280 / sub_ea2caab3) / 100),
                           (5 * block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(arg1)].field_1280 / sub_ea2caab3) - (5 * users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(arg1)].field_1280 / sub_ea2caab3) / 100
        if users[address(arg1)].field_1792 > sub_72fcfe41:
            if False and 5 * users[address(arg1)].field_1280 / sub_ea2caab3 > 0:
                revert with 0, 17
            return 0, sub_72fcfe41, 0, 0
        if sub_72fcfe41 < users[address(arg1)].field_1792:
            revert with 0, 17
        if sub_72fcfe41 - users[address(arg1)].field_1792 and 5 * users[address(arg1)].field_1280 / sub_ea2caab3 > -1 / sub_72fcfe41 - users[address(arg1)].field_1792:
            revert with 0, 17
        if (5 * sub_72fcfe41 * users[address(arg1)].field_1280 / sub_ea2caab3) - (5 * users[address(arg1)].field_1792 * users[address(arg1)].field_1280 / sub_ea2caab3) / 100 > sub_72fcfe41 - users[address(arg1)].field_1792:
            return sub_72fcfe41 - users[address(arg1)].field_1792, 
                   sub_72fcfe41,
                   0,
                   (5 * sub_72fcfe41 * users[address(arg1)].field_1280 / sub_ea2caab3) - (5 * users[address(arg1)].field_1792 * users[address(arg1)].field_1280 / sub_ea2caab3) / 100
        if sub_72fcfe41 - users[address(arg1)].field_1792 < (5 * sub_72fcfe41 * users[address(arg1)].field_1280 / sub_ea2caab3) - (5 * users[address(arg1)].field_1792 * users[address(arg1)].field_1280 / sub_ea2caab3) / 100:
            revert with 0, 17
        return sub_72fcfe41 - users[address(arg1)].field_1792, 
               sub_72fcfe41,
               sub_72fcfe41 - users[address(arg1)].field_1792 - ((5 * sub_72fcfe41 * users[address(arg1)].field_1280 / sub_ea2caab3) - (5 * users[address(arg1)].field_1792 * users[address(arg1)].field_1280 / sub_ea2caab3) / 100),
               (5 * sub_72fcfe41 * users[address(arg1)].field_1280 / sub_ea2caab3) - (5 * users[address(arg1)].field_1792 * users[address(arg1)].field_1280 / sub_ea2caab3) / 100
    if stor118 > 0x3333333333333333333333333333333333333333333333333333333333333333:
        revert with 0, 17
    if sub_72fcfe41 <= users[address(arg1)].field_1792:
        return 0, sub_72fcfe41, 0, 0
    if stor111 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if not -users[address(arg1)].field_1280:
        if users[address(arg1)].field_1536 <= block.timestamp:
            if block.timestamp < users[address(arg1)].field_1536:
                revert with 0, 17
            if False and block.timestamp - users[address(arg1)].field_1536 > 0:
                revert with 0, 17
        if users[address(arg1)].field_1792 > -1:
            revert with 0, 17
        if users[address(arg1)].field_1792 <= sub_72fcfe41:
            if False and 5 * stor118 > 0:
                revert with 0, 17
            return 0, sub_72fcfe41, 0, 0
    else:
        if users[address(arg1)].field_1280 and 10^18 * stor111 > -1 / users[address(arg1)].field_1280:
            revert with 0, 17
        if not users[address(arg1)].field_1280:
            revert with 0, 18
        if 10^18 * users[address(arg1)].field_1280 * stor111 / users[address(arg1)].field_1280 != 10^18 * stor111:
            revert with 0, 1
        if users[address(arg1)].field_1536 > block.timestamp:
            if 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 and 0 > -1 / 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600:
                revert with 0, 17
            if users[address(arg1)].field_1792 > -1:
                revert with 0, 17
            if users[address(arg1)].field_1792 <= sub_72fcfe41:
                if False and 5 * stor118 > 0:
                    revert with 0, 17
                return 0, sub_72fcfe41, 0, 0
        else:
            if block.timestamp < users[address(arg1)].field_1536:
                revert with 0, 17
            if 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 and block.timestamp - users[address(arg1)].field_1536 > -1 / 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600:
                revert with 0, 17
            if users[address(arg1)].field_1792 > !((block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600)):
                revert with 0, 17
            if users[address(arg1)].field_1792 + (block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) <= sub_72fcfe41:
                if (block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) and 5 * stor118 > -1 / (block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600):
                    revert with 0, 17
                if (5 * block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) - (5 * users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) / 100 > (block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600):
                    return (block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600), 
                           sub_72fcfe41,
                           0,
                           (5 * block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) - (5 * users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) / 100
                if (block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) < (5 * block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) - (5 * users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) / 100:
                    revert with 0, 17
                return (block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600), 
                       sub_72fcfe41,
                       (block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) - (5 * users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) / 100),
                       (5 * block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) - (5 * users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) / 100
    if users[address(arg1)].field_1792 > sub_72fcfe41:
        if False and 5 * stor118 > 0:
            revert with 0, 17
        return 0, sub_72fcfe41, 0, 0
    if sub_72fcfe41 < users[address(arg1)].field_1792:
        revert with 0, 17
    if sub_72fcfe41 - users[address(arg1)].field_1792 and 5 * stor118 > -1 / sub_72fcfe41 - users[address(arg1)].field_1792:
        revert with 0, 17
    if (5 * sub_72fcfe41 * stor118) - (5 * users[address(arg1)].field_1792 * stor118) / 100 > sub_72fcfe41 - users[address(arg1)].field_1792:
        return sub_72fcfe41 - users[address(arg1)].field_1792, 
               sub_72fcfe41,
               0,
               (5 * sub_72fcfe41 * stor118) - (5 * users[address(arg1)].field_1792 * stor118) / 100
    if sub_72fcfe41 - users[address(arg1)].field_1792 < (5 * sub_72fcfe41 * stor118) - (5 * users[address(arg1)].field_1792 * stor118) / 100:
        revert with 0, 17
    return sub_72fcfe41 - users[address(arg1)].field_1792, 
           sub_72fcfe41,
           sub_72fcfe41 - users[address(arg1)].field_1792 - ((5 * sub_72fcfe41 * stor118) - (5 * users[address(arg1)].field_1792 * stor118) / 100),
           (5 * sub_72fcfe41 * stor118) - (5 * users[address(arg1)].field_1792 * stor118) / 100
}

function claim() {
    sub_e41e91ef[msg.sender].field_768 = block.timestamp
    emit Checkin(block.timestamp, msg.sender);
    if users[address(msg.sender)].field_1280 > 0xb60b60b60b60b60b60b60b60b60b60b60b60b60b60b60b60b60b60b60b60b6:
        revert with 0, 17
    if not sub_ea2caab3:
        revert with 0, 18
    if 360 * users[address(msg.sender)].field_1280 / 100 < sub_72fcfe41:
        if users[address(msg.sender)].field_1280 / sub_ea2caab3 < stor118:
            if users[address(msg.sender)].field_1280 / sub_ea2caab3 > 0x3333333333333333333333333333333333333333333333333333333333333333:
                revert with 0, 17
            if 360 * users[address(msg.sender)].field_1280 / 100 <= users[address(msg.sender)].field_1792:
                if 360 * users[address(msg.sender)].field_1280 / 100 <= users[address(msg.sender)].field_1792:
                    revert with 0, 'Full payouts'
                revert with 0, 'Zero payout'
            if stor111 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if not -users[address(msg.sender)].field_1280:
                if users[address(msg.sender)].field_1536 <= block.timestamp:
                    if block.timestamp < users[address(msg.sender)].field_1536:
                        revert with 0, 17
                    if False and block.timestamp - users[address(msg.sender)].field_1536 > 0:
                        revert with 0, 17
                if users[address(msg.sender)].field_1792 > -1:
                    revert with 0, 17
                if users[address(msg.sender)].field_1792 <= 360 * users[address(msg.sender)].field_1280 / 100:
                    if False and 5 * users[address(msg.sender)].field_1280 / sub_ea2caab3 > 0:
                        revert with 0, 17
                    if 360 * users[address(msg.sender)].field_1280 / 100 <= users[address(msg.sender)].field_1792:
                        revert with 0, 'Full payouts'
                    revert with 0, 'Zero payout'
                if users[address(msg.sender)].field_1792 > 360 * users[address(msg.sender)].field_1280 / 100:
                    if False and 5 * users[address(msg.sender)].field_1280 / sub_ea2caab3 > 0:
                        revert with 0, 17
                    if 360 * users[address(msg.sender)].field_1280 / 100 <= users[address(msg.sender)].field_1792:
                        revert with 0, 'Full payouts'
                    revert with 0, 'Zero payout'
                if 360 * users[address(msg.sender)].field_1280 / 100 < users[address(msg.sender)].field_1792:
                    revert with 0, 17
                if (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 and 5 * users[address(msg.sender)].field_1280 / sub_ea2caab3 > -1 / (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792:
                    revert with 0, 17
                if (5 * 360 * users[address(msg.sender)].field_1280 / 100 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100 > (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792:
                    if 360 * users[address(msg.sender)].field_1280 / 100 <= users[address(msg.sender)].field_1792:
                        revert with 0, 'Full payouts'
                    revert with 0, 'Zero payout'
                if (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 < (5 * 360 * users[address(msg.sender)].field_1280 / 100 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100:
                    revert with 0, 17
                if 360 * users[address(msg.sender)].field_1280 / 100 <= users[address(msg.sender)].field_1792:
                    revert with 0, 'Full payouts'
                if not (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100):
                    if (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) <= 0:
                        revert with 0, 'Zero payout'
                    if total_withdraw > !((360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100)):
                        revert with 0, 17
                    total_withdraw = total_withdraw + (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100)
                    users[address(msg.sender)].field_1536 = block.timestamp
                    emit Withdraw(((360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100)), msg.sender);
                    if 360 * users[address(msg.sender)].field_1280 / 100 <= users[address(msg.sender)].field_1792:
                        emit LimitReached(users[address(msg.sender)].field_1792, msg.sender);
                    if sub_639a0b26 > 100:
                        revert with 0, 1
                    if 100 < sub_639a0b26:
                        revert with 0, 17
                    if not -(360 * users[address(msg.sender)].field_1280 / 100) + users[address(msg.sender)].field_1792 + ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100):
                        call stor104.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, 0
                    else:
                        if (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) and -sub_639a0b26 + 100 > -1 / (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100):
                            revert with 0, 17
                        if not (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100):
                            revert with 0, 18
                        if (100 * 360 * users[address(msg.sender)].field_1280 / 100) - (sub_639a0b26 * 360 * users[address(msg.sender)].field_1280 / 100) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) - (100 * (5 * 360 * users[address(msg.sender)].field_1280 / 100 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) + (sub_639a0b26 * (5 * 360 * users[address(msg.sender)].field_1280 / 100 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) / (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) != -sub_639a0b26 + 100:
                            revert with 0, 1
                        call stor104.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (100 * 360 * users[address(msg.sender)].field_1280 / 100) - (sub_639a0b26 * 360 * users[address(msg.sender)].field_1280 / 100) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) - (100 * (5 * 360 * users[address(msg.sender)].field_1280 / 100 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) + (sub_639a0b26 * (5 * 360 * users[address(msg.sender)].field_1280 / 100 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) / 100
                else:
                    if users[address(msg.sender)].field_1792 > !((360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100)):
                        revert with 0, 17
                    if (360 * users[address(msg.sender)].field_1280 / 100) - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) <= 360 * users[address(msg.sender)].field_1280 / 100:
                        if users[address(msg.sender)].field_1792 > !((360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792):
                            revert with 0, 17
                        users[address(msg.sender)].field_1792 = 360 * users[address(msg.sender)].field_1280 / 100
                        if (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) <= 0:
                            revert with 0, 'Zero payout'
                        if total_withdraw > !((360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100)):
                            revert with 0, 17
                        total_withdraw = total_withdraw + (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100)
                        users[address(msg.sender)].field_1536 = block.timestamp
                        emit Withdraw(((360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100)), msg.sender);
                        if 360 * users[address(msg.sender)].field_1280 / 100 <= users[address(msg.sender)].field_1792:
                            emit LimitReached(users[address(msg.sender)].field_1792, msg.sender);
                        if sub_639a0b26 > 100:
                            revert with 0, 1
                        if 100 < sub_639a0b26:
                            revert with 0, 17
                        if not -(360 * users[address(msg.sender)].field_1280 / 100) + users[address(msg.sender)].field_1792 + ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100):
                            call stor104.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, 0
                        else:
                            if (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) and -sub_639a0b26 + 100 > -1 / (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100):
                                revert with 0, 17
                            if not (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100):
                                revert with 0, 18
                            if (100 * 360 * users[address(msg.sender)].field_1280 / 100) - (sub_639a0b26 * 360 * users[address(msg.sender)].field_1280 / 100) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) - (100 * (5 * 360 * users[address(msg.sender)].field_1280 / 100 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) + (sub_639a0b26 * (5 * 360 * users[address(msg.sender)].field_1280 / 100 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) / (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) != -sub_639a0b26 + 100:
                                revert with 0, 1
                            call stor104.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (100 * 360 * users[address(msg.sender)].field_1280 / 100) - (sub_639a0b26 * 360 * users[address(msg.sender)].field_1280 / 100) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) - (100 * (5 * 360 * users[address(msg.sender)].field_1280 / 100 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) + (sub_639a0b26 * (5 * 360 * users[address(msg.sender)].field_1280 / 100 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) / 100
                    else:
                        if users[address(msg.sender)].field_1792 > 360 * users[address(msg.sender)].field_1280 / 100:
                            if users[address(msg.sender)].field_1792 > !((360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792):
                                revert with 0, 17
                            users[address(msg.sender)].field_1792 = 360 * users[address(msg.sender)].field_1280 / 100
                            revert with 0, 'Zero payout'
                        if 360 * users[address(msg.sender)].field_1280 / 100 < users[address(msg.sender)].field_1792:
                            revert with 0, 17
                        if users[address(msg.sender)].field_1792 > !((360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792):
                            revert with 0, 17
                        users[address(msg.sender)].field_1792 = 360 * users[address(msg.sender)].field_1280 / 100
                        if (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 <= 0:
                            revert with 0, 'Zero payout'
                        if total_withdraw > !((360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792):
                            revert with 0, 17
                        total_withdraw = total_withdraw + (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792
                        users[address(msg.sender)].field_1536 = block.timestamp
                        emit Withdraw(((360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792), msg.sender);
                        if 360 * users[address(msg.sender)].field_1280 / 100 <= users[address(msg.sender)].field_1792:
                            emit LimitReached(users[address(msg.sender)].field_1792, msg.sender);
                        if sub_639a0b26 > 100:
                            revert with 0, 1
                        if 100 < sub_639a0b26:
                            revert with 0, 17
                        if not -(360 * users[address(msg.sender)].field_1280 / 100) + users[address(msg.sender)].field_1792:
                            call stor104.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, 0
                        else:
                            if (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 and -sub_639a0b26 + 100 > -1 / (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792:
                                revert with 0, 17
                            if not (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792:
                                revert with 0, 18
                            if (100 * 360 * users[address(msg.sender)].field_1280 / 100) - (sub_639a0b26 * 360 * users[address(msg.sender)].field_1280 / 100) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) / (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 != -sub_639a0b26 + 100:
                                revert with 0, 1
                            call stor104.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (100 * 360 * users[address(msg.sender)].field_1280 / 100) - (sub_639a0b26 * 360 * users[address(msg.sender)].field_1280 / 100) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) / 100
            else:
                if users[address(msg.sender)].field_1280 and 10^18 * stor111 > -1 / users[address(msg.sender)].field_1280:
                    revert with 0, 17
                if not users[address(msg.sender)].field_1280:
                    revert with 0, 18
                if 10^18 * users[address(msg.sender)].field_1280 * stor111 / users[address(msg.sender)].field_1280 != 10^18 * stor111:
                    revert with 0, 1
                if users[address(msg.sender)].field_1536 > block.timestamp:
                    if 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 and 0 > -1 / 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600:
                        revert with 0, 17
                    if users[address(msg.sender)].field_1792 > -1:
                        revert with 0, 17
                    if users[address(msg.sender)].field_1792 <= 360 * users[address(msg.sender)].field_1280 / 100:
                        if False and 5 * users[address(msg.sender)].field_1280 / sub_ea2caab3 > 0:
                            revert with 0, 17
                        if 360 * users[address(msg.sender)].field_1280 / 100 <= users[address(msg.sender)].field_1792:
                            revert with 0, 'Full payouts'
                        revert with 0, 'Zero payout'
                    if users[address(msg.sender)].field_1792 > 360 * users[address(msg.sender)].field_1280 / 100:
                        if False and 5 * users[address(msg.sender)].field_1280 / sub_ea2caab3 > 0:
                            revert with 0, 17
                        if 360 * users[address(msg.sender)].field_1280 / 100 <= users[address(msg.sender)].field_1792:
                            revert with 0, 'Full payouts'
                        revert with 0, 'Zero payout'
                    if 360 * users[address(msg.sender)].field_1280 / 100 < users[address(msg.sender)].field_1792:
                        revert with 0, 17
                    if (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 and 5 * users[address(msg.sender)].field_1280 / sub_ea2caab3 > -1 / (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792:
                        revert with 0, 17
                    if (5 * 360 * users[address(msg.sender)].field_1280 / 100 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100 > (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792:
                        if 360 * users[address(msg.sender)].field_1280 / 100 <= users[address(msg.sender)].field_1792:
                            revert with 0, 'Full payouts'
                        revert with 0, 'Zero payout'
                    if (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 < (5 * 360 * users[address(msg.sender)].field_1280 / 100 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100:
                        revert with 0, 17
                    if 360 * users[address(msg.sender)].field_1280 / 100 <= users[address(msg.sender)].field_1792:
                        revert with 0, 'Full payouts'
                    if not (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100):
                        if (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) <= 0:
                            revert with 0, 'Zero payout'
                        if total_withdraw > !((360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100)):
                            revert with 0, 17
                        total_withdraw = total_withdraw + (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100)
                        users[address(msg.sender)].field_1536 = block.timestamp
                        emit Withdraw(((360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100)), msg.sender);
                        if 360 * users[address(msg.sender)].field_1280 / 100 <= users[address(msg.sender)].field_1792:
                            emit LimitReached(users[address(msg.sender)].field_1792, msg.sender);
                        if sub_639a0b26 > 100:
                            revert with 0, 1
                        if 100 < sub_639a0b26:
                            revert with 0, 17
                        if not -(360 * users[address(msg.sender)].field_1280 / 100) + users[address(msg.sender)].field_1792 + ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100):
                            call stor104.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, 0
                        else:
                            if (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) and -sub_639a0b26 + 100 > -1 / (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100):
                                revert with 0, 17
                            if not (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100):
                                revert with 0, 18
                            if (100 * 360 * users[address(msg.sender)].field_1280 / 100) - (sub_639a0b26 * 360 * users[address(msg.sender)].field_1280 / 100) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) - (100 * (5 * 360 * users[address(msg.sender)].field_1280 / 100 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) + (sub_639a0b26 * (5 * 360 * users[address(msg.sender)].field_1280 / 100 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) / (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) != -sub_639a0b26 + 100:
                                revert with 0, 1
                            call stor104.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (100 * 360 * users[address(msg.sender)].field_1280 / 100) - (sub_639a0b26 * 360 * users[address(msg.sender)].field_1280 / 100) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) - (100 * (5 * 360 * users[address(msg.sender)].field_1280 / 100 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) + (sub_639a0b26 * (5 * 360 * users[address(msg.sender)].field_1280 / 100 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) / 100
                    else:
                        if users[address(msg.sender)].field_1792 > !((360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100)):
                            revert with 0, 17
                        if (360 * users[address(msg.sender)].field_1280 / 100) - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) <= 360 * users[address(msg.sender)].field_1280 / 100:
                            if users[address(msg.sender)].field_1792 > !((360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792):
                                revert with 0, 17
                            users[address(msg.sender)].field_1792 = 360 * users[address(msg.sender)].field_1280 / 100
                            if (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) <= 0:
                                revert with 0, 'Zero payout'
                            if total_withdraw > !((360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100)):
                                revert with 0, 17
                            total_withdraw = total_withdraw + (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100)
                            users[address(msg.sender)].field_1536 = block.timestamp
                            emit Withdraw(((360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100)), msg.sender);
                            if 360 * users[address(msg.sender)].field_1280 / 100 <= users[address(msg.sender)].field_1792:
                                emit LimitReached(users[address(msg.sender)].field_1792, msg.sender);
                            if sub_639a0b26 > 100:
                                revert with 0, 1
                            if 100 < sub_639a0b26:
                                revert with 0, 17
                            if not -(360 * users[address(msg.sender)].field_1280 / 100) + users[address(msg.sender)].field_1792 + ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100):
                                call stor104.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 0
                            else:
                                if (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) and -sub_639a0b26 + 100 > -1 / (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100):
                                    revert with 0, 17
                                if not (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100):
                                    revert with 0, 18
                                if (100 * 360 * users[address(msg.sender)].field_1280 / 100) - (sub_639a0b26 * 360 * users[address(msg.sender)].field_1280 / 100) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) - (100 * (5 * 360 * users[address(msg.sender)].field_1280 / 100 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) + (sub_639a0b26 * (5 * 360 * users[address(msg.sender)].field_1280 / 100 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) / (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) != -sub_639a0b26 + 100:
                                    revert with 0, 1
                                call stor104.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (100 * 360 * users[address(msg.sender)].field_1280 / 100) - (sub_639a0b26 * 360 * users[address(msg.sender)].field_1280 / 100) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) - (100 * (5 * 360 * users[address(msg.sender)].field_1280 / 100 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) + (sub_639a0b26 * (5 * 360 * users[address(msg.sender)].field_1280 / 100 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) / 100
                        else:
                            if users[address(msg.sender)].field_1792 > 360 * users[address(msg.sender)].field_1280 / 100:
                                if users[address(msg.sender)].field_1792 > !((360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792):
                                    revert with 0, 17
                                users[address(msg.sender)].field_1792 = 360 * users[address(msg.sender)].field_1280 / 100
                                revert with 0, 'Zero payout'
                            if 360 * users[address(msg.sender)].field_1280 / 100 < users[address(msg.sender)].field_1792:
                                revert with 0, 17
                            if users[address(msg.sender)].field_1792 > !((360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792):
                                revert with 0, 17
                            users[address(msg.sender)].field_1792 = 360 * users[address(msg.sender)].field_1280 / 100
                            if (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 <= 0:
                                revert with 0, 'Zero payout'
                            if total_withdraw > !((360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792):
                                revert with 0, 17
                            total_withdraw = total_withdraw + (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792
                            users[address(msg.sender)].field_1536 = block.timestamp
                            emit Withdraw(((360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792), msg.sender);
                            if 360 * users[address(msg.sender)].field_1280 / 100 <= users[address(msg.sender)].field_1792:
                                emit LimitReached(users[address(msg.sender)].field_1792, msg.sender);
                            if sub_639a0b26 > 100:
                                revert with 0, 1
                            if 100 < sub_639a0b26:
                                revert with 0, 17
                            if not -(360 * users[address(msg.sender)].field_1280 / 100) + users[address(msg.sender)].field_1792:
                                call stor104.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 0
                            else:
                                if (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 and -sub_639a0b26 + 100 > -1 / (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792:
                                    revert with 0, 17
                                if not (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792:
                                    revert with 0, 18
                                if (100 * 360 * users[address(msg.sender)].field_1280 / 100) - (sub_639a0b26 * 360 * users[address(msg.sender)].field_1280 / 100) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) / (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 != -sub_639a0b26 + 100:
                                    revert with 0, 1
                                call stor104.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (100 * 360 * users[address(msg.sender)].field_1280 / 100) - (sub_639a0b26 * 360 * users[address(msg.sender)].field_1280 / 100) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) / 100
                else:
                    if block.timestamp < users[address(msg.sender)].field_1536:
                        revert with 0, 17
                    if 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 and block.timestamp - users[address(msg.sender)].field_1536 > -1 / 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600:
                        revert with 0, 17
                    if users[address(msg.sender)].field_1792 > !((block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600)):
                        revert with 0, 17
                    if users[address(msg.sender)].field_1792 + (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) <= 360 * users[address(msg.sender)].field_1280 / 100:
                        if (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) and 5 * users[address(msg.sender)].field_1280 / sub_ea2caab3 > -1 / (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600):
                            revert with 0, 17
                        if (5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100 > (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600):
                            if 360 * users[address(msg.sender)].field_1280 / 100 <= users[address(msg.sender)].field_1792:
                                revert with 0, 'Full payouts'
                            revert with 0, 'Zero payout'
                        if (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) < (5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100:
                            revert with 0, 17
                        if 360 * users[address(msg.sender)].field_1280 / 100 <= users[address(msg.sender)].field_1792:
                            revert with 0, 'Full payouts'
                        if not (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100):
                            if (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) <= 0:
                                revert with 0, 'Zero payout'
                            if total_withdraw > !((block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100)):
                                revert with 0, 17
                            total_withdraw = total_withdraw + (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100)
                            users[address(msg.sender)].field_1536 = block.timestamp
                            emit Withdraw(((block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100)), msg.sender);
                            if 360 * users[address(msg.sender)].field_1280 / 100 <= users[address(msg.sender)].field_1792:
                                emit LimitReached(users[address(msg.sender)].field_1792, msg.sender);
                            if sub_639a0b26 > 100:
                                revert with 0, 1
                            if 100 < sub_639a0b26:
                                revert with 0, 17
                            if not (-1 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) + (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) + ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100):
                                call stor104.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 0
                            else:
                                if (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) and -sub_639a0b26 + 100 > -1 / (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100):
                                    revert with 0, 17
                                if not (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100):
                                    revert with 0, 18
                                if (100 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (sub_639a0b26 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (100 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) + (sub_639a0b26 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (100 * (5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) + (sub_639a0b26 * (5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) / (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) != -sub_639a0b26 + 100:
                                    revert with 0, 1
                                call stor104.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (100 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (sub_639a0b26 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (100 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) + (sub_639a0b26 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (100 * (5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) + (sub_639a0b26 * (5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) / 100
                        else:
                            if users[address(msg.sender)].field_1792 > !((block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100)):
                                revert with 0, 17
                            if users[address(msg.sender)].field_1792 + (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) <= 360 * users[address(msg.sender)].field_1280 / 100:
                                if users[address(msg.sender)].field_1792 > !((block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600)):
                                    revert with 0, 17
                                users[address(msg.sender)].field_1792 = users[address(msg.sender)].field_1792 + (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600)
                                if (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) <= 0:
                                    revert with 0, 'Zero payout'
                                if total_withdraw > !((block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100)):
                                    revert with 0, 17
                                total_withdraw = total_withdraw + (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100)
                                users[address(msg.sender)].field_1536 = block.timestamp
                                emit Withdraw(((block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100)), msg.sender);
                                if 360 * users[address(msg.sender)].field_1280 / 100 <= users[address(msg.sender)].field_1792:
                                    emit LimitReached(users[address(msg.sender)].field_1792, msg.sender);
                                if sub_639a0b26 > 100:
                                    revert with 0, 1
                                if 100 < sub_639a0b26:
                                    revert with 0, 17
                                if not (-1 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) + (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) + ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100):
                                    call stor104.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, 0
                                else:
                                    if (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) and -sub_639a0b26 + 100 > -1 / (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100):
                                        revert with 0, 17
                                    if not (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100):
                                        revert with 0, 18
                                    if (100 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (sub_639a0b26 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (100 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) + (sub_639a0b26 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (100 * (5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) + (sub_639a0b26 * (5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) / (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) != -sub_639a0b26 + 100:
                                        revert with 0, 1
                                    call stor104.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (100 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (sub_639a0b26 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (100 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) + (sub_639a0b26 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (100 * (5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) + (sub_639a0b26 * (5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) / 100
                            else:
                                if users[address(msg.sender)].field_1792 > 360 * users[address(msg.sender)].field_1280 / 100:
                                    if users[address(msg.sender)].field_1792 > !((block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600)):
                                        revert with 0, 17
                                    users[address(msg.sender)].field_1792 = users[address(msg.sender)].field_1792 + (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600)
                                    revert with 0, 'Zero payout'
                                if 360 * users[address(msg.sender)].field_1280 / 100 < users[address(msg.sender)].field_1792:
                                    revert with 0, 17
                                if users[address(msg.sender)].field_1792 > !((block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600)):
                                    revert with 0, 17
                                users[address(msg.sender)].field_1792 = users[address(msg.sender)].field_1792 + (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600)
                                if (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 <= 0:
                                    revert with 0, 'Zero payout'
                                if total_withdraw > !((360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792):
                                    revert with 0, 17
                                total_withdraw = total_withdraw + (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792
                                users[address(msg.sender)].field_1536 = block.timestamp
                                emit Withdraw(((360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792), msg.sender);
                                if 360 * users[address(msg.sender)].field_1280 / 100 <= users[address(msg.sender)].field_1792:
                                    emit LimitReached(users[address(msg.sender)].field_1792, msg.sender);
                                if sub_639a0b26 > 100:
                                    revert with 0, 1
                                if 100 < sub_639a0b26:
                                    revert with 0, 17
                                if not -(360 * users[address(msg.sender)].field_1280 / 100) + users[address(msg.sender)].field_1792:
                                    call stor104.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, 0
                                else:
                                    if (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 and -sub_639a0b26 + 100 > -1 / (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792:
                                        revert with 0, 17
                                    if not (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792:
                                        revert with 0, 18
                                    if (100 * 360 * users[address(msg.sender)].field_1280 / 100) - (sub_639a0b26 * 360 * users[address(msg.sender)].field_1280 / 100) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) / (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 != -sub_639a0b26 + 100:
                                        revert with 0, 1
                                    call stor104.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (100 * 360 * users[address(msg.sender)].field_1280 / 100) - (sub_639a0b26 * 360 * users[address(msg.sender)].field_1280 / 100) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) / 100
                    else:
                        if users[address(msg.sender)].field_1792 > 360 * users[address(msg.sender)].field_1280 / 100:
                            if False and 5 * users[address(msg.sender)].field_1280 / sub_ea2caab3 > 0:
                                revert with 0, 17
                            if 360 * users[address(msg.sender)].field_1280 / 100 <= users[address(msg.sender)].field_1792:
                                revert with 0, 'Full payouts'
                            revert with 0, 'Zero payout'
                        if 360 * users[address(msg.sender)].field_1280 / 100 < users[address(msg.sender)].field_1792:
                            revert with 0, 17
                        if (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 and 5 * users[address(msg.sender)].field_1280 / sub_ea2caab3 > -1 / (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792:
                            revert with 0, 17
                        if (5 * 360 * users[address(msg.sender)].field_1280 / 100 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100 > (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792:
                            if 360 * users[address(msg.sender)].field_1280 / 100 <= users[address(msg.sender)].field_1792:
                                revert with 0, 'Full payouts'
                            revert with 0, 'Zero payout'
                        if (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 < (5 * 360 * users[address(msg.sender)].field_1280 / 100 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100:
                            revert with 0, 17
                        if 360 * users[address(msg.sender)].field_1280 / 100 <= users[address(msg.sender)].field_1792:
                            revert with 0, 'Full payouts'
                        if not (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100):
                            if (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) <= 0:
                                revert with 0, 'Zero payout'
                            if total_withdraw > !((360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100)):
                                revert with 0, 17
                            total_withdraw = total_withdraw + (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100)
                            users[address(msg.sender)].field_1536 = block.timestamp
                            emit Withdraw(((360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100)), msg.sender);
                            if 360 * users[address(msg.sender)].field_1280 / 100 <= users[address(msg.sender)].field_1792:
                                emit LimitReached(users[address(msg.sender)].field_1792, msg.sender);
                            if sub_639a0b26 > 100:
                                revert with 0, 1
                            if 100 < sub_639a0b26:
                                revert with 0, 17
                            if not -(360 * users[address(msg.sender)].field_1280 / 100) + users[address(msg.sender)].field_1792 + ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100):
                                call stor104.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 0
                            else:
                                if (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) and -sub_639a0b26 + 100 > -1 / (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100):
                                    revert with 0, 17
                                if not (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100):
                                    revert with 0, 18
                                if (100 * 360 * users[address(msg.sender)].field_1280 / 100) - (sub_639a0b26 * 360 * users[address(msg.sender)].field_1280 / 100) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) - (100 * (5 * 360 * users[address(msg.sender)].field_1280 / 100 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) + (sub_639a0b26 * (5 * 360 * users[address(msg.sender)].field_1280 / 100 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) / (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) != -sub_639a0b26 + 100:
                                    revert with 0, 1
                                call stor104.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (100 * 360 * users[address(msg.sender)].field_1280 / 100) - (sub_639a0b26 * 360 * users[address(msg.sender)].field_1280 / 100) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) - (100 * (5 * 360 * users[address(msg.sender)].field_1280 / 100 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) + (sub_639a0b26 * (5 * 360 * users[address(msg.sender)].field_1280 / 100 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) / 100
                        else:
                            if users[address(msg.sender)].field_1792 > !((360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100)):
                                revert with 0, 17
                            if (360 * users[address(msg.sender)].field_1280 / 100) - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) <= 360 * users[address(msg.sender)].field_1280 / 100:
                                if users[address(msg.sender)].field_1792 > !((360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792):
                                    revert with 0, 17
                                users[address(msg.sender)].field_1792 = 360 * users[address(msg.sender)].field_1280 / 100
                                if (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) <= 0:
                                    revert with 0, 'Zero payout'
                                if total_withdraw > !((360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100)):
                                    revert with 0, 17
                                total_withdraw = total_withdraw + (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100)
                                users[address(msg.sender)].field_1536 = block.timestamp
                                emit Withdraw(((360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100)), msg.sender);
                                if 360 * users[address(msg.sender)].field_1280 / 100 <= users[address(msg.sender)].field_1792:
                                    emit LimitReached(users[address(msg.sender)].field_1792, msg.sender);
                                if sub_639a0b26 > 100:
                                    revert with 0, 1
                                if 100 < sub_639a0b26:
                                    revert with 0, 17
                                if not -(360 * users[address(msg.sender)].field_1280 / 100) + users[address(msg.sender)].field_1792 + ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100):
                                    call stor104.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, 0
                                else:
                                    if (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) and -sub_639a0b26 + 100 > -1 / (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100):
                                        revert with 0, 17
                                    if not (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100):
                                        revert with 0, 18
                                    if (100 * 360 * users[address(msg.sender)].field_1280 / 100) - (sub_639a0b26 * 360 * users[address(msg.sender)].field_1280 / 100) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) - (100 * (5 * 360 * users[address(msg.sender)].field_1280 / 100 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) + (sub_639a0b26 * (5 * 360 * users[address(msg.sender)].field_1280 / 100 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) / (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) != -sub_639a0b26 + 100:
                                        revert with 0, 1
                                    call stor104.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (100 * 360 * users[address(msg.sender)].field_1280 / 100) - (sub_639a0b26 * 360 * users[address(msg.sender)].field_1280 / 100) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) - (100 * (5 * 360 * users[address(msg.sender)].field_1280 / 100 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) + (sub_639a0b26 * (5 * 360 * users[address(msg.sender)].field_1280 / 100 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) / 100
                            else:
                                if users[address(msg.sender)].field_1792 > 360 * users[address(msg.sender)].field_1280 / 100:
                                    if users[address(msg.sender)].field_1792 > !((360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792):
                                        revert with 0, 17
                                    users[address(msg.sender)].field_1792 = 360 * users[address(msg.sender)].field_1280 / 100
                                    revert with 0, 'Zero payout'
                                if 360 * users[address(msg.sender)].field_1280 / 100 < users[address(msg.sender)].field_1792:
                                    revert with 0, 17
                                if users[address(msg.sender)].field_1792 > !((360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792):
                                    revert with 0, 17
                                users[address(msg.sender)].field_1792 = 360 * users[address(msg.sender)].field_1280 / 100
                                if (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 <= 0:
                                    revert with 0, 'Zero payout'
                                if total_withdraw > !((360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792):
                                    revert with 0, 17
                                total_withdraw = total_withdraw + (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792
                                users[address(msg.sender)].field_1536 = block.timestamp
                                emit Withdraw(((360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792), msg.sender);
                                if 360 * users[address(msg.sender)].field_1280 / 100 <= users[address(msg.sender)].field_1792:
                                    emit LimitReached(users[address(msg.sender)].field_1792, msg.sender);
                                if sub_639a0b26 > 100:
                                    revert with 0, 1
                                if 100 < sub_639a0b26:
                                    revert with 0, 17
                                if not -(360 * users[address(msg.sender)].field_1280 / 100) + users[address(msg.sender)].field_1792:
                                    call stor104.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, 0
                                else:
                                    if (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 and -sub_639a0b26 + 100 > -1 / (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792:
                                        revert with 0, 17
                                    if not (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792:
                                        revert with 0, 18
                                    if (100 * 360 * users[address(msg.sender)].field_1280 / 100) - (sub_639a0b26 * 360 * users[address(msg.sender)].field_1280 / 100) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) / (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 != -sub_639a0b26 + 100:
                                        revert with 0, 1
                                    call stor104.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (100 * 360 * users[address(msg.sender)].field_1280 / 100) - (sub_639a0b26 * 360 * users[address(msg.sender)].field_1280 / 100) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) / 100
        else:
            if stor118 > 0x3333333333333333333333333333333333333333333333333333333333333333:
                revert with 0, 17
            if 360 * users[address(msg.sender)].field_1280 / 100 <= users[address(msg.sender)].field_1792:
                if 360 * users[address(msg.sender)].field_1280 / 100 <= users[address(msg.sender)].field_1792:
                    revert with 0, 'Full payouts'
                revert with 0, 'Zero payout'
            if stor111 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if not -users[address(msg.sender)].field_1280:
                if users[address(msg.sender)].field_1536 <= block.timestamp:
                    if block.timestamp < users[address(msg.sender)].field_1536:
                        revert with 0, 17
                    if False and block.timestamp - users[address(msg.sender)].field_1536 > 0:
                        revert with 0, 17
                if users[address(msg.sender)].field_1792 > -1:
                    revert with 0, 17
                if users[address(msg.sender)].field_1792 <= 360 * users[address(msg.sender)].field_1280 / 100:
                    if False and 5 * stor118 > 0:
                        revert with 0, 17
                    if 360 * users[address(msg.sender)].field_1280 / 100 <= users[address(msg.sender)].field_1792:
                        revert with 0, 'Full payouts'
                    revert with 0, 'Zero payout'
                if users[address(msg.sender)].field_1792 > 360 * users[address(msg.sender)].field_1280 / 100:
                    if False and 5 * stor118 > 0:
                        revert with 0, 17
                    if 360 * users[address(msg.sender)].field_1280 / 100 <= users[address(msg.sender)].field_1792:
                        revert with 0, 'Full payouts'
                    revert with 0, 'Zero payout'
                if 360 * users[address(msg.sender)].field_1280 / 100 < users[address(msg.sender)].field_1792:
                    revert with 0, 17
                if (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 and 5 * stor118 > -1 / (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792:
                    revert with 0, 17
                if (5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100 > (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792:
                    if 360 * users[address(msg.sender)].field_1280 / 100 <= users[address(msg.sender)].field_1792:
                        revert with 0, 'Full payouts'
                    revert with 0, 'Zero payout'
                if (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 < (5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100:
                    revert with 0, 17
                if 360 * users[address(msg.sender)].field_1280 / 100 <= users[address(msg.sender)].field_1792:
                    revert with 0, 'Full payouts'
                if not (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100):
                    if (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100) <= 0:
                        revert with 0, 'Zero payout'
                    if total_withdraw > !((360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100)):
                        revert with 0, 17
                    total_withdraw = total_withdraw + (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100)
                    users[address(msg.sender)].field_1536 = block.timestamp
                    emit Withdraw(((360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100)), msg.sender);
                    if 360 * users[address(msg.sender)].field_1280 / 100 <= users[address(msg.sender)].field_1792:
                        emit LimitReached(users[address(msg.sender)].field_1792, msg.sender);
                    if sub_639a0b26 > 100:
                        revert with 0, 1
                    if 100 < sub_639a0b26:
                        revert with 0, 17
                    if not -(360 * users[address(msg.sender)].field_1280 / 100) + users[address(msg.sender)].field_1792 + ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100):
                        call stor104.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, 0
                    else:
                        if (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100) and -sub_639a0b26 + 100 > -1 / (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100):
                            revert with 0, 17
                        if not (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100):
                            revert with 0, 18
                        if (100 * 360 * users[address(msg.sender)].field_1280 / 100) - (sub_639a0b26 * 360 * users[address(msg.sender)].field_1280 / 100) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) - (100 * (5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100) + (sub_639a0b26 * (5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100) / (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100) != -sub_639a0b26 + 100:
                            revert with 0, 1
                        call stor104.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (100 * 360 * users[address(msg.sender)].field_1280 / 100) - (sub_639a0b26 * 360 * users[address(msg.sender)].field_1280 / 100) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) - (100 * (5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100) + (sub_639a0b26 * (5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100) / 100
                else:
                    if users[address(msg.sender)].field_1792 > !((360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100)):
                        revert with 0, 17
                    if (360 * users[address(msg.sender)].field_1280 / 100) - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100) <= 360 * users[address(msg.sender)].field_1280 / 100:
                        if users[address(msg.sender)].field_1792 > !((360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792):
                            revert with 0, 17
                        users[address(msg.sender)].field_1792 = 360 * users[address(msg.sender)].field_1280 / 100
                        if (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100) <= 0:
                            revert with 0, 'Zero payout'
                        if total_withdraw > !((360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100)):
                            revert with 0, 17
                        total_withdraw = total_withdraw + (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100)
                        users[address(msg.sender)].field_1536 = block.timestamp
                        emit Withdraw(((360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100)), msg.sender);
                        if 360 * users[address(msg.sender)].field_1280 / 100 <= users[address(msg.sender)].field_1792:
                            emit LimitReached(users[address(msg.sender)].field_1792, msg.sender);
                        if sub_639a0b26 > 100:
                            revert with 0, 1
                        if 100 < sub_639a0b26:
                            revert with 0, 17
                        if not -(360 * users[address(msg.sender)].field_1280 / 100) + users[address(msg.sender)].field_1792 + ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100):
                            call stor104.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, 0
                        else:
                            if (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100) and -sub_639a0b26 + 100 > -1 / (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100):
                                revert with 0, 17
                            if not (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100):
                                revert with 0, 18
                            if (100 * 360 * users[address(msg.sender)].field_1280 / 100) - (sub_639a0b26 * 360 * users[address(msg.sender)].field_1280 / 100) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) - (100 * (5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100) + (sub_639a0b26 * (5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100) / (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100) != -sub_639a0b26 + 100:
                                revert with 0, 1
                            call stor104.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (100 * 360 * users[address(msg.sender)].field_1280 / 100) - (sub_639a0b26 * 360 * users[address(msg.sender)].field_1280 / 100) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) - (100 * (5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100) + (sub_639a0b26 * (5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100) / 100
                    else:
                        if users[address(msg.sender)].field_1792 > 360 * users[address(msg.sender)].field_1280 / 100:
                            if users[address(msg.sender)].field_1792 > !((360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792):
                                revert with 0, 17
                            users[address(msg.sender)].field_1792 = 360 * users[address(msg.sender)].field_1280 / 100
                            revert with 0, 'Zero payout'
                        if 360 * users[address(msg.sender)].field_1280 / 100 < users[address(msg.sender)].field_1792:
                            revert with 0, 17
                        if users[address(msg.sender)].field_1792 > !((360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792):
                            revert with 0, 17
                        users[address(msg.sender)].field_1792 = 360 * users[address(msg.sender)].field_1280 / 100
                        if (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 <= 0:
                            revert with 0, 'Zero payout'
                        if total_withdraw > !((360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792):
                            revert with 0, 17
                        total_withdraw = total_withdraw + (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792
                        users[address(msg.sender)].field_1536 = block.timestamp
                        emit Withdraw(((360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792), msg.sender);
                        if 360 * users[address(msg.sender)].field_1280 / 100 <= users[address(msg.sender)].field_1792:
                            emit LimitReached(users[address(msg.sender)].field_1792, msg.sender);
                        if sub_639a0b26 > 100:
                            revert with 0, 1
                        if 100 < sub_639a0b26:
                            revert with 0, 17
                        if not -(360 * users[address(msg.sender)].field_1280 / 100) + users[address(msg.sender)].field_1792:
                            call stor104.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, 0
                        else:
                            if (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 and -sub_639a0b26 + 100 > -1 / (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792:
                                revert with 0, 17
                            if not (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792:
                                revert with 0, 18
                            if (100 * 360 * users[address(msg.sender)].field_1280 / 100) - (sub_639a0b26 * 360 * users[address(msg.sender)].field_1280 / 100) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) / (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 != -sub_639a0b26 + 100:
                                revert with 0, 1
                            call stor104.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (100 * 360 * users[address(msg.sender)].field_1280 / 100) - (sub_639a0b26 * 360 * users[address(msg.sender)].field_1280 / 100) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) / 100
            else:
                if users[address(msg.sender)].field_1280 and 10^18 * stor111 > -1 / users[address(msg.sender)].field_1280:
                    revert with 0, 17
                if not users[address(msg.sender)].field_1280:
                    revert with 0, 18
                if 10^18 * users[address(msg.sender)].field_1280 * stor111 / users[address(msg.sender)].field_1280 != 10^18 * stor111:
                    revert with 0, 1
                if users[address(msg.sender)].field_1536 > block.timestamp:
                    if 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 and 0 > -1 / 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600:
                        revert with 0, 17
                    if users[address(msg.sender)].field_1792 > -1:
                        revert with 0, 17
                    if users[address(msg.sender)].field_1792 <= 360 * users[address(msg.sender)].field_1280 / 100:
                        if False and 5 * stor118 > 0:
                            revert with 0, 17
                        if 360 * users[address(msg.sender)].field_1280 / 100 <= users[address(msg.sender)].field_1792:
                            revert with 0, 'Full payouts'
                        revert with 0, 'Zero payout'
                    if users[address(msg.sender)].field_1792 > 360 * users[address(msg.sender)].field_1280 / 100:
                        if False and 5 * stor118 > 0:
                            revert with 0, 17
                        if 360 * users[address(msg.sender)].field_1280 / 100 <= users[address(msg.sender)].field_1792:
                            revert with 0, 'Full payouts'
                        revert with 0, 'Zero payout'
                    if 360 * users[address(msg.sender)].field_1280 / 100 < users[address(msg.sender)].field_1792:
                        revert with 0, 17
                    if (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 and 5 * stor118 > -1 / (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792:
                        revert with 0, 17
                    if (5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100 > (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792:
                        if 360 * users[address(msg.sender)].field_1280 / 100 <= users[address(msg.sender)].field_1792:
                            revert with 0, 'Full payouts'
                        revert with 0, 'Zero payout'
                    if (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 < (5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100:
                        revert with 0, 17
                    if 360 * users[address(msg.sender)].field_1280 / 100 <= users[address(msg.sender)].field_1792:
                        revert with 0, 'Full payouts'
                    if not (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100):
                        if (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100) <= 0:
                            revert with 0, 'Zero payout'
                        if total_withdraw > !((360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100)):
                            revert with 0, 17
                        total_withdraw = total_withdraw + (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100)
                        users[address(msg.sender)].field_1536 = block.timestamp
                        emit Withdraw(((360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100)), msg.sender);
                        if 360 * users[address(msg.sender)].field_1280 / 100 <= users[address(msg.sender)].field_1792:
                            emit LimitReached(users[address(msg.sender)].field_1792, msg.sender);
                        if sub_639a0b26 > 100:
                            revert with 0, 1
                        if 100 < sub_639a0b26:
                            revert with 0, 17
                        if not -(360 * users[address(msg.sender)].field_1280 / 100) + users[address(msg.sender)].field_1792 + ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100):
                            call stor104.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, 0
                        else:
                            if (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100) and -sub_639a0b26 + 100 > -1 / (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100):
                                revert with 0, 17
                            if not (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100):
                                revert with 0, 18
                            if (100 * 360 * users[address(msg.sender)].field_1280 / 100) - (sub_639a0b26 * 360 * users[address(msg.sender)].field_1280 / 100) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) - (100 * (5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100) + (sub_639a0b26 * (5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100) / (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100) != -sub_639a0b26 + 100:
                                revert with 0, 1
                            call stor104.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (100 * 360 * users[address(msg.sender)].field_1280 / 100) - (sub_639a0b26 * 360 * users[address(msg.sender)].field_1280 / 100) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) - (100 * (5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100) + (sub_639a0b26 * (5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100) / 100
                    else:
                        if users[address(msg.sender)].field_1792 > !((360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100)):
                            revert with 0, 17
                        if (360 * users[address(msg.sender)].field_1280 / 100) - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100) <= 360 * users[address(msg.sender)].field_1280 / 100:
                            if users[address(msg.sender)].field_1792 > !((360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792):
                                revert with 0, 17
                            users[address(msg.sender)].field_1792 = 360 * users[address(msg.sender)].field_1280 / 100
                            if (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100) <= 0:
                                revert with 0, 'Zero payout'
                            if total_withdraw > !((360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100)):
                                revert with 0, 17
                            total_withdraw = total_withdraw + (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100)
                            users[address(msg.sender)].field_1536 = block.timestamp
                            emit Withdraw(((360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100)), msg.sender);
                            if 360 * users[address(msg.sender)].field_1280 / 100 <= users[address(msg.sender)].field_1792:
                                emit LimitReached(users[address(msg.sender)].field_1792, msg.sender);
                            if sub_639a0b26 > 100:
                                revert with 0, 1
                            if 100 < sub_639a0b26:
                                revert with 0, 17
                            if not -(360 * users[address(msg.sender)].field_1280 / 100) + users[address(msg.sender)].field_1792 + ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100):
                                call stor104.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 0
                            else:
                                if (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100) and -sub_639a0b26 + 100 > -1 / (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100):
                                    revert with 0, 17
                                if not (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100):
                                    revert with 0, 18
                                if (100 * 360 * users[address(msg.sender)].field_1280 / 100) - (sub_639a0b26 * 360 * users[address(msg.sender)].field_1280 / 100) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) - (100 * (5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100) + (sub_639a0b26 * (5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100) / (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100) != -sub_639a0b26 + 100:
                                    revert with 0, 1
                                call stor104.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (100 * 360 * users[address(msg.sender)].field_1280 / 100) - (sub_639a0b26 * 360 * users[address(msg.sender)].field_1280 / 100) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) - (100 * (5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100) + (sub_639a0b26 * (5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100) / 100
                        else:
                            if users[address(msg.sender)].field_1792 > 360 * users[address(msg.sender)].field_1280 / 100:
                                if users[address(msg.sender)].field_1792 > !((360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792):
                                    revert with 0, 17
                                users[address(msg.sender)].field_1792 = 360 * users[address(msg.sender)].field_1280 / 100
                                revert with 0, 'Zero payout'
                            if 360 * users[address(msg.sender)].field_1280 / 100 < users[address(msg.sender)].field_1792:
                                revert with 0, 17
                            if users[address(msg.sender)].field_1792 > !((360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792):
                                revert with 0, 17
                            users[address(msg.sender)].field_1792 = 360 * users[address(msg.sender)].field_1280 / 100
                            if (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 <= 0:
                                revert with 0, 'Zero payout'
                            if total_withdraw > !((360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792):
                                revert with 0, 17
                            total_withdraw = total_withdraw + (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792
                            users[address(msg.sender)].field_1536 = block.timestamp
                            emit Withdraw(((360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792), msg.sender);
                            if 360 * users[address(msg.sender)].field_1280 / 100 <= users[address(msg.sender)].field_1792:
                                emit LimitReached(users[address(msg.sender)].field_1792, msg.sender);
                            if sub_639a0b26 > 100:
                                revert with 0, 1
                            if 100 < sub_639a0b26:
                                revert with 0, 17
                            if not -(360 * users[address(msg.sender)].field_1280 / 100) + users[address(msg.sender)].field_1792:
                                call stor104.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 0
                            else:
                                if (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 and -sub_639a0b26 + 100 > -1 / (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792:
                                    revert with 0, 17
                                if not (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792:
                                    revert with 0, 18
                                if (100 * 360 * users[address(msg.sender)].field_1280 / 100) - (sub_639a0b26 * 360 * users[address(msg.sender)].field_1280 / 100) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) / (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 != -sub_639a0b26 + 100:
                                    revert with 0, 1
                                call stor104.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (100 * 360 * users[address(msg.sender)].field_1280 / 100) - (sub_639a0b26 * 360 * users[address(msg.sender)].field_1280 / 100) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) / 100
                else:
                    if block.timestamp < users[address(msg.sender)].field_1536:
                        revert with 0, 17
                    if 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 and block.timestamp - users[address(msg.sender)].field_1536 > -1 / 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600:
                        revert with 0, 17
                    if users[address(msg.sender)].field_1792 > !((block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600)):
                        revert with 0, 17
                    if users[address(msg.sender)].field_1792 + (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) <= 360 * users[address(msg.sender)].field_1280 / 100:
                        if (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) and 5 * stor118 > -1 / (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600):
                            revert with 0, 17
                        if (5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) / 100 > (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600):
                            if 360 * users[address(msg.sender)].field_1280 / 100 <= users[address(msg.sender)].field_1792:
                                revert with 0, 'Full payouts'
                            revert with 0, 'Zero payout'
                        if (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) < (5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) / 100:
                            revert with 0, 17
                        if 360 * users[address(msg.sender)].field_1280 / 100 <= users[address(msg.sender)].field_1792:
                            revert with 0, 'Full payouts'
                        if not (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) / 100):
                            if (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) / 100) <= 0:
                                revert with 0, 'Zero payout'
                            if total_withdraw > !((block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) / 100)):
                                revert with 0, 17
                            total_withdraw = total_withdraw + (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) / 100)
                            users[address(msg.sender)].field_1536 = block.timestamp
                            emit Withdraw(((block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) / 100)), msg.sender);
                            if 360 * users[address(msg.sender)].field_1280 / 100 <= users[address(msg.sender)].field_1792:
                                emit LimitReached(users[address(msg.sender)].field_1792, msg.sender);
                            if sub_639a0b26 > 100:
                                revert with 0, 1
                            if 100 < sub_639a0b26:
                                revert with 0, 17
                            if not (-1 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) + (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) + ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) / 100):
                                call stor104.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 0
                            else:
                                if (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) / 100) and -sub_639a0b26 + 100 > -1 / (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) / 100):
                                    revert with 0, 17
                                if not (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) / 100):
                                    revert with 0, 18
                                if (100 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (sub_639a0b26 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (100 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) + (sub_639a0b26 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (100 * (5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) / 100) + (sub_639a0b26 * (5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) / 100) / (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) / 100) != -sub_639a0b26 + 100:
                                    revert with 0, 1
                                call stor104.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (100 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (sub_639a0b26 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (100 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) + (sub_639a0b26 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (100 * (5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) / 100) + (sub_639a0b26 * (5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) / 100) / 100
                        else:
                            if users[address(msg.sender)].field_1792 > !((block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) / 100)):
                                revert with 0, 17
                            if users[address(msg.sender)].field_1792 + (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) / 100) <= 360 * users[address(msg.sender)].field_1280 / 100:
                                if users[address(msg.sender)].field_1792 > !((block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600)):
                                    revert with 0, 17
                                users[address(msg.sender)].field_1792 = users[address(msg.sender)].field_1792 + (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600)
                                if (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) / 100) <= 0:
                                    revert with 0, 'Zero payout'
                                if total_withdraw > !((block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) / 100)):
                                    revert with 0, 17
                                total_withdraw = total_withdraw + (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) / 100)
                                users[address(msg.sender)].field_1536 = block.timestamp
                                emit Withdraw(((block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) / 100)), msg.sender);
                                if 360 * users[address(msg.sender)].field_1280 / 100 <= users[address(msg.sender)].field_1792:
                                    emit LimitReached(users[address(msg.sender)].field_1792, msg.sender);
                                if sub_639a0b26 > 100:
                                    revert with 0, 1
                                if 100 < sub_639a0b26:
                                    revert with 0, 17
                                if not (-1 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) + (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) + ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) / 100):
                                    call stor104.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, 0
                                else:
                                    if (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) / 100) and -sub_639a0b26 + 100 > -1 / (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) / 100):
                                        revert with 0, 17
                                    if not (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) / 100):
                                        revert with 0, 18
                                    if (100 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (sub_639a0b26 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (100 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) + (sub_639a0b26 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (100 * (5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) / 100) + (sub_639a0b26 * (5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) / 100) / (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) / 100) != -sub_639a0b26 + 100:
                                        revert with 0, 1
                                    call stor104.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (100 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (sub_639a0b26 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (100 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) + (sub_639a0b26 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (100 * (5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) / 100) + (sub_639a0b26 * (5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) / 100) / 100
                            else:
                                if users[address(msg.sender)].field_1792 > 360 * users[address(msg.sender)].field_1280 / 100:
                                    if users[address(msg.sender)].field_1792 > !((block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600)):
                                        revert with 0, 17
                                    users[address(msg.sender)].field_1792 = users[address(msg.sender)].field_1792 + (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600)
                                    revert with 0, 'Zero payout'
                                if 360 * users[address(msg.sender)].field_1280 / 100 < users[address(msg.sender)].field_1792:
                                    revert with 0, 17
                                if users[address(msg.sender)].field_1792 > !((block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600)):
                                    revert with 0, 17
                                users[address(msg.sender)].field_1792 = users[address(msg.sender)].field_1792 + (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600)
                                if (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 <= 0:
                                    revert with 0, 'Zero payout'
                                if total_withdraw > !((360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792):
                                    revert with 0, 17
                                total_withdraw = total_withdraw + (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792
                                users[address(msg.sender)].field_1536 = block.timestamp
                                emit Withdraw(((360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792), msg.sender);
                                if 360 * users[address(msg.sender)].field_1280 / 100 <= users[address(msg.sender)].field_1792:
                                    emit LimitReached(users[address(msg.sender)].field_1792, msg.sender);
                                if sub_639a0b26 > 100:
                                    revert with 0, 1
                                if 100 < sub_639a0b26:
                                    revert with 0, 17
                                if not -(360 * users[address(msg.sender)].field_1280 / 100) + users[address(msg.sender)].field_1792:
                                    call stor104.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, 0
                                else:
                                    if (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 and -sub_639a0b26 + 100 > -1 / (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792:
                                        revert with 0, 17
                                    if not (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792:
                                        revert with 0, 18
                                    if (100 * 360 * users[address(msg.sender)].field_1280 / 100) - (sub_639a0b26 * 360 * users[address(msg.sender)].field_1280 / 100) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) / (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 != -sub_639a0b26 + 100:
                                        revert with 0, 1
                                    call stor104.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (100 * 360 * users[address(msg.sender)].field_1280 / 100) - (sub_639a0b26 * 360 * users[address(msg.sender)].field_1280 / 100) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) / 100
                    else:
                        if users[address(msg.sender)].field_1792 > 360 * users[address(msg.sender)].field_1280 / 100:
                            if False and 5 * stor118 > 0:
                                revert with 0, 17
                            if 360 * users[address(msg.sender)].field_1280 / 100 <= users[address(msg.sender)].field_1792:
                                revert with 0, 'Full payouts'
                            revert with 0, 'Zero payout'
                        if 360 * users[address(msg.sender)].field_1280 / 100 < users[address(msg.sender)].field_1792:
                            revert with 0, 17
                        if (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 and 5 * stor118 > -1 / (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792:
                            revert with 0, 17
                        if (5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100 > (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792:
                            if 360 * users[address(msg.sender)].field_1280 / 100 <= users[address(msg.sender)].field_1792:
                                revert with 0, 'Full payouts'
                            revert with 0, 'Zero payout'
                        if (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 < (5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100:
                            revert with 0, 17
                        if 360 * users[address(msg.sender)].field_1280 / 100 <= users[address(msg.sender)].field_1792:
                            revert with 0, 'Full payouts'
                        if not (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100):
                            if (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100) <= 0:
                                revert with 0, 'Zero payout'
                            if total_withdraw > !((360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100)):
                                revert with 0, 17
                            total_withdraw = total_withdraw + (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100)
                            users[address(msg.sender)].field_1536 = block.timestamp
                            emit Withdraw(((360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100)), msg.sender);
                            if 360 * users[address(msg.sender)].field_1280 / 100 <= users[address(msg.sender)].field_1792:
                                emit LimitReached(users[address(msg.sender)].field_1792, msg.sender);
                            if sub_639a0b26 > 100:
                                revert with 0, 1
                            if 100 < sub_639a0b26:
                                revert with 0, 17
                            if not -(360 * users[address(msg.sender)].field_1280 / 100) + users[address(msg.sender)].field_1792 + ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100):
                                call stor104.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 0
                            else:
                                if (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100) and -sub_639a0b26 + 100 > -1 / (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100):
                                    revert with 0, 17
                                if not (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100):
                                    revert with 0, 18
                                if (100 * 360 * users[address(msg.sender)].field_1280 / 100) - (sub_639a0b26 * 360 * users[address(msg.sender)].field_1280 / 100) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) - (100 * (5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100) + (sub_639a0b26 * (5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100) / (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100) != -sub_639a0b26 + 100:
                                    revert with 0, 1
                                call stor104.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (100 * 360 * users[address(msg.sender)].field_1280 / 100) - (sub_639a0b26 * 360 * users[address(msg.sender)].field_1280 / 100) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) - (100 * (5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100) + (sub_639a0b26 * (5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100) / 100
                        else:
                            if users[address(msg.sender)].field_1792 > !((360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100)):
                                revert with 0, 17
                            if (360 * users[address(msg.sender)].field_1280 / 100) - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100) <= 360 * users[address(msg.sender)].field_1280 / 100:
                                if users[address(msg.sender)].field_1792 > !((360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792):
                                    revert with 0, 17
                                users[address(msg.sender)].field_1792 = 360 * users[address(msg.sender)].field_1280 / 100
                                if (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100) <= 0:
                                    revert with 0, 'Zero payout'
                                if total_withdraw > !((360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100)):
                                    revert with 0, 17
                                total_withdraw = total_withdraw + (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100)
                                users[address(msg.sender)].field_1536 = block.timestamp
                                emit Withdraw(((360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100)), msg.sender);
                                if 360 * users[address(msg.sender)].field_1280 / 100 <= users[address(msg.sender)].field_1792:
                                    emit LimitReached(users[address(msg.sender)].field_1792, msg.sender);
                                if sub_639a0b26 > 100:
                                    revert with 0, 1
                                if 100 < sub_639a0b26:
                                    revert with 0, 17
                                if not -(360 * users[address(msg.sender)].field_1280 / 100) + users[address(msg.sender)].field_1792 + ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100):
                                    call stor104.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, 0
                                else:
                                    if (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100) and -sub_639a0b26 + 100 > -1 / (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100):
                                        revert with 0, 17
                                    if not (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100):
                                        revert with 0, 18
                                    if (100 * 360 * users[address(msg.sender)].field_1280 / 100) - (sub_639a0b26 * 360 * users[address(msg.sender)].field_1280 / 100) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) - (100 * (5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100) + (sub_639a0b26 * (5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100) / (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100) != -sub_639a0b26 + 100:
                                        revert with 0, 1
                                    call stor104.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (100 * 360 * users[address(msg.sender)].field_1280 / 100) - (sub_639a0b26 * 360 * users[address(msg.sender)].field_1280 / 100) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) - (100 * (5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100) + (sub_639a0b26 * (5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100) / 100
                            else:
                                if users[address(msg.sender)].field_1792 > 360 * users[address(msg.sender)].field_1280 / 100:
                                    if users[address(msg.sender)].field_1792 > !((360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792):
                                        revert with 0, 17
                                    users[address(msg.sender)].field_1792 = 360 * users[address(msg.sender)].field_1280 / 100
                                    revert with 0, 'Zero payout'
                                if 360 * users[address(msg.sender)].field_1280 / 100 < users[address(msg.sender)].field_1792:
                                    revert with 0, 17
                                if users[address(msg.sender)].field_1792 > !((360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792):
                                    revert with 0, 17
                                users[address(msg.sender)].field_1792 = 360 * users[address(msg.sender)].field_1280 / 100
                                if (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 <= 0:
                                    revert with 0, 'Zero payout'
                                if total_withdraw > !((360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792):
                                    revert with 0, 17
                                total_withdraw = total_withdraw + (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792
                                users[address(msg.sender)].field_1536 = block.timestamp
                                emit Withdraw(((360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792), msg.sender);
                                if 360 * users[address(msg.sender)].field_1280 / 100 <= users[address(msg.sender)].field_1792:
                                    emit LimitReached(users[address(msg.sender)].field_1792, msg.sender);
                                if sub_639a0b26 > 100:
                                    revert with 0, 1
                                if 100 < sub_639a0b26:
                                    revert with 0, 17
                                if not -(360 * users[address(msg.sender)].field_1280 / 100) + users[address(msg.sender)].field_1792:
                                    call stor104.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, 0
                                else:
                                    if (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 and -sub_639a0b26 + 100 > -1 / (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792:
                                        revert with 0, 17
                                    if not (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792:
                                        revert with 0, 18
                                    if (100 * 360 * users[address(msg.sender)].field_1280 / 100) - (sub_639a0b26 * 360 * users[address(msg.sender)].field_1280 / 100) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) / (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 != -sub_639a0b26 + 100:
                                        revert with 0, 1
                                    call stor104.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (100 * 360 * users[address(msg.sender)].field_1280 / 100) - (sub_639a0b26 * 360 * users[address(msg.sender)].field_1280 / 100) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) / 100
    else:
        if users[address(msg.sender)].field_1280 / sub_ea2caab3 < stor118:
            if users[address(msg.sender)].field_1280 / sub_ea2caab3 > 0x3333333333333333333333333333333333333333333333333333333333333333:
                revert with 0, 17
            if sub_72fcfe41 <= users[address(msg.sender)].field_1792:
                if sub_72fcfe41 <= users[address(msg.sender)].field_1792:
                    revert with 0, 'Full payouts'
                revert with 0, 'Zero payout'
            if stor111 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if not -users[address(msg.sender)].field_1280:
                if users[address(msg.sender)].field_1536 <= block.timestamp:
                    if block.timestamp < users[address(msg.sender)].field_1536:
                        revert with 0, 17
                    if False and block.timestamp - users[address(msg.sender)].field_1536 > 0:
                        revert with 0, 17
                if users[address(msg.sender)].field_1792 > -1:
                    revert with 0, 17
                if users[address(msg.sender)].field_1792 <= sub_72fcfe41:
                    if False and 5 * users[address(msg.sender)].field_1280 / sub_ea2caab3 > 0:
                        revert with 0, 17
                    if sub_72fcfe41 <= users[address(msg.sender)].field_1792:
                        revert with 0, 'Full payouts'
                    revert with 0, 'Zero payout'
                if users[address(msg.sender)].field_1792 > sub_72fcfe41:
                    if False and 5 * users[address(msg.sender)].field_1280 / sub_ea2caab3 > 0:
                        revert with 0, 17
                    if sub_72fcfe41 <= users[address(msg.sender)].field_1792:
                        revert with 0, 'Full payouts'
                    revert with 0, 'Zero payout'
                if sub_72fcfe41 < users[address(msg.sender)].field_1792:
                    revert with 0, 17
                if sub_72fcfe41 - users[address(msg.sender)].field_1792 and 5 * users[address(msg.sender)].field_1280 / sub_ea2caab3 > -1 / sub_72fcfe41 - users[address(msg.sender)].field_1792:
                    revert with 0, 17
                if (5 * sub_72fcfe41 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100 > sub_72fcfe41 - users[address(msg.sender)].field_1792:
                    if sub_72fcfe41 <= users[address(msg.sender)].field_1792:
                        revert with 0, 'Full payouts'
                    revert with 0, 'Zero payout'
                if sub_72fcfe41 - users[address(msg.sender)].field_1792 < (5 * sub_72fcfe41 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100:
                    revert with 0, 17
                if sub_72fcfe41 <= users[address(msg.sender)].field_1792:
                    revert with 0, 'Full payouts'
                if not sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100):
                    if sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) <= 0:
                        revert with 0, 'Zero payout'
                    if total_withdraw > !(sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100)):
                        revert with 0, 17
                    total_withdraw = total_withdraw + sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100)
                    users[address(msg.sender)].field_1536 = block.timestamp
                    emit Withdraw((sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100)), msg.sender);
                    if sub_72fcfe41 <= users[address(msg.sender)].field_1792:
                        emit LimitReached(users[address(msg.sender)].field_1792, msg.sender);
                    if sub_639a0b26 > 100:
                        revert with 0, 1
                    if 100 < sub_639a0b26:
                        revert with 0, 17
                    if not -sub_72fcfe41 + users[address(msg.sender)].field_1792 + ((5 * sub_72fcfe41 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100):
                        call stor104.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, 0
                    else:
                        if sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) and -sub_639a0b26 + 100 > -1 / sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100):
                            revert with 0, 17
                        if not sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100):
                            revert with 0, 18
                        if (100 * sub_72fcfe41) - (sub_639a0b26 * sub_72fcfe41) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) - (100 * (5 * sub_72fcfe41 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) + (sub_639a0b26 * (5 * sub_72fcfe41 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) / sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) != -sub_639a0b26 + 100:
                            revert with 0, 1
                        call stor104.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (100 * sub_72fcfe41) - (sub_639a0b26 * sub_72fcfe41) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) - (100 * (5 * sub_72fcfe41 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) + (sub_639a0b26 * (5 * sub_72fcfe41 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) / 100
                else:
                    if users[address(msg.sender)].field_1792 > !(sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100)):
                        revert with 0, 17
                    if sub_72fcfe41 - ((5 * sub_72fcfe41 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) <= sub_72fcfe41:
                        if users[address(msg.sender)].field_1792 > !(sub_72fcfe41 - users[address(msg.sender)].field_1792):
                            revert with 0, 17
                        users[address(msg.sender)].field_1792 = sub_72fcfe41
                        if sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) <= 0:
                            revert with 0, 'Zero payout'
                        if total_withdraw > !(sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100)):
                            revert with 0, 17
                        total_withdraw = total_withdraw + sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100)
                        users[address(msg.sender)].field_1536 = block.timestamp
                        emit Withdraw((sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100)), msg.sender);
                        if sub_72fcfe41 <= users[address(msg.sender)].field_1792:
                            emit LimitReached(users[address(msg.sender)].field_1792, msg.sender);
                        if sub_639a0b26 > 100:
                            revert with 0, 1
                        if 100 < sub_639a0b26:
                            revert with 0, 17
                        if not -sub_72fcfe41 + users[address(msg.sender)].field_1792 + ((5 * sub_72fcfe41 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100):
                            call stor104.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, 0
                        else:
                            if sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) and -sub_639a0b26 + 100 > -1 / sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100):
                                revert with 0, 17
                            if not sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100):
                                revert with 0, 18
                            if (100 * sub_72fcfe41) - (sub_639a0b26 * sub_72fcfe41) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) - (100 * (5 * sub_72fcfe41 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) + (sub_639a0b26 * (5 * sub_72fcfe41 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) / sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) != -sub_639a0b26 + 100:
                                revert with 0, 1
                            call stor104.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (100 * sub_72fcfe41) - (sub_639a0b26 * sub_72fcfe41) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) - (100 * (5 * sub_72fcfe41 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) + (sub_639a0b26 * (5 * sub_72fcfe41 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) / 100
                    else:
                        if users[address(msg.sender)].field_1792 > sub_72fcfe41:
                            if users[address(msg.sender)].field_1792 > !(sub_72fcfe41 - users[address(msg.sender)].field_1792):
                                revert with 0, 17
                            users[address(msg.sender)].field_1792 = sub_72fcfe41
                            revert with 0, 'Zero payout'
                        if sub_72fcfe41 < users[address(msg.sender)].field_1792:
                            revert with 0, 17
                        if users[address(msg.sender)].field_1792 > !(sub_72fcfe41 - users[address(msg.sender)].field_1792):
                            revert with 0, 17
                        users[address(msg.sender)].field_1792 = sub_72fcfe41
                        if sub_72fcfe41 - users[address(msg.sender)].field_1792 <= 0:
                            revert with 0, 'Zero payout'
                        if total_withdraw > !(sub_72fcfe41 - users[address(msg.sender)].field_1792):
                            revert with 0, 17
                        total_withdraw = total_withdraw + sub_72fcfe41 - users[address(msg.sender)].field_1792
                        users[address(msg.sender)].field_1536 = block.timestamp
                        emit Withdraw((sub_72fcfe41 - users[address(msg.sender)].field_1792), msg.sender);
                        if sub_72fcfe41 <= users[address(msg.sender)].field_1792:
                            emit LimitReached(users[address(msg.sender)].field_1792, msg.sender);
                        if sub_639a0b26 > 100:
                            revert with 0, 1
                        if 100 < sub_639a0b26:
                            revert with 0, 17
                        if not -sub_72fcfe41 + users[address(msg.sender)].field_1792:
                            call stor104.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, 0
                        else:
                            if sub_72fcfe41 - users[address(msg.sender)].field_1792 and -sub_639a0b26 + 100 > -1 / sub_72fcfe41 - users[address(msg.sender)].field_1792:
                                revert with 0, 17
                            if not sub_72fcfe41 - users[address(msg.sender)].field_1792:
                                revert with 0, 18
                            if (100 * sub_72fcfe41) - (sub_639a0b26 * sub_72fcfe41) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) / sub_72fcfe41 - users[address(msg.sender)].field_1792 != -sub_639a0b26 + 100:
                                revert with 0, 1
                            call stor104.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (100 * sub_72fcfe41) - (sub_639a0b26 * sub_72fcfe41) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) / 100
            else:
                if users[address(msg.sender)].field_1280 and 10^18 * stor111 > -1 / users[address(msg.sender)].field_1280:
                    revert with 0, 17
                if not users[address(msg.sender)].field_1280:
                    revert with 0, 18
                if 10^18 * users[address(msg.sender)].field_1280 * stor111 / users[address(msg.sender)].field_1280 != 10^18 * stor111:
                    revert with 0, 1
                if users[address(msg.sender)].field_1536 > block.timestamp:
                    if 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 and 0 > -1 / 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600:
                        revert with 0, 17
                    if users[address(msg.sender)].field_1792 > -1:
                        revert with 0, 17
                    if users[address(msg.sender)].field_1792 <= sub_72fcfe41:
                        if False and 5 * users[address(msg.sender)].field_1280 / sub_ea2caab3 > 0:
                            revert with 0, 17
                        if sub_72fcfe41 <= users[address(msg.sender)].field_1792:
                            revert with 0, 'Full payouts'
                        revert with 0, 'Zero payout'
                    if users[address(msg.sender)].field_1792 > sub_72fcfe41:
                        if False and 5 * users[address(msg.sender)].field_1280 / sub_ea2caab3 > 0:
                            revert with 0, 17
                        if sub_72fcfe41 <= users[address(msg.sender)].field_1792:
                            revert with 0, 'Full payouts'
                        revert with 0, 'Zero payout'
                    if sub_72fcfe41 < users[address(msg.sender)].field_1792:
                        revert with 0, 17
                    if sub_72fcfe41 - users[address(msg.sender)].field_1792 and 5 * users[address(msg.sender)].field_1280 / sub_ea2caab3 > -1 / sub_72fcfe41 - users[address(msg.sender)].field_1792:
                        revert with 0, 17
                    if (5 * sub_72fcfe41 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100 > sub_72fcfe41 - users[address(msg.sender)].field_1792:
                        if sub_72fcfe41 <= users[address(msg.sender)].field_1792:
                            revert with 0, 'Full payouts'
                        revert with 0, 'Zero payout'
                    if sub_72fcfe41 - users[address(msg.sender)].field_1792 < (5 * sub_72fcfe41 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100:
                        revert with 0, 17
                    if sub_72fcfe41 <= users[address(msg.sender)].field_1792:
                        revert with 0, 'Full payouts'
                    if not sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100):
                        if sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) <= 0:
                            revert with 0, 'Zero payout'
                        if total_withdraw > !(sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100)):
                            revert with 0, 17
                        total_withdraw = total_withdraw + sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100)
                        users[address(msg.sender)].field_1536 = block.timestamp
                        emit Withdraw((sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100)), msg.sender);
                        if sub_72fcfe41 <= users[address(msg.sender)].field_1792:
                            emit LimitReached(users[address(msg.sender)].field_1792, msg.sender);
                        if sub_639a0b26 > 100:
                            revert with 0, 1
                        if 100 < sub_639a0b26:
                            revert with 0, 17
                        if not -sub_72fcfe41 + users[address(msg.sender)].field_1792 + ((5 * sub_72fcfe41 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100):
                            call stor104.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, 0
                        else:
                            if sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) and -sub_639a0b26 + 100 > -1 / sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100):
                                revert with 0, 17
                            if not sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100):
                                revert with 0, 18
                            if (100 * sub_72fcfe41) - (sub_639a0b26 * sub_72fcfe41) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) - (100 * (5 * sub_72fcfe41 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) + (sub_639a0b26 * (5 * sub_72fcfe41 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) / sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) != -sub_639a0b26 + 100:
                                revert with 0, 1
                            call stor104.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (100 * sub_72fcfe41) - (sub_639a0b26 * sub_72fcfe41) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) - (100 * (5 * sub_72fcfe41 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) + (sub_639a0b26 * (5 * sub_72fcfe41 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) / 100
                    else:
                        if users[address(msg.sender)].field_1792 > !(sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100)):
                            revert with 0, 17
                        if sub_72fcfe41 - ((5 * sub_72fcfe41 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) <= sub_72fcfe41:
                            if users[address(msg.sender)].field_1792 > !(sub_72fcfe41 - users[address(msg.sender)].field_1792):
                                revert with 0, 17
                            users[address(msg.sender)].field_1792 = sub_72fcfe41
                            if sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) <= 0:
                                revert with 0, 'Zero payout'
                            if total_withdraw > !(sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100)):
                                revert with 0, 17
                            total_withdraw = total_withdraw + sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100)
                            users[address(msg.sender)].field_1536 = block.timestamp
                            emit Withdraw((sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100)), msg.sender);
                            if sub_72fcfe41 <= users[address(msg.sender)].field_1792:
                                emit LimitReached(users[address(msg.sender)].field_1792, msg.sender);
                            if sub_639a0b26 > 100:
                                revert with 0, 1
                            if 100 < sub_639a0b26:
                                revert with 0, 17
                            if not -sub_72fcfe41 + users[address(msg.sender)].field_1792 + ((5 * sub_72fcfe41 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100):
                                call stor104.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 0
                            else:
                                if sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) and -sub_639a0b26 + 100 > -1 / sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100):
                                    revert with 0, 17
                                if not sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100):
                                    revert with 0, 18
                                if (100 * sub_72fcfe41) - (sub_639a0b26 * sub_72fcfe41) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) - (100 * (5 * sub_72fcfe41 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) + (sub_639a0b26 * (5 * sub_72fcfe41 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) / sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) != -sub_639a0b26 + 100:
                                    revert with 0, 1
                                call stor104.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (100 * sub_72fcfe41) - (sub_639a0b26 * sub_72fcfe41) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) - (100 * (5 * sub_72fcfe41 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) + (sub_639a0b26 * (5 * sub_72fcfe41 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) / 100
                        else:
                            if users[address(msg.sender)].field_1792 > sub_72fcfe41:
                                if users[address(msg.sender)].field_1792 > !(sub_72fcfe41 - users[address(msg.sender)].field_1792):
                                    revert with 0, 17
                                users[address(msg.sender)].field_1792 = sub_72fcfe41
                                revert with 0, 'Zero payout'
                            if sub_72fcfe41 < users[address(msg.sender)].field_1792:
                                revert with 0, 17
                            if users[address(msg.sender)].field_1792 > !(sub_72fcfe41 - users[address(msg.sender)].field_1792):
                                revert with 0, 17
                            users[address(msg.sender)].field_1792 = sub_72fcfe41
                            if sub_72fcfe41 - users[address(msg.sender)].field_1792 <= 0:
                                revert with 0, 'Zero payout'
                            if total_withdraw > !(sub_72fcfe41 - users[address(msg.sender)].field_1792):
                                revert with 0, 17
                            total_withdraw = total_withdraw + sub_72fcfe41 - users[address(msg.sender)].field_1792
                            users[address(msg.sender)].field_1536 = block.timestamp
                            emit Withdraw((sub_72fcfe41 - users[address(msg.sender)].field_1792), msg.sender);
                            if sub_72fcfe41 <= users[address(msg.sender)].field_1792:
                                emit LimitReached(users[address(msg.sender)].field_1792, msg.sender);
                            if sub_639a0b26 > 100:
                                revert with 0, 1
                            if 100 < sub_639a0b26:
                                revert with 0, 17
                            if not -sub_72fcfe41 + users[address(msg.sender)].field_1792:
                                call stor104.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 0
                            else:
                                if sub_72fcfe41 - users[address(msg.sender)].field_1792 and -sub_639a0b26 + 100 > -1 / sub_72fcfe41 - users[address(msg.sender)].field_1792:
                                    revert with 0, 17
                                if not sub_72fcfe41 - users[address(msg.sender)].field_1792:
                                    revert with 0, 18
                                if (100 * sub_72fcfe41) - (sub_639a0b26 * sub_72fcfe41) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) / sub_72fcfe41 - users[address(msg.sender)].field_1792 != -sub_639a0b26 + 100:
                                    revert with 0, 1
                                call stor104.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (100 * sub_72fcfe41) - (sub_639a0b26 * sub_72fcfe41) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) / 100
                else:
                    if block.timestamp < users[address(msg.sender)].field_1536:
                        revert with 0, 17
                    if 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 and block.timestamp - users[address(msg.sender)].field_1536 > -1 / 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600:
                        revert with 0, 17
                    if users[address(msg.sender)].field_1792 > !((block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600)):
                        revert with 0, 17
                    if users[address(msg.sender)].field_1792 + (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) <= sub_72fcfe41:
                        if (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) and 5 * users[address(msg.sender)].field_1280 / sub_ea2caab3 > -1 / (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600):
                            revert with 0, 17
                        if (5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100 > (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600):
                            if sub_72fcfe41 <= users[address(msg.sender)].field_1792:
                                revert with 0, 'Full payouts'
                            revert with 0, 'Zero payout'
                        if (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) < (5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100:
                            revert with 0, 17
                        if sub_72fcfe41 <= users[address(msg.sender)].field_1792:
                            revert with 0, 'Full payouts'
                        if not (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100):
                            if (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) <= 0:
                                revert with 0, 'Zero payout'
                            if total_withdraw > !((block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100)):
                                revert with 0, 17
                            total_withdraw = total_withdraw + (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100)
                            users[address(msg.sender)].field_1536 = block.timestamp
                            emit Withdraw(((block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100)), msg.sender);
                            if sub_72fcfe41 <= users[address(msg.sender)].field_1792:
                                emit LimitReached(users[address(msg.sender)].field_1792, msg.sender);
                            if sub_639a0b26 > 100:
                                revert with 0, 1
                            if 100 < sub_639a0b26:
                                revert with 0, 17
                            if not (-1 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) + (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) + ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100):
                                call stor104.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 0
                            else:
                                if (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) and -sub_639a0b26 + 100 > -1 / (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100):
                                    revert with 0, 17
                                if not (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100):
                                    revert with 0, 18
                                if (100 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (sub_639a0b26 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (100 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) + (sub_639a0b26 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (100 * (5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) + (sub_639a0b26 * (5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) / (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) != -sub_639a0b26 + 100:
                                    revert with 0, 1
                                call stor104.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (100 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (sub_639a0b26 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (100 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) + (sub_639a0b26 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (100 * (5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) + (sub_639a0b26 * (5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) / 100
                        else:
                            if users[address(msg.sender)].field_1792 > !((block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100)):
                                revert with 0, 17
                            if users[address(msg.sender)].field_1792 + (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) <= sub_72fcfe41:
                                if users[address(msg.sender)].field_1792 > !((block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600)):
                                    revert with 0, 17
                                users[address(msg.sender)].field_1792 = users[address(msg.sender)].field_1792 + (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600)
                                if (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) <= 0:
                                    revert with 0, 'Zero payout'
                                if total_withdraw > !((block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100)):
                                    revert with 0, 17
                                total_withdraw = total_withdraw + (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100)
                                users[address(msg.sender)].field_1536 = block.timestamp
                                emit Withdraw(((block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100)), msg.sender);
                                if sub_72fcfe41 <= users[address(msg.sender)].field_1792:
                                    emit LimitReached(users[address(msg.sender)].field_1792, msg.sender);
                                if sub_639a0b26 > 100:
                                    revert with 0, 1
                                if 100 < sub_639a0b26:
                                    revert with 0, 17
                                if not (-1 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) + (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) + ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100):
                                    call stor104.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, 0
                                else:
                                    if (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) and -sub_639a0b26 + 100 > -1 / (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100):
                                        revert with 0, 17
                                    if not (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100):
                                        revert with 0, 18
                                    if (100 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (sub_639a0b26 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (100 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) + (sub_639a0b26 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (100 * (5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) + (sub_639a0b26 * (5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) / (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) != -sub_639a0b26 + 100:
                                        revert with 0, 1
                                    call stor104.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (100 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (sub_639a0b26 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (100 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) + (sub_639a0b26 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (100 * (5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) + (sub_639a0b26 * (5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) / 100
                            else:
                                if users[address(msg.sender)].field_1792 > sub_72fcfe41:
                                    if users[address(msg.sender)].field_1792 > !((block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600)):
                                        revert with 0, 17
                                    users[address(msg.sender)].field_1792 = users[address(msg.sender)].field_1792 + (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600)
                                    revert with 0, 'Zero payout'
                                if sub_72fcfe41 < users[address(msg.sender)].field_1792:
                                    revert with 0, 17
                                if users[address(msg.sender)].field_1792 > !((block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600)):
                                    revert with 0, 17
                                users[address(msg.sender)].field_1792 = users[address(msg.sender)].field_1792 + (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600)
                                if sub_72fcfe41 - users[address(msg.sender)].field_1792 <= 0:
                                    revert with 0, 'Zero payout'
                                if total_withdraw > !(sub_72fcfe41 - users[address(msg.sender)].field_1792):
                                    revert with 0, 17
                                total_withdraw = total_withdraw + sub_72fcfe41 - users[address(msg.sender)].field_1792
                                users[address(msg.sender)].field_1536 = block.timestamp
                                emit Withdraw((sub_72fcfe41 - users[address(msg.sender)].field_1792), msg.sender);
                                if sub_72fcfe41 <= users[address(msg.sender)].field_1792:
                                    emit LimitReached(users[address(msg.sender)].field_1792, msg.sender);
                                if sub_639a0b26 > 100:
                                    revert with 0, 1
                                if 100 < sub_639a0b26:
                                    revert with 0, 17
                                if not -sub_72fcfe41 + users[address(msg.sender)].field_1792:
                                    call stor104.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, 0
                                else:
                                    if sub_72fcfe41 - users[address(msg.sender)].field_1792 and -sub_639a0b26 + 100 > -1 / sub_72fcfe41 - users[address(msg.sender)].field_1792:
                                        revert with 0, 17
                                    if not sub_72fcfe41 - users[address(msg.sender)].field_1792:
                                        revert with 0, 18
                                    if (100 * sub_72fcfe41) - (sub_639a0b26 * sub_72fcfe41) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) / sub_72fcfe41 - users[address(msg.sender)].field_1792 != -sub_639a0b26 + 100:
                                        revert with 0, 1
                                    call stor104.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (100 * sub_72fcfe41) - (sub_639a0b26 * sub_72fcfe41) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) / 100
                    else:
                        if users[address(msg.sender)].field_1792 > sub_72fcfe41:
                            if False and 5 * users[address(msg.sender)].field_1280 / sub_ea2caab3 > 0:
                                revert with 0, 17
                            if sub_72fcfe41 <= users[address(msg.sender)].field_1792:
                                revert with 0, 'Full payouts'
                            revert with 0, 'Zero payout'
                        if sub_72fcfe41 < users[address(msg.sender)].field_1792:
                            revert with 0, 17
                        if sub_72fcfe41 - users[address(msg.sender)].field_1792 and 5 * users[address(msg.sender)].field_1280 / sub_ea2caab3 > -1 / sub_72fcfe41 - users[address(msg.sender)].field_1792:
                            revert with 0, 17
                        if (5 * sub_72fcfe41 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100 > sub_72fcfe41 - users[address(msg.sender)].field_1792:
                            if sub_72fcfe41 <= users[address(msg.sender)].field_1792:
                                revert with 0, 'Full payouts'
                            revert with 0, 'Zero payout'
                        if sub_72fcfe41 - users[address(msg.sender)].field_1792 < (5 * sub_72fcfe41 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100:
                            revert with 0, 17
                        if sub_72fcfe41 <= users[address(msg.sender)].field_1792:
                            revert with 0, 'Full payouts'
                        if not sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100):
                            if sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) <= 0:
                                revert with 0, 'Zero payout'
                            if total_withdraw > !(sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100)):
                                revert with 0, 17
                            total_withdraw = total_withdraw + sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100)
                            users[address(msg.sender)].field_1536 = block.timestamp
                            emit Withdraw((sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100)), msg.sender);
                            if sub_72fcfe41 <= users[address(msg.sender)].field_1792:
                                emit LimitReached(users[address(msg.sender)].field_1792, msg.sender);
                            if sub_639a0b26 > 100:
                                revert with 0, 1
                            if 100 < sub_639a0b26:
                                revert with 0, 17
                            if not -sub_72fcfe41 + users[address(msg.sender)].field_1792 + ((5 * sub_72fcfe41 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100):
                                call stor104.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 0
                            else:
                                if sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) and -sub_639a0b26 + 100 > -1 / sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100):
                                    revert with 0, 17
                                if not sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100):
                                    revert with 0, 18
                                if (100 * sub_72fcfe41) - (sub_639a0b26 * sub_72fcfe41) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) - (100 * (5 * sub_72fcfe41 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) + (sub_639a0b26 * (5 * sub_72fcfe41 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) / sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) != -sub_639a0b26 + 100:
                                    revert with 0, 1
                                call stor104.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (100 * sub_72fcfe41) - (sub_639a0b26 * sub_72fcfe41) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) - (100 * (5 * sub_72fcfe41 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) + (sub_639a0b26 * (5 * sub_72fcfe41 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) / 100
                        else:
                            if users[address(msg.sender)].field_1792 > !(sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100)):
                                revert with 0, 17
                            if sub_72fcfe41 - ((5 * sub_72fcfe41 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) <= sub_72fcfe41:
                                if users[address(msg.sender)].field_1792 > !(sub_72fcfe41 - users[address(msg.sender)].field_1792):
                                    revert with 0, 17
                                users[address(msg.sender)].field_1792 = sub_72fcfe41
                                if sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) <= 0:
                                    revert with 0, 'Zero payout'
                                if total_withdraw > !(sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100)):
                                    revert with 0, 17
                                total_withdraw = total_withdraw + sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100)
                                users[address(msg.sender)].field_1536 = block.timestamp
                                emit Withdraw((sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100)), msg.sender);
                                if sub_72fcfe41 <= users[address(msg.sender)].field_1792:
                                    emit LimitReached(users[address(msg.sender)].field_1792, msg.sender);
                                if sub_639a0b26 > 100:
                                    revert with 0, 1
                                if 100 < sub_639a0b26:
                                    revert with 0, 17
                                if not -sub_72fcfe41 + users[address(msg.sender)].field_1792 + ((5 * sub_72fcfe41 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100):
                                    call stor104.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, 0
                                else:
                                    if sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) and -sub_639a0b26 + 100 > -1 / sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100):
                                        revert with 0, 17
                                    if not sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100):
                                        revert with 0, 18
                                    if (100 * sub_72fcfe41) - (sub_639a0b26 * sub_72fcfe41) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) - (100 * (5 * sub_72fcfe41 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) + (sub_639a0b26 * (5 * sub_72fcfe41 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) / sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) != -sub_639a0b26 + 100:
                                        revert with 0, 1
                                    call stor104.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (100 * sub_72fcfe41) - (sub_639a0b26 * sub_72fcfe41) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) - (100 * (5 * sub_72fcfe41 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) + (sub_639a0b26 * (5 * sub_72fcfe41 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) / 100
                            else:
                                if users[address(msg.sender)].field_1792 > sub_72fcfe41:
                                    if users[address(msg.sender)].field_1792 > !(sub_72fcfe41 - users[address(msg.sender)].field_1792):
                                        revert with 0, 17
                                    users[address(msg.sender)].field_1792 = sub_72fcfe41
                                    revert with 0, 'Zero payout'
                                if sub_72fcfe41 < users[address(msg.sender)].field_1792:
                                    revert with 0, 17
                                if users[address(msg.sender)].field_1792 > !(sub_72fcfe41 - users[address(msg.sender)].field_1792):
                                    revert with 0, 17
                                users[address(msg.sender)].field_1792 = sub_72fcfe41
                                if sub_72fcfe41 - users[address(msg.sender)].field_1792 <= 0:
                                    revert with 0, 'Zero payout'
                                if total_withdraw > !(sub_72fcfe41 - users[address(msg.sender)].field_1792):
                                    revert with 0, 17
                                total_withdraw = total_withdraw + sub_72fcfe41 - users[address(msg.sender)].field_1792
                                users[address(msg.sender)].field_1536 = block.timestamp
                                emit Withdraw((sub_72fcfe41 - users[address(msg.sender)].field_1792), msg.sender);
                                if sub_72fcfe41 <= users[address(msg.sender)].field_1792:
                                    emit LimitReached(users[address(msg.sender)].field_1792, msg.sender);
                                if sub_639a0b26 > 100:
                                    revert with 0, 1
                                if 100 < sub_639a0b26:
                                    revert with 0, 17
                                if not -sub_72fcfe41 + users[address(msg.sender)].field_1792:
                                    call stor104.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, 0
                                else:
                                    if sub_72fcfe41 - users[address(msg.sender)].field_1792 and -sub_639a0b26 + 100 > -1 / sub_72fcfe41 - users[address(msg.sender)].field_1792:
                                        revert with 0, 17
                                    if not sub_72fcfe41 - users[address(msg.sender)].field_1792:
                                        revert with 0, 18
                                    if (100 * sub_72fcfe41) - (sub_639a0b26 * sub_72fcfe41) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) / sub_72fcfe41 - users[address(msg.sender)].field_1792 != -sub_639a0b26 + 100:
                                        revert with 0, 1
                                    call stor104.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (100 * sub_72fcfe41) - (sub_639a0b26 * sub_72fcfe41) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) / 100
        else:
            if stor118 > 0x3333333333333333333333333333333333333333333333333333333333333333:
                revert with 0, 17
            if sub_72fcfe41 <= users[address(msg.sender)].field_1792:
                if sub_72fcfe41 <= users[address(msg.sender)].field_1792:
                    revert with 0, 'Full payouts'
                revert with 0, 'Zero payout'
            if stor111 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if not -users[address(msg.sender)].field_1280:
                if users[address(msg.sender)].field_1536 <= block.timestamp:
                    if block.timestamp < users[address(msg.sender)].field_1536:
                        revert with 0, 17
                    if False and block.timestamp - users[address(msg.sender)].field_1536 > 0:
                        revert with 0, 17
                if users[address(msg.sender)].field_1792 > -1:
                    revert with 0, 17
                if users[address(msg.sender)].field_1792 <= sub_72fcfe41:
                    if False and 5 * stor118 > 0:
                        revert with 0, 17
                    if sub_72fcfe41 <= users[address(msg.sender)].field_1792:
                        revert with 0, 'Full payouts'
                    revert with 0, 'Zero payout'
                if users[address(msg.sender)].field_1792 > sub_72fcfe41:
                    if False and 5 * stor118 > 0:
                        revert with 0, 17
                    if sub_72fcfe41 <= users[address(msg.sender)].field_1792:
                        revert with 0, 'Full payouts'
                    revert with 0, 'Zero payout'
                if sub_72fcfe41 < users[address(msg.sender)].field_1792:
                    revert with 0, 17
                if sub_72fcfe41 - users[address(msg.sender)].field_1792 and 5 * stor118 > -1 / sub_72fcfe41 - users[address(msg.sender)].field_1792:
                    revert with 0, 17
                if (5 * sub_72fcfe41 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100 > sub_72fcfe41 - users[address(msg.sender)].field_1792:
                    if sub_72fcfe41 <= users[address(msg.sender)].field_1792:
                        revert with 0, 'Full payouts'
                    revert with 0, 'Zero payout'
                if sub_72fcfe41 - users[address(msg.sender)].field_1792 < (5 * sub_72fcfe41 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100:
                    revert with 0, 17
                if sub_72fcfe41 <= users[address(msg.sender)].field_1792:
                    revert with 0, 'Full payouts'
                if not sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100):
                    if sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100) <= 0:
                        revert with 0, 'Zero payout'
                    if total_withdraw > !(sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100)):
                        revert with 0, 17
                    total_withdraw = total_withdraw + sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100)
                    users[address(msg.sender)].field_1536 = block.timestamp
                    emit Withdraw((sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100)), msg.sender);
                    if sub_72fcfe41 <= users[address(msg.sender)].field_1792:
                        emit LimitReached(users[address(msg.sender)].field_1792, msg.sender);
                    if sub_639a0b26 > 100:
                        revert with 0, 1
                    if 100 < sub_639a0b26:
                        revert with 0, 17
                    if not -sub_72fcfe41 + users[address(msg.sender)].field_1792 + ((5 * sub_72fcfe41 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100):
                        call stor104.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, 0
                    else:
                        if sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100) and -sub_639a0b26 + 100 > -1 / sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100):
                            revert with 0, 17
                        if not sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100):
                            revert with 0, 18
                        if (100 * sub_72fcfe41) - (sub_639a0b26 * sub_72fcfe41) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) - (100 * (5 * sub_72fcfe41 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100) + (sub_639a0b26 * (5 * sub_72fcfe41 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100) / sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100) != -sub_639a0b26 + 100:
                            revert with 0, 1
                        call stor104.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (100 * sub_72fcfe41) - (sub_639a0b26 * sub_72fcfe41) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) - (100 * (5 * sub_72fcfe41 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100) + (sub_639a0b26 * (5 * sub_72fcfe41 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100) / 100
                else:
                    if users[address(msg.sender)].field_1792 > !(sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100)):
                        revert with 0, 17
                    if sub_72fcfe41 - ((5 * sub_72fcfe41 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100) <= sub_72fcfe41:
                        if users[address(msg.sender)].field_1792 > !(sub_72fcfe41 - users[address(msg.sender)].field_1792):
                            revert with 0, 17
                        users[address(msg.sender)].field_1792 = sub_72fcfe41
                        if sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100) <= 0:
                            revert with 0, 'Zero payout'
                        if total_withdraw > !(sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100)):
                            revert with 0, 17
                        total_withdraw = total_withdraw + sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100)
                        users[address(msg.sender)].field_1536 = block.timestamp
                        emit Withdraw((sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100)), msg.sender);
                        if sub_72fcfe41 <= users[address(msg.sender)].field_1792:
                            emit LimitReached(users[address(msg.sender)].field_1792, msg.sender);
                        if sub_639a0b26 > 100:
                            revert with 0, 1
                        if 100 < sub_639a0b26:
                            revert with 0, 17
                        if not -sub_72fcfe41 + users[address(msg.sender)].field_1792 + ((5 * sub_72fcfe41 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100):
                            call stor104.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, 0
                        else:
                            if sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100) and -sub_639a0b26 + 100 > -1 / sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100):
                                revert with 0, 17
                            if not sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100):
                                revert with 0, 18
                            if (100 * sub_72fcfe41) - (sub_639a0b26 * sub_72fcfe41) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) - (100 * (5 * sub_72fcfe41 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100) + (sub_639a0b26 * (5 * sub_72fcfe41 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100) / sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100) != -sub_639a0b26 + 100:
                                revert with 0, 1
                            call stor104.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (100 * sub_72fcfe41) - (sub_639a0b26 * sub_72fcfe41) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) - (100 * (5 * sub_72fcfe41 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100) + (sub_639a0b26 * (5 * sub_72fcfe41 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100) / 100
                    else:
                        if users[address(msg.sender)].field_1792 > sub_72fcfe41:
                            if users[address(msg.sender)].field_1792 > !(sub_72fcfe41 - users[address(msg.sender)].field_1792):
                                revert with 0, 17
                            users[address(msg.sender)].field_1792 = sub_72fcfe41
                            revert with 0, 'Zero payout'
                        if sub_72fcfe41 < users[address(msg.sender)].field_1792:
                            revert with 0, 17
                        if users[address(msg.sender)].field_1792 > !(sub_72fcfe41 - users[address(msg.sender)].field_1792):
                            revert with 0, 17
                        users[address(msg.sender)].field_1792 = sub_72fcfe41
                        if sub_72fcfe41 - users[address(msg.sender)].field_1792 <= 0:
                            revert with 0, 'Zero payout'
                        if total_withdraw > !(sub_72fcfe41 - users[address(msg.sender)].field_1792):
                            revert with 0, 17
                        total_withdraw = total_withdraw + sub_72fcfe41 - users[address(msg.sender)].field_1792
                        users[address(msg.sender)].field_1536 = block.timestamp
                        emit Withdraw((sub_72fcfe41 - users[address(msg.sender)].field_1792), msg.sender);
                        if sub_72fcfe41 <= users[address(msg.sender)].field_1792:
                            emit LimitReached(users[address(msg.sender)].field_1792, msg.sender);
                        if sub_639a0b26 > 100:
                            revert with 0, 1
                        if 100 < sub_639a0b26:
                            revert with 0, 17
                        if not -sub_72fcfe41 + users[address(msg.sender)].field_1792:
                            call stor104.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, 0
                        else:
                            if sub_72fcfe41 - users[address(msg.sender)].field_1792 and -sub_639a0b26 + 100 > -1 / sub_72fcfe41 - users[address(msg.sender)].field_1792:
                                revert with 0, 17
                            if not sub_72fcfe41 - users[address(msg.sender)].field_1792:
                                revert with 0, 18
                            if (100 * sub_72fcfe41) - (sub_639a0b26 * sub_72fcfe41) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) / sub_72fcfe41 - users[address(msg.sender)].field_1792 != -sub_639a0b26 + 100:
                                revert with 0, 1
                            call stor104.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (100 * sub_72fcfe41) - (sub_639a0b26 * sub_72fcfe41) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) / 100
            else:
                if users[address(msg.sender)].field_1280 and 10^18 * stor111 > -1 / users[address(msg.sender)].field_1280:
                    revert with 0, 17
                if not users[address(msg.sender)].field_1280:
                    revert with 0, 18
                if 10^18 * users[address(msg.sender)].field_1280 * stor111 / users[address(msg.sender)].field_1280 != 10^18 * stor111:
                    revert with 0, 1
                if users[address(msg.sender)].field_1536 > block.timestamp:
                    if 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 and 0 > -1 / 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600:
                        revert with 0, 17
                    if users[address(msg.sender)].field_1792 > -1:
                        revert with 0, 17
                    if users[address(msg.sender)].field_1792 <= sub_72fcfe41:
                        if False and 5 * stor118 > 0:
                            revert with 0, 17
                        if sub_72fcfe41 <= users[address(msg.sender)].field_1792:
                            revert with 0, 'Full payouts'
                        revert with 0, 'Zero payout'
                    if users[address(msg.sender)].field_1792 > sub_72fcfe41:
                        if False and 5 * stor118 > 0:
                            revert with 0, 17
                        if sub_72fcfe41 <= users[address(msg.sender)].field_1792:
                            revert with 0, 'Full payouts'
                        revert with 0, 'Zero payout'
                    if sub_72fcfe41 < users[address(msg.sender)].field_1792:
                        revert with 0, 17
                    if sub_72fcfe41 - users[address(msg.sender)].field_1792 and 5 * stor118 > -1 / sub_72fcfe41 - users[address(msg.sender)].field_1792:
                        revert with 0, 17
                    if (5 * sub_72fcfe41 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100 > sub_72fcfe41 - users[address(msg.sender)].field_1792:
                        if sub_72fcfe41 <= users[address(msg.sender)].field_1792:
                            revert with 0, 'Full payouts'
                        revert with 0, 'Zero payout'
                    if sub_72fcfe41 - users[address(msg.sender)].field_1792 < (5 * sub_72fcfe41 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100:
                        revert with 0, 17
                    if sub_72fcfe41 <= users[address(msg.sender)].field_1792:
                        revert with 0, 'Full payouts'
                    if not sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100):
                        if sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100) <= 0:
                            revert with 0, 'Zero payout'
                        if total_withdraw > !(sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100)):
                            revert with 0, 17
                        total_withdraw = total_withdraw + sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100)
                        users[address(msg.sender)].field_1536 = block.timestamp
                        emit Withdraw((sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100)), msg.sender);
                        if sub_72fcfe41 <= users[address(msg.sender)].field_1792:
                            emit LimitReached(users[address(msg.sender)].field_1792, msg.sender);
                        if sub_639a0b26 > 100:
                            revert with 0, 1
                        if 100 < sub_639a0b26:
                            revert with 0, 17
                        if not -sub_72fcfe41 + users[address(msg.sender)].field_1792 + ((5 * sub_72fcfe41 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100):
                            call stor104.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, 0
                        else:
                            if sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100) and -sub_639a0b26 + 100 > -1 / sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100):
                                revert with 0, 17
                            if not sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100):
                                revert with 0, 18
                            if (100 * sub_72fcfe41) - (sub_639a0b26 * sub_72fcfe41) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) - (100 * (5 * sub_72fcfe41 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100) + (sub_639a0b26 * (5 * sub_72fcfe41 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100) / sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100) != -sub_639a0b26 + 100:
                                revert with 0, 1
                            call stor104.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (100 * sub_72fcfe41) - (sub_639a0b26 * sub_72fcfe41) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) - (100 * (5 * sub_72fcfe41 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100) + (sub_639a0b26 * (5 * sub_72fcfe41 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100) / 100
                    else:
                        if users[address(msg.sender)].field_1792 > !(sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100)):
                            revert with 0, 17
                        if sub_72fcfe41 - ((5 * sub_72fcfe41 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100) <= sub_72fcfe41:
                            if users[address(msg.sender)].field_1792 > !(sub_72fcfe41 - users[address(msg.sender)].field_1792):
                                revert with 0, 17
                            users[address(msg.sender)].field_1792 = sub_72fcfe41
                            if sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100) <= 0:
                                revert with 0, 'Zero payout'
                            if total_withdraw > !(sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100)):
                                revert with 0, 17
                            total_withdraw = total_withdraw + sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100)
                            users[address(msg.sender)].field_1536 = block.timestamp
                            emit Withdraw((sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100)), msg.sender);
                            if sub_72fcfe41 <= users[address(msg.sender)].field_1792:
                                emit LimitReached(users[address(msg.sender)].field_1792, msg.sender);
                            if sub_639a0b26 > 100:
                                revert with 0, 1
                            if 100 < sub_639a0b26:
                                revert with 0, 17
                            if not -sub_72fcfe41 + users[address(msg.sender)].field_1792 + ((5 * sub_72fcfe41 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100):
                                call stor104.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 0
                            else:
                                if sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100) and -sub_639a0b26 + 100 > -1 / sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100):
                                    revert with 0, 17
                                if not sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100):
                                    revert with 0, 18
                                if (100 * sub_72fcfe41) - (sub_639a0b26 * sub_72fcfe41) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) - (100 * (5 * sub_72fcfe41 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100) + (sub_639a0b26 * (5 * sub_72fcfe41 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100) / sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100) != -sub_639a0b26 + 100:
                                    revert with 0, 1
                                call stor104.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (100 * sub_72fcfe41) - (sub_639a0b26 * sub_72fcfe41) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) - (100 * (5 * sub_72fcfe41 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100) + (sub_639a0b26 * (5 * sub_72fcfe41 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100) / 100
                        else:
                            if users[address(msg.sender)].field_1792 > sub_72fcfe41:
                                if users[address(msg.sender)].field_1792 > !(sub_72fcfe41 - users[address(msg.sender)].field_1792):
                                    revert with 0, 17
                                users[address(msg.sender)].field_1792 = sub_72fcfe41
                                revert with 0, 'Zero payout'
                            if sub_72fcfe41 < users[address(msg.sender)].field_1792:
                                revert with 0, 17
                            if users[address(msg.sender)].field_1792 > !(sub_72fcfe41 - users[address(msg.sender)].field_1792):
                                revert with 0, 17
                            users[address(msg.sender)].field_1792 = sub_72fcfe41
                            if sub_72fcfe41 - users[address(msg.sender)].field_1792 <= 0:
                                revert with 0, 'Zero payout'
                            if total_withdraw > !(sub_72fcfe41 - users[address(msg.sender)].field_1792):
                                revert with 0, 17
                            total_withdraw = total_withdraw + sub_72fcfe41 - users[address(msg.sender)].field_1792
                            users[address(msg.sender)].field_1536 = block.timestamp
                            emit Withdraw((sub_72fcfe41 - users[address(msg.sender)].field_1792), msg.sender);
                            if sub_72fcfe41 <= users[address(msg.sender)].field_1792:
                                emit LimitReached(users[address(msg.sender)].field_1792, msg.sender);
                            if sub_639a0b26 > 100:
                                revert with 0, 1
                            if 100 < sub_639a0b26:
                                revert with 0, 17
                            if not -sub_72fcfe41 + users[address(msg.sender)].field_1792:
                                call stor104.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 0
                            else:
                                if sub_72fcfe41 - users[address(msg.sender)].field_1792 and -sub_639a0b26 + 100 > -1 / sub_72fcfe41 - users[address(msg.sender)].field_1792:
                                    revert with 0, 17
                                if not sub_72fcfe41 - users[address(msg.sender)].field_1792:
                                    revert with 0, 18
                                if (100 * sub_72fcfe41) - (sub_639a0b26 * sub_72fcfe41) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) / sub_72fcfe41 - users[address(msg.sender)].field_1792 != -sub_639a0b26 + 100:
                                    revert with 0, 1
                                call stor104.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (100 * sub_72fcfe41) - (sub_639a0b26 * sub_72fcfe41) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) / 100
                else:
                    if block.timestamp < users[address(msg.sender)].field_1536:
                        revert with 0, 17
                    if 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 and block.timestamp - users[address(msg.sender)].field_1536 > -1 / 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600:
                        revert with 0, 17
                    if users[address(msg.sender)].field_1792 > !((block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600)):
                        revert with 0, 17
                    if users[address(msg.sender)].field_1792 + (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) <= sub_72fcfe41:
                        if (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) and 5 * stor118 > -1 / (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600):
                            revert with 0, 17
                        if (5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) / 100 > (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600):
                            if sub_72fcfe41 <= users[address(msg.sender)].field_1792:
                                revert with 0, 'Full payouts'
                            revert with 0, 'Zero payout'
                        if (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) < (5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) / 100:
                            revert with 0, 17
                        if sub_72fcfe41 <= users[address(msg.sender)].field_1792:
                            revert with 0, 'Full payouts'
                        if not (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) / 100):
                            if (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) / 100) <= 0:
                                revert with 0, 'Zero payout'
                            if total_withdraw > !((block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) / 100)):
                                revert with 0, 17
                            total_withdraw = total_withdraw + (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) / 100)
                            users[address(msg.sender)].field_1536 = block.timestamp
                            emit Withdraw(((block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) / 100)), msg.sender);
                            if sub_72fcfe41 <= users[address(msg.sender)].field_1792:
                                emit LimitReached(users[address(msg.sender)].field_1792, msg.sender);
                            if sub_639a0b26 > 100:
                                revert with 0, 1
                            if 100 < sub_639a0b26:
                                revert with 0, 17
                            if not (-1 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) + (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) + ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) / 100):
                                call stor104.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 0
                            else:
                                if (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) / 100) and -sub_639a0b26 + 100 > -1 / (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) / 100):
                                    revert with 0, 17
                                if not (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) / 100):
                                    revert with 0, 18
                                if (100 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (sub_639a0b26 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (100 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) + (sub_639a0b26 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (100 * (5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) / 100) + (sub_639a0b26 * (5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) / 100) / (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) / 100) != -sub_639a0b26 + 100:
                                    revert with 0, 1
                                call stor104.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (100 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (sub_639a0b26 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (100 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) + (sub_639a0b26 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (100 * (5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) / 100) + (sub_639a0b26 * (5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) / 100) / 100
                        else:
                            if users[address(msg.sender)].field_1792 > !((block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) / 100)):
                                revert with 0, 17
                            if users[address(msg.sender)].field_1792 + (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) / 100) <= sub_72fcfe41:
                                if users[address(msg.sender)].field_1792 > !((block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600)):
                                    revert with 0, 17
                                users[address(msg.sender)].field_1792 = users[address(msg.sender)].field_1792 + (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600)
                                if (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) / 100) <= 0:
                                    revert with 0, 'Zero payout'
                                if total_withdraw > !((block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) / 100)):
                                    revert with 0, 17
                                total_withdraw = total_withdraw + (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) / 100)
                                users[address(msg.sender)].field_1536 = block.timestamp
                                emit Withdraw(((block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) / 100)), msg.sender);
                                if sub_72fcfe41 <= users[address(msg.sender)].field_1792:
                                    emit LimitReached(users[address(msg.sender)].field_1792, msg.sender);
                                if sub_639a0b26 > 100:
                                    revert with 0, 1
                                if 100 < sub_639a0b26:
                                    revert with 0, 17
                                if not (-1 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) + (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) + ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) / 100):
                                    call stor104.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, 0
                                else:
                                    if (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) / 100) and -sub_639a0b26 + 100 > -1 / (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) / 100):
                                        revert with 0, 17
                                    if not (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) / 100):
                                        revert with 0, 18
                                    if (100 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (sub_639a0b26 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (100 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) + (sub_639a0b26 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (100 * (5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) / 100) + (sub_639a0b26 * (5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) / 100) / (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) / 100) != -sub_639a0b26 + 100:
                                        revert with 0, 1
                                    call stor104.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (100 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (sub_639a0b26 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (100 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) + (sub_639a0b26 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (100 * (5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) / 100) + (sub_639a0b26 * (5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600 * stor118) / 100) / 100
                            else:
                                if users[address(msg.sender)].field_1792 > sub_72fcfe41:
                                    if users[address(msg.sender)].field_1792 > !((block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600)):
                                        revert with 0, 17
                                    users[address(msg.sender)].field_1792 = users[address(msg.sender)].field_1792 + (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600)
                                    revert with 0, 'Zero payout'
                                if sub_72fcfe41 < users[address(msg.sender)].field_1792:
                                    revert with 0, 17
                                if users[address(msg.sender)].field_1792 > !((block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600)):
                                    revert with 0, 17
                                users[address(msg.sender)].field_1792 = users[address(msg.sender)].field_1792 + (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor111 / 100 * 10^18 / 24 * 3600)
                                if sub_72fcfe41 - users[address(msg.sender)].field_1792 <= 0:
                                    revert with 0, 'Zero payout'
                                if total_withdraw > !(sub_72fcfe41 - users[address(msg.sender)].field_1792):
                                    revert with 0, 17
                                total_withdraw = total_withdraw + sub_72fcfe41 - users[address(msg.sender)].field_1792
                                users[address(msg.sender)].field_1536 = block.timestamp
                                emit Withdraw((sub_72fcfe41 - users[address(msg.sender)].field_1792), msg.sender);
                                if sub_72fcfe41 <= users[address(msg.sender)].field_1792:
                                    emit LimitReached(users[address(msg.sender)].field_1792, msg.sender);
                                if sub_639a0b26 > 100:
                                    revert with 0, 1
                                if 100 < sub_639a0b26:
                                    revert with 0, 17
                                if not -sub_72fcfe41 + users[address(msg.sender)].field_1792:
                                    call stor104.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, 0
                                else:
                                    if sub_72fcfe41 - users[address(msg.sender)].field_1792 and -sub_639a0b26 + 100 > -1 / sub_72fcfe41 - users[address(msg.sender)].field_1792:
                                        revert with 0, 17
                                    if not sub_72fcfe41 - users[address(msg.sender)].field_1792:
                                        revert with 0, 18
                                    if (100 * sub_72fcfe41) - (sub_639a0b26 * sub_72fcfe41) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) / sub_72fcfe41 - users[address(msg.sender)].field_1792 != -sub_639a0b26 + 100:
                                        revert with 0, 1
                                    call stor104.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (100 * sub_72fcfe41) - (sub_639a0b26 * sub_72fcfe41) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) / 100
                    else:
                        if users[address(msg.sender)].field_1792 > sub_72fcfe41:
                            if False and 5 * stor118 > 0:
                                revert with 0, 17
                            if sub_72fcfe41 <= users[address(msg.sender)].field_1792:
                                revert with 0, 'Full payouts'
                            revert with 0, 'Zero payout'
                        if sub_72fcfe41 < users[address(msg.sender)].field_1792:
                            revert with 0, 17
                        if sub_72fcfe41 - users[address(msg.sender)].field_1792 and 5 * stor118 > -1 / sub_72fcfe41 - users[address(msg.sender)].field_1792:
                            revert with 0, 17
                        if (5 * sub_72fcfe41 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100 > sub_72fcfe41 - users[address(msg.sender)].field_1792:
                            if sub_72fcfe41 <= users[address(msg.sender)].field_1792:
                                revert with 0, 'Full payouts'
                            revert with 0, 'Zero payout'
                        if sub_72fcfe41 - users[address(msg.sender)].field_1792 < (5 * sub_72fcfe41 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100:
                            revert with 0, 17
                        if sub_72fcfe41 <= users[address(msg.sender)].field_1792:
                            revert with 0, 'Full payouts'
                        if not sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100):
                            if sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100) <= 0:
                                revert with 0, 'Zero payout'
                            if total_withdraw > !(sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100)):
                                revert with 0, 17
                            total_withdraw = total_withdraw + sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100)
                            users[address(msg.sender)].field_1536 = block.timestamp
                            emit Withdraw((sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100)), msg.sender);
                            if sub_72fcfe41 <= users[address(msg.sender)].field_1792:
                                emit LimitReached(users[address(msg.sender)].field_1792, msg.sender);
                            if sub_639a0b26 > 100:
                                revert with 0, 1
                            if 100 < sub_639a0b26:
                                revert with 0, 17
                            if not -sub_72fcfe41 + users[address(msg.sender)].field_1792 + ((5 * sub_72fcfe41 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100):
                                call stor104.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 0
                            else:
                                if sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100) and -sub_639a0b26 + 100 > -1 / sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100):
                                    revert with 0, 17
                                if not sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100):
                                    revert with 0, 18
                                if (100 * sub_72fcfe41) - (sub_639a0b26 * sub_72fcfe41) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) - (100 * (5 * sub_72fcfe41 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100) + (sub_639a0b26 * (5 * sub_72fcfe41 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100) / sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100) != -sub_639a0b26 + 100:
                                    revert with 0, 1
                                call stor104.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (100 * sub_72fcfe41) - (sub_639a0b26 * sub_72fcfe41) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) - (100 * (5 * sub_72fcfe41 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100) + (sub_639a0b26 * (5 * sub_72fcfe41 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100) / 100
                        else:
                            if users[address(msg.sender)].field_1792 > !(sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100)):
                                revert with 0, 17
                            if sub_72fcfe41 - ((5 * sub_72fcfe41 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100) <= sub_72fcfe41:
                                if users[address(msg.sender)].field_1792 > !(sub_72fcfe41 - users[address(msg.sender)].field_1792):
                                    revert with 0, 17
                                users[address(msg.sender)].field_1792 = sub_72fcfe41
                                if sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100) <= 0:
                                    revert with 0, 'Zero payout'
                                if total_withdraw > !(sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100)):
                                    revert with 0, 17
                                total_withdraw = total_withdraw + sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100)
                                users[address(msg.sender)].field_1536 = block.timestamp
                                emit Withdraw((sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100)), msg.sender);
                                if sub_72fcfe41 <= users[address(msg.sender)].field_1792:
                                    emit LimitReached(users[address(msg.sender)].field_1792, msg.sender);
                                if sub_639a0b26 > 100:
                                    revert with 0, 1
                                if 100 < sub_639a0b26:
                                    revert with 0, 17
                                if not -sub_72fcfe41 + users[address(msg.sender)].field_1792 + ((5 * sub_72fcfe41 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100):
                                    call stor104.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, 0
                                else:
                                    if sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100) and -sub_639a0b26 + 100 > -1 / sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100):
                                        revert with 0, 17
                                    if not sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100):
                                        revert with 0, 18
                                    if (100 * sub_72fcfe41) - (sub_639a0b26 * sub_72fcfe41) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) - (100 * (5 * sub_72fcfe41 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100) + (sub_639a0b26 * (5 * sub_72fcfe41 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100) / sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100) != -sub_639a0b26 + 100:
                                        revert with 0, 1
                                    call stor104.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (100 * sub_72fcfe41) - (sub_639a0b26 * sub_72fcfe41) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) - (100 * (5 * sub_72fcfe41 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100) + (sub_639a0b26 * (5 * sub_72fcfe41 * stor118) - (5 * users[address(msg.sender)].field_1792 * stor118) / 100) / 100
                            else:
                                if users[address(msg.sender)].field_1792 > sub_72fcfe41:
                                    if users[address(msg.sender)].field_1792 > !(sub_72fcfe41 - users[address(msg.sender)].field_1792):
                                        revert with 0, 17
                                    users[address(msg.sender)].field_1792 = sub_72fcfe41
                                    revert with 0, 'Zero payout'
                                if sub_72fcfe41 < users[address(msg.sender)].field_1792:
                                    revert with 0, 17
                                if users[address(msg.sender)].field_1792 > !(sub_72fcfe41 - users[address(msg.sender)].field_1792):
                                    revert with 0, 17
                                users[address(msg.sender)].field_1792 = sub_72fcfe41
                                if sub_72fcfe41 - users[address(msg.sender)].field_1792 <= 0:
                                    revert with 0, 'Zero payout'
                                if total_withdraw > !(sub_72fcfe41 - users[address(msg.sender)].field_1792):
                                    revert with 0, 17
                                total_withdraw = total_withdraw + sub_72fcfe41 - users[address(msg.sender)].field_1792
                                users[address(msg.sender)].field_1536 = block.timestamp
                                emit Withdraw((sub_72fcfe41 - users[address(msg.sender)].field_1792), msg.sender);
                                if sub_72fcfe41 <= users[address(msg.sender)].field_1792:
                                    emit LimitReached(users[address(msg.sender)].field_1792, msg.sender);
                                if sub_639a0b26 > 100:
                                    revert with 0, 1
                                if 100 < sub_639a0b26:
                                    revert with 0, 17
                                if not -sub_72fcfe41 + users[address(msg.sender)].field_1792:
                                    call stor104.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, 0
                                else:
                                    if sub_72fcfe41 - users[address(msg.sender)].field_1792 and -sub_639a0b26 + 100 > -1 / sub_72fcfe41 - users[address(msg.sender)].field_1792:
                                        revert with 0, 17
                                    if not sub_72fcfe41 - users[address(msg.sender)].field_1792:
                                        revert with 0, 18
                                    if (100 * sub_72fcfe41) - (sub_639a0b26 * sub_72fcfe41) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) / sub_72fcfe41 - users[address(msg.sender)].field_1792 != -sub_639a0b26 + 100:
                                        revert with 0, 1
                                    call stor104.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (100 * sub_72fcfe41) - (sub_639a0b26 * sub_72fcfe41) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) / 100
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[0]
    emit 0x6451e341: users[address(msg.sender)].field_256, users[address(msg.sender)].field_1280, users[address(msg.sender)].field_1792, users[address(msg.sender)].field_512, msg.sender
    if not sub_c5e63fd6 + 1:
        revert with 0, 17
    sub_c5e63fd6++
}



}

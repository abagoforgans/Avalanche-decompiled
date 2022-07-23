contract main {




// =====================  Runtime code  =====================


#
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
address sub_c028b286Address;
address stor103;
address stor104;
address stor105;
address stor106;
mapping of struct users;
mapping of uint8 stor109;
mapping of struct airdrops;
mapping of struct sub_e41e91ef;
uint256 sub_35bbc397;
uint256 sub_639a0b26;
uint256 stor114;
uint256 stor115;
uint256 stor116;
uint256 stor117;
uint256 stor118;
uint256 sub_ea2caab3;
uint256 sub_72fcfe41;
uint256 stor121;
array of uint256 sub_c635701f;
uint8 isPaused;
uint256 sub_e812b202;
uint256 total_users;
uint256 total_deposited;
uint256 total_withdraw;
uint256 sub_5432d271;
uint256 sub_c5e63fd6;
array of uint256 stor108675280636212994165699066894553117855276624395885094332865914867125083942403;

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

function blackList(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor109[arg1])
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

function isPaused() {
    return bool(isPaused)
}

function sub_c028b286(?) {
    return sub_c028b286Address
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

function _fallback() payable {
  stop
}

function pause() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    isPaused = 1
}

function contractInfo() {
    return total_users, total_deposited, total_withdraw, sub_5432d271, sub_c5e63fd6, sub_e812b202
}

function unpause() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    isPaused = 0
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
    stor116 = arg1
}

function updateRefDepth(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor115 = arg1
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
    stor114 = arg1
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
    stor117 = arg1
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

function updateCompoundTax(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 <= 20
    sub_35bbc397 = arg1
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

function removeLiquidity(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call stor105.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'DRIP token transfer failed'
}

function sustainabilityFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not sub_ea2caab3:
        revert with 0, 18
    if users[address(arg1)].field_1280 / sub_ea2caab3 < stor121:
        if users[address(arg1)].field_1280 / sub_ea2caab3 > 0x3333333333333333333333333333333333333333333333333333333333333333:
            revert with 0, 17
        return (5 * users[address(arg1)].field_1280 / sub_ea2caab3)
    if stor121 > 0x3333333333333333333333333333333333333333333333333333333333333333:
        revert with 0, 17
    return (5 * stor121)
}

function sub_460259b0(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    staticcall sub_c028b286Address.0x15c43aaf with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 192
    total_users = ext_call.return_data[0]
    total_deposited = ext_call.return_data[32]
    total_withdraw = ext_call.return_data[64]
    sub_5432d271 = ext_call.return_data[96]
    sub_c5e63fd6 = ext_call.return_data[128]
    sub_e812b202 = ext_call.return_data[160]
}

function addToBlackList(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 < 96 or ceil32(32 * arg1.length) + 97 > test266151307():
        revert with 0, 65
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = arg1 + 36
    s = 128
    while idx < arg1 + (32 * arg1.length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 109
        stor109[mem[(32 * idx) + 140 len 20]] = 1
        if not idx + 1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_2926e227(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = cd[4] + 36
    s = 128
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 109
        stor109[mem[(32 * idx) + 140 len 20]] = 0
        if not idx + 1:
            revert with 0, 17
        idx = idx + 1
        continue 
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
    if not stor109[msg.sender] != 1:
        revert with 0, 'No Blacklist calls'
    if isPaused:
        revert with 0, 'Swaps currently paused'
    staticcall stor105.calculateTransferTaxes(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    call stor105.0x23b872dd with:
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
    mem[0] = msg.sender
    mem[32] = 109
    if not stor109[msg.sender] != 1:
        revert with 0, 'No Blacklist calls'
    if isPaused:
        revert with 0, 'Swaps currently paused'
    idx = 0
    s = 0
    t = 0
    t = 0
    while idx < ('cd', 4).length:
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = sub_28ddc982Address
        mem[mem[64] + 68] = cd[36]
        call stor105.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, sub_28ddc982Address, cd[36]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _86 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_86] == bool(mem[_86])
        if not mem[_86]:
            revert with 0, 'DRIP to contract transfer failed; check balance and allowance, airdrop'
        if idx >= mem[96]:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 108
        if not users[mem[(32 * idx) + 140 len 20]].field_0:
            revert with 0, '_to not found'
        mem[mem[64] + 36] = cd[36]
        staticcall stor105.calculateTransferTaxes(address arg1, uint256 arg2) with:
                gas gas_remaining wei
               args msg.sender, cd[36]
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _97 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        _99 = mem[_97]
        _100 = mem[_97 + 32]
        if idx >= mem[96]:
            revert with 0, 50
        if users[mem[(32 * idx) + 140 len 20]].field_1280 > !mem[_97]:
            revert with 0, 17
        users[mem[(32 * idx) + 140 len 20]].field_1280 += mem[_97]
        if idx >= mem[96]:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 110
        if airdrops[mem[(32 * idx) + 140 len 20]].field_256 > !_99:
            revert with 0, 17
        airdrops[mem[(32 * idx) + 140 len 20]].field_256 += _99
        if s > !_99:
            revert with 0, 17
        if idx >= mem[96]:
            revert with 0, 50
        _108 = mem[(32 * idx) + 128]
        mem[mem[64]] = _99
        mem[mem[64] + 32] = block.timestamp
        emit NewAirdrop(_99, block.timestamp, msg.sender, address(_108));
        if idx >= mem[96]:
            revert with 0, 50
        _112 = mem[(32 * idx) + 128]
        mem[mem[64]] = _99
        emit 0xfe2cb777: _99, address(_112)
        if not idx + 1:
            revert with 0, 17
        idx = idx + 1
        s = s + _99
        t = _100
        t = _99
        continue 
    if airdrops[address(msg.sender)].field_0 > !(s * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length):
        revert with 0, 17
    airdrops[address(msg.sender)].field_0 += s * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length
    airdrops[address(msg.sender)].field_512 = block.timestamp
    if sub_e812b202 > !(_99 * ('cd', 4).length):
        revert with 0, 17
    sub_e812b202 += _99 * ('cd', 4).length
    if sub_c5e63fd6 > -2:
        revert with 0, 17
    sub_c5e63fd6++
}

function sub_79df8610(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 108
        if users[address(cd[((32 * idx) + cd[4] + 36)])].field_1280:
            revert with 0, 'User is already transfered'
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        staticcall sub_c028b286Address.0xa87430ba with:
                gas gas_remaining wei
               args address(cd[((32 * idx) + cd[4] + 36)])
        mem[mem[64] len 352] = ext_call.return_data[0 len 352]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _80 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 352
        _81 = mem[64]
        if mem[64] + 352 < mem[64] or mem[64] + 352 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + 352
        require mem[_80] == mem[_80 + 12 len 20]
        mem[_81] = mem[_80]
        mem[_81 + 32] = mem[_80 + 32]
        mem[_81 + 64] = mem[_80 + 64]
        mem[_81 + 96] = mem[_80 + 96]
        mem[_81 + 128] = mem[_80 + 128]
        mem[_81 + 160] = mem[_80 + 160]
        mem[_81 + 192] = mem[_80 + 192]
        mem[_81 + 224] = mem[_80 + 224]
        mem[_81 + 256] = mem[_80 + 256]
        mem[_81 + 288] = mem[_80 + 288]
        require mem[_80 + 320] == mem[_80 + 332 len 20]
        mem[_81 + 320] = mem[_80 + 320]
        _93 = mem[_81]
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 108
        users[address(cd[((32 * idx) + cd[4] + 36)])].field_0 = address(_93)
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        users[address(cd[((32 * idx) + cd[4] + 36)])].field_256 = mem[_81 + 32]
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        users[address(cd[((32 * idx) + cd[4] + 36)])].field_512 = mem[_81 + 64]
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        users[address(cd[((32 * idx) + cd[4] + 36)])].field_768 = mem[_81 + 96]
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        users[address(cd[((32 * idx) + cd[4] + 36)])].field_1024 = mem[_81 + 128]
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        users[address(cd[((32 * idx) + cd[4] + 36)])].field_1280 = mem[_81 + 160]
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        users[address(cd[((32 * idx) + cd[4] + 36)])].field_1536 = mem[_81 + 192]
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        users[address(cd[((32 * idx) + cd[4] + 36)])].field_1792 = mem[_81 + 224]
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        users[address(cd[((32 * idx) + cd[4] + 36)])].field_2048 = mem[_81 + 256]
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        users[address(cd[((32 * idx) + cd[4] + 36)])].field_2304 = mem[_81 + 288]
        _113 = mem[_81 + 320]
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 108
        users[address(cd[((32 * idx) + cd[4] + 36)])].field_2560 = address(_113)
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        staticcall sub_c028b286Address.0x8c86f0a7 with:
                gas gas_remaining wei
               args address(cd[((32 * idx) + cd[4] + 36)])
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _117 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _118 = mem[64]
        if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
            revert with 0, 65
        mem[64] = mem[64] + 96
        mem[_118] = mem[_117]
        mem[_118 + 32] = mem[_117 + 32]
        mem[_118 + 64] = mem[_117 + 64]
        _122 = mem[_118]
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 110
        airdrops[address(cd[((32 * idx) + cd[4] + 36)])].field_0 = _122
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        airdrops[address(cd[((32 * idx) + cd[4] + 36)])].field_256 = mem[_118 + 32]
        _126 = mem[_118 + 64]
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 110
        airdrops[address(cd[((32 * idx) + cd[4] + 36)])].field_512 = _126
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        staticcall sub_c028b286Address.0xe41e91ef with:
                gas gas_remaining wei
               args address(cd[((32 * idx) + cd[4] + 36)])
        mem[mem[64] len 160] = ext_call.return_data[0 len 160]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _130 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 160
        _131 = mem[64]
        if mem[64] + 160 > test266151307() or mem[64] + 160 < mem[64]:
            revert with 0, 65
        mem[64] = mem[64] + 160
        require mem[_130] == mem[_130 + 12 len 20]
        mem[_131] = mem[_130]
        require mem[_130 + 32] == mem[_130 + 44 len 20]
        mem[_131 + 32] = mem[_130 + 32]
        mem[_131 + 64] = mem[_130 + 64]
        mem[_131 + 96] = mem[_130 + 96]
        mem[_131 + 128] = mem[_130 + 128]
        _137 = mem[_131]
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 111
        sub_e41e91ef[address(cd[((32 * idx) + cd[4] + 36)])].field_0 = address(_137)
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        sub_e41e91ef[address(cd[((32 * idx) + cd[4] + 36)])].field_256 = mem[_131 + 44 len 20]
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        sub_e41e91ef[address(cd[((32 * idx) + cd[4] + 36)])].field_512 = mem[_131 + 64]
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        sub_e41e91ef[address(cd[((32 * idx) + cd[4] + 36)])].field_768 = mem[_131 + 96]
        _145 = mem[_131 + 128]
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 111
        sub_e41e91ef[address(cd[((32 * idx) + cd[4] + 36)])].field_1024 = _145
        if not idx + 1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function initialize(address arg1, address arg2, address arg3, address arg4, address arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    if uint8(stor0.field_8):
        owner = msg.sender
        emit OwnershipTransferred(owner, msg.sender);
        total_users = 1
        sub_ea2caab3 = 10000 * 10^18
        sub_72fcfe41 = 100000 * 10^18
        stor117 = 10^18
        stor118 = 10^18
        stor114 = 2
        stor115 = 15
        stor116 = 10
        stor121 = 10
        sub_35bbc397 = 5
        sub_639a0b26 = 10
        stor103 = arg1
        stor104 = arg2
        stor105 = arg3
        sub_28ddc982Address = arg4
        stor106 = arg4
        sub_c028b286Address = arg5
        sub_c635701f.length++
        storF044[stor122.length] = 200 * 10^6
        sub_c635701f.length++
        storF044[stor122.length] = 300 * 10^6
        sub_c635701f.length++
        storF044[stor122.length] = 500 * 10^6
        sub_c635701f.length++
        storF044[stor122.length] = 800 * 10^6
        sub_c635701f.length++
        storF044[stor122.length] = 1300 * 10^6
        sub_c635701f.length++
        storF044[stor122.length] = 2100 * 10^6
        sub_c635701f.length++
        storF044[stor122.length] = 3400 * 10^6
        sub_c635701f.length++
        storF044[stor122.length] = 5500 * 10^6
        sub_c635701f.length++
        storF044[stor122.length] = 8900 * 10^6
        sub_c635701f.length++
        storF044[stor122.length] = 4 * 10^6 * 3600
        sub_c635701f.length++
        storF044[stor122.length] = 23300 * 10^6
        sub_c635701f.length++
        storF044[stor122.length] = 37700 * 10^6
        sub_c635701f.length++
        storF044[stor122.length] = 61 * 10^9
        sub_c635701f.length++
        storF044[stor122.length] = 98700 * 10^6
        sub_c635701f.length++
        storF044[stor122.length] = 159700 * 10^6
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if uint8(stor0.field_8):
            owner = msg.sender
            emit OwnershipTransferred(owner, msg.sender);
            total_users = 1
            sub_ea2caab3 = 10000 * 10^18
            sub_72fcfe41 = 100000 * 10^18
            stor117 = 10^18
            stor118 = 10^18
            stor114 = 2
            stor115 = 15
            stor116 = 10
            stor121 = 10
            sub_35bbc397 = 5
            sub_639a0b26 = 10
            stor103 = arg1
            stor104 = arg2
            stor105 = arg3
            sub_28ddc982Address = arg4
            stor106 = arg4
            sub_c028b286Address = arg5
            sub_c635701f.length++
            storF044[stor122.length] = 200 * 10^6
            sub_c635701f.length++
            storF044[stor122.length] = 300 * 10^6
            sub_c635701f.length++
            storF044[stor122.length] = 500 * 10^6
            sub_c635701f.length++
            storF044[stor122.length] = 800 * 10^6
            sub_c635701f.length++
            storF044[stor122.length] = 1300 * 10^6
            sub_c635701f.length++
            storF044[stor122.length] = 2100 * 10^6
            sub_c635701f.length++
            storF044[stor122.length] = 3400 * 10^6
            sub_c635701f.length++
            storF044[stor122.length] = 5500 * 10^6
            sub_c635701f.length++
            storF044[stor122.length] = 8900 * 10^6
            sub_c635701f.length++
            storF044[stor122.length] = 4 * 10^6 * 3600
            sub_c635701f.length++
            storF044[stor122.length] = 23300 * 10^6
            sub_c635701f.length++
            storF044[stor122.length] = 37700 * 10^6
            sub_c635701f.length++
            storF044[stor122.length] = 61 * 10^9
            sub_c635701f.length++
            storF044[stor122.length] = 98700 * 10^6
            sub_c635701f.length++
            storF044[stor122.length] = 159700 * 10^6
        else:
            uint16(stor0.field_0) = 257
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
            if uint8(stor0.field_8):
                owner = msg.sender
                emit OwnershipTransferred(owner, msg.sender);
                total_users = 1
                sub_ea2caab3 = 10000 * 10^18
                sub_72fcfe41 = 100000 * 10^18
                stor117 = 10^18
                stor118 = 10^18
                stor114 = 2
                stor115 = 15
                stor116 = 10
                stor121 = 10
                sub_35bbc397 = 5
                sub_639a0b26 = 10
                stor103 = arg1
                stor104 = arg2
                stor105 = arg3
                sub_28ddc982Address = arg4
                stor106 = arg4
                sub_c028b286Address = arg5
                sub_c635701f.length++
                storF044[stor122.length] = 200 * 10^6
                sub_c635701f.length++
                storF044[stor122.length] = 300 * 10^6
                sub_c635701f.length++
                storF044[stor122.length] = 500 * 10^6
                sub_c635701f.length++
                storF044[stor122.length] = 800 * 10^6
                sub_c635701f.length++
                storF044[stor122.length] = 1300 * 10^6
                sub_c635701f.length++
                storF044[stor122.length] = 2100 * 10^6
                sub_c635701f.length++
                storF044[stor122.length] = 3400 * 10^6
                sub_c635701f.length++
                storF044[stor122.length] = 5500 * 10^6
                sub_c635701f.length++
                storF044[stor122.length] = 8900 * 10^6
                sub_c635701f.length++
                storF044[stor122.length] = 4 * 10^6 * 3600
                sub_c635701f.length++
                storF044[stor122.length] = 23300 * 10^6
                sub_c635701f.length++
                storF044[stor122.length] = 37700 * 10^6
                sub_c635701f.length++
                storF044[stor122.length] = 61 * 10^9
                sub_c635701f.length++
                storF044[stor122.length] = 98700 * 10^6
                sub_c635701f.length++
                storF044[stor122.length] = 159700 * 10^6
            else:
                uint16(stor0.field_0) = 257
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                if uint8(stor0.field_8):
                    owner = msg.sender
                    emit OwnershipTransferred(owner, msg.sender);
                    total_users = 1
                    sub_ea2caab3 = 10000 * 10^18
                    sub_72fcfe41 = 100000 * 10^18
                    stor117 = 10^18
                    stor118 = 10^18
                    stor114 = 2
                    stor115 = 15
                    stor116 = 10
                    stor121 = 10
                    sub_35bbc397 = 5
                    sub_639a0b26 = 10
                    stor103 = arg1
                    stor104 = arg2
                    stor105 = arg3
                    sub_28ddc982Address = arg4
                    stor106 = arg4
                    sub_c028b286Address = arg5
                    sub_c635701f.length++
                    storF044[stor122.length] = 200 * 10^6
                    sub_c635701f.length++
                    storF044[stor122.length] = 300 * 10^6
                    sub_c635701f.length++
                    storF044[stor122.length] = 500 * 10^6
                    sub_c635701f.length++
                    storF044[stor122.length] = 800 * 10^6
                    sub_c635701f.length++
                    storF044[stor122.length] = 1300 * 10^6
                    sub_c635701f.length++
                    storF044[stor122.length] = 2100 * 10^6
                    sub_c635701f.length++
                    storF044[stor122.length] = 3400 * 10^6
                    sub_c635701f.length++
                    storF044[stor122.length] = 5500 * 10^6
                    sub_c635701f.length++
                    storF044[stor122.length] = 8900 * 10^6
                    sub_c635701f.length++
                    storF044[stor122.length] = 4 * 10^6 * 3600
                    sub_c635701f.length++
                    storF044[stor122.length] = 23300 * 10^6
                    sub_c635701f.length++
                    storF044[stor122.length] = 37700 * 10^6
                    sub_c635701f.length++
                    storF044[stor122.length] = 61 * 10^9
                    sub_c635701f.length++
                    storF044[stor122.length] = 98700 * 10^6
                    sub_c635701f.length++
                    storF044[stor122.length] = 159700 * 10^6
                else:
                    uint16(stor0.field_0) = 257
                    uint8(stor0.field_8) = 0
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                    if uint8(stor0.field_8):
                        owner = msg.sender
                        emit OwnershipTransferred(owner, msg.sender);
                        total_users = 1
                        sub_ea2caab3 = 10000 * 10^18
                        sub_72fcfe41 = 100000 * 10^18
                        stor117 = 10^18
                        stor118 = 10^18
                        stor114 = 2
                        stor115 = 15
                        stor116 = 10
                        stor121 = 10
                        sub_35bbc397 = 5
                        sub_639a0b26 = 10
                        stor103 = arg1
                        stor104 = arg2
                        stor105 = arg3
                        sub_28ddc982Address = arg4
                        stor106 = arg4
                        sub_c028b286Address = arg5
                        sub_c635701f.length++
                        storF044[stor122.length] = 200 * 10^6
                        sub_c635701f.length++
                        storF044[stor122.length] = 300 * 10^6
                        sub_c635701f.length++
                        storF044[stor122.length] = 500 * 10^6
                        sub_c635701f.length++
                        storF044[stor122.length] = 800 * 10^6
                        sub_c635701f.length++
                        storF044[stor122.length] = 1300 * 10^6
                        sub_c635701f.length++
                        storF044[stor122.length] = 2100 * 10^6
                        sub_c635701f.length++
                        storF044[stor122.length] = 3400 * 10^6
                        sub_c635701f.length++
                        storF044[stor122.length] = 5500 * 10^6
                        sub_c635701f.length++
                        storF044[stor122.length] = 8900 * 10^6
                        sub_c635701f.length++
                        storF044[stor122.length] = 4 * 10^6 * 3600
                        sub_c635701f.length++
                        storF044[stor122.length] = 23300 * 10^6
                        sub_c635701f.length++
                        storF044[stor122.length] = 37700 * 10^6
                        sub_c635701f.length++
                        storF044[stor122.length] = 61 * 10^9
                        sub_c635701f.length++
                        storF044[stor122.length] = 98700 * 10^6
                        sub_c635701f.length++
                        storF044[stor122.length] = 159700 * 10^6
                    else:
                        uint16(stor0.field_0) = 257
                        owner = msg.sender
                        emit OwnershipTransferred(owner, msg.sender);
                        uint8(stor0.field_8) = 0
                        uint8(stor0.field_8) = 0
                        total_users = 1
                        sub_ea2caab3 = 10000 * 10^18
                        sub_72fcfe41 = 100000 * 10^18
                        stor117 = 10^18
                        stor118 = 10^18
                        stor114 = 2
                        stor115 = 15
                        stor116 = 10
                        stor121 = 10
                        sub_35bbc397 = 5
                        sub_639a0b26 = 10
                        stor103 = arg1
                        stor104 = arg2
                        stor105 = arg3
                        sub_28ddc982Address = arg4
                        stor106 = arg4
                        sub_c028b286Address = arg5
                        sub_c635701f.length++
                        storF044[stor122.length] = 200 * 10^6
                        sub_c635701f.length++
                        storF044[stor122.length] = 300 * 10^6
                        sub_c635701f.length++
                        storF044[stor122.length] = 500 * 10^6
                        sub_c635701f.length++
                        storF044[stor122.length] = 800 * 10^6
                        sub_c635701f.length++
                        storF044[stor122.length] = 1300 * 10^6
                        sub_c635701f.length++
                        storF044[stor122.length] = 2100 * 10^6
                        sub_c635701f.length++
                        storF044[stor122.length] = 3400 * 10^6
                        sub_c635701f.length++
                        storF044[stor122.length] = 5500 * 10^6
                        sub_c635701f.length++
                        storF044[stor122.length] = 8900 * 10^6
                        sub_c635701f.length++
                        storF044[stor122.length] = 4 * 10^6 * 3600
                        sub_c635701f.length++
                        storF044[stor122.length] = 23300 * 10^6
                        sub_c635701f.length++
                        storF044[stor122.length] = 37700 * 10^6
                        sub_c635701f.length++
                        storF044[stor122.length] = 61 * 10^9
                        sub_c635701f.length++
                        storF044[stor122.length] = 98700 * 10^6
                        sub_c635701f.length++
                        storF044[stor122.length] = 159700 * 10^6
                        uint8(stor0.field_8) = 0
}

function claimsAvailable(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if users[address(arg1)].field_1280 > 0xb60b60b60b60b60b60b60b60b60b60b60b60b60b60b60b60b60b60b60b60b6:
        revert with 0, 17
    if not sub_ea2caab3:
        revert with 0, 18
    if 360 * users[address(arg1)].field_1280 / 100 < sub_72fcfe41:
        if users[address(arg1)].field_1280 / sub_ea2caab3 < stor121:
            if users[address(arg1)].field_1280 / sub_ea2caab3 > 0x3333333333333333333333333333333333333333333333333333333333333333:
                revert with 0, 17
            if 360 * users[address(arg1)].field_1280 / 100 <= users[address(arg1)].field_1792:
                return 0
            if stor114 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
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
                if users[address(arg1)].field_1280 and 10^18 * stor114 > -1 / users[address(arg1)].field_1280:
                    revert with 0, 17
                if not users[address(arg1)].field_1280:
                    revert with 0, 18
                if 10^18 * users[address(arg1)].field_1280 * stor114 / users[address(arg1)].field_1280 != 10^18 * stor114:
                    revert with 0, 1
                if users[address(arg1)].field_1536 > block.timestamp:
                    if 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 and 0 > -1 / 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600:
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
                    if 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 and block.timestamp - users[address(arg1)].field_1536 > -1 / 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600:
                        revert with 0, 17
                    if users[address(arg1)].field_1792 > !((block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600)):
                        revert with 0, 17
                    if users[address(arg1)].field_1792 + (block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) <= 360 * users[address(arg1)].field_1280 / 100:
                        if (block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) and 5 * users[address(arg1)].field_1280 / sub_ea2caab3 > -1 / (block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600):
                            revert with 0, 17
                        if (5 * block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(arg1)].field_1280 / sub_ea2caab3) - (5 * users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(arg1)].field_1280 / sub_ea2caab3) / 100 > (block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600):
                            return 0
                        if (block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) < (5 * block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(arg1)].field_1280 / sub_ea2caab3) - (5 * users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(arg1)].field_1280 / sub_ea2caab3) / 100:
                            revert with 0, 17
                        return ((block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(arg1)].field_1280 / sub_ea2caab3) - (5 * users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(arg1)].field_1280 / sub_ea2caab3) / 100))
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
        if stor121 > 0x3333333333333333333333333333333333333333333333333333333333333333:
            revert with 0, 17
        if 360 * users[address(arg1)].field_1280 / 100 <= users[address(arg1)].field_1792:
            return 0
        if stor114 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
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
                if False and 5 * stor121 > 0:
                    revert with 0, 17
                else:
                    return 0
        else:
            if users[address(arg1)].field_1280 and 10^18 * stor114 > -1 / users[address(arg1)].field_1280:
                revert with 0, 17
            if not users[address(arg1)].field_1280:
                revert with 0, 18
            if 10^18 * users[address(arg1)].field_1280 * stor114 / users[address(arg1)].field_1280 != 10^18 * stor114:
                revert with 0, 1
            if users[address(arg1)].field_1536 > block.timestamp:
                if 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 and 0 > -1 / 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600:
                    revert with 0, 17
                if users[address(arg1)].field_1792 > -1:
                    revert with 0, 17
                if users[address(arg1)].field_1792 <= 360 * users[address(arg1)].field_1280 / 100:
                    if False and 5 * stor121 > 0:
                        revert with 0, 17
                    else:
                        return 0
            else:
                if block.timestamp < users[address(arg1)].field_1536:
                    revert with 0, 17
                if 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 and block.timestamp - users[address(arg1)].field_1536 > -1 / 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600:
                    revert with 0, 17
                if users[address(arg1)].field_1792 > !((block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600)):
                    revert with 0, 17
                if users[address(arg1)].field_1792 + (block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) <= 360 * users[address(arg1)].field_1280 / 100:
                    if (block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) and 5 * stor121 > -1 / (block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600):
                        revert with 0, 17
                    if (5 * block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) - (5 * users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) / 100 > (block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600):
                        return 0
                    if (block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) < (5 * block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) - (5 * users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) / 100:
                        revert with 0, 17
                    return ((block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) - (5 * users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) / 100))
        if users[address(arg1)].field_1792 > 360 * users[address(arg1)].field_1280 / 100:
            if False and 5 * stor121 > 0:
                revert with 0, 17
            else:
                return 0
        if 360 * users[address(arg1)].field_1280 / 100 < users[address(arg1)].field_1792:
            revert with 0, 17
        if (360 * users[address(arg1)].field_1280 / 100) - users[address(arg1)].field_1792 and 5 * stor121 > -1 / (360 * users[address(arg1)].field_1280 / 100) - users[address(arg1)].field_1792:
            revert with 0, 17
        if (5 * 360 * users[address(arg1)].field_1280 / 100 * stor121) - (5 * users[address(arg1)].field_1792 * stor121) / 100 > (360 * users[address(arg1)].field_1280 / 100) - users[address(arg1)].field_1792:
            return 0
        if (360 * users[address(arg1)].field_1280 / 100) - users[address(arg1)].field_1792 < (5 * 360 * users[address(arg1)].field_1280 / 100 * stor121) - (5 * users[address(arg1)].field_1792 * stor121) / 100:
            revert with 0, 17
        return ((360 * users[address(arg1)].field_1280 / 100) - users[address(arg1)].field_1792 - ((5 * 360 * users[address(arg1)].field_1280 / 100 * stor121) - (5 * users[address(arg1)].field_1792 * stor121) / 100))
    if users[address(arg1)].field_1280 / sub_ea2caab3 < stor121:
        if users[address(arg1)].field_1280 / sub_ea2caab3 > 0x3333333333333333333333333333333333333333333333333333333333333333:
            revert with 0, 17
        if sub_72fcfe41 <= users[address(arg1)].field_1792:
            return 0
        if stor114 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
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
            if users[address(arg1)].field_1280 and 10^18 * stor114 > -1 / users[address(arg1)].field_1280:
                revert with 0, 17
            if not users[address(arg1)].field_1280:
                revert with 0, 18
            if 10^18 * users[address(arg1)].field_1280 * stor114 / users[address(arg1)].field_1280 != 10^18 * stor114:
                revert with 0, 1
            if users[address(arg1)].field_1536 > block.timestamp:
                if 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 and 0 > -1 / 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600:
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
                if 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 and block.timestamp - users[address(arg1)].field_1536 > -1 / 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600:
                    revert with 0, 17
                if users[address(arg1)].field_1792 > !((block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600)):
                    revert with 0, 17
                if users[address(arg1)].field_1792 + (block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) <= sub_72fcfe41:
                    if (block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) and 5 * users[address(arg1)].field_1280 / sub_ea2caab3 > -1 / (block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600):
                        revert with 0, 17
                    if (5 * block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(arg1)].field_1280 / sub_ea2caab3) - (5 * users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(arg1)].field_1280 / sub_ea2caab3) / 100 > (block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600):
                        return 0
                    if (block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) < (5 * block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(arg1)].field_1280 / sub_ea2caab3) - (5 * users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(arg1)].field_1280 / sub_ea2caab3) / 100:
                        revert with 0, 17
                    return ((block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(arg1)].field_1280 / sub_ea2caab3) - (5 * users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(arg1)].field_1280 / sub_ea2caab3) / 100))
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
    if stor121 > 0x3333333333333333333333333333333333333333333333333333333333333333:
        revert with 0, 17
    if sub_72fcfe41 <= users[address(arg1)].field_1792:
        return 0
    if stor114 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
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
            if False and 5 * stor121 > 0:
                revert with 0, 17
            else:
                return 0
    else:
        if users[address(arg1)].field_1280 and 10^18 * stor114 > -1 / users[address(arg1)].field_1280:
            revert with 0, 17
        if not users[address(arg1)].field_1280:
            revert with 0, 18
        if 10^18 * users[address(arg1)].field_1280 * stor114 / users[address(arg1)].field_1280 != 10^18 * stor114:
            revert with 0, 1
        if users[address(arg1)].field_1536 > block.timestamp:
            if 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 and 0 > -1 / 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600:
                revert with 0, 17
            if users[address(arg1)].field_1792 > -1:
                revert with 0, 17
            if users[address(arg1)].field_1792 <= sub_72fcfe41:
                if False and 5 * stor121 > 0:
                    revert with 0, 17
                else:
                    return 0
        else:
            if block.timestamp < users[address(arg1)].field_1536:
                revert with 0, 17
            if 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 and block.timestamp - users[address(arg1)].field_1536 > -1 / 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600:
                revert with 0, 17
            if users[address(arg1)].field_1792 > !((block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600)):
                revert with 0, 17
            if users[address(arg1)].field_1792 + (block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) <= sub_72fcfe41:
                if (block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) and 5 * stor121 > -1 / (block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600):
                    revert with 0, 17
                if (5 * block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) - (5 * users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) / 100 > (block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600):
                    return 0
                if (block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) < (5 * block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) - (5 * users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) / 100:
                    revert with 0, 17
                return ((block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) - (5 * users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) / 100))
    if users[address(arg1)].field_1792 > sub_72fcfe41:
        if False and 5 * stor121 > 0:
            revert with 0, 17
        else:
            return 0
    if sub_72fcfe41 < users[address(arg1)].field_1792:
        revert with 0, 17
    if sub_72fcfe41 - users[address(arg1)].field_1792 and 5 * stor121 > -1 / sub_72fcfe41 - users[address(arg1)].field_1792:
        revert with 0, 17
    if (5 * sub_72fcfe41 * stor121) - (5 * users[address(arg1)].field_1792 * stor121) / 100 > sub_72fcfe41 - users[address(arg1)].field_1792:
        return 0
    if sub_72fcfe41 - users[address(arg1)].field_1792 < (5 * sub_72fcfe41 * stor121) - (5 * users[address(arg1)].field_1792 * stor121) / 100:
        revert with 0, 17
    return (sub_72fcfe41 - users[address(arg1)].field_1792 - ((5 * sub_72fcfe41 * stor121) - (5 * users[address(arg1)].field_1792 * stor121) / 100))
}

function payoutOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if users[address(arg1)].field_1280 > 0xb60b60b60b60b60b60b60b60b60b60b60b60b60b60b60b60b60b60b60b60b6:
        revert with 0, 17
    if not sub_ea2caab3:
        revert with 0, 18
    if 360 * users[address(arg1)].field_1280 / 100 < sub_72fcfe41:
        if users[address(arg1)].field_1280 / sub_ea2caab3 < stor121:
            if users[address(arg1)].field_1280 / sub_ea2caab3 > 0x3333333333333333333333333333333333333333333333333333333333333333:
                revert with 0, 17
            if 360 * users[address(arg1)].field_1280 / 100 <= users[address(arg1)].field_1792:
                return 0, 360 * users[address(arg1)].field_1280 / 100, 0, 0
            if stor114 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
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
                if users[address(arg1)].field_1280 and 10^18 * stor114 > -1 / users[address(arg1)].field_1280:
                    revert with 0, 17
                if not users[address(arg1)].field_1280:
                    revert with 0, 18
                if 10^18 * users[address(arg1)].field_1280 * stor114 / users[address(arg1)].field_1280 != 10^18 * stor114:
                    revert with 0, 1
                if users[address(arg1)].field_1536 > block.timestamp:
                    if 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 and 0 > -1 / 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600:
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
                    if 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 and block.timestamp - users[address(arg1)].field_1536 > -1 / 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600:
                        revert with 0, 17
                    if users[address(arg1)].field_1792 > !((block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600)):
                        revert with 0, 17
                    if users[address(arg1)].field_1792 + (block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) <= 360 * users[address(arg1)].field_1280 / 100:
                        if (block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) and 5 * users[address(arg1)].field_1280 / sub_ea2caab3 > -1 / (block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600):
                            revert with 0, 17
                        if (5 * block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(arg1)].field_1280 / sub_ea2caab3) - (5 * users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(arg1)].field_1280 / sub_ea2caab3) / 100 > (block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600):
                            return (block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600), 
                                   360 * users[address(arg1)].field_1280 / 100,
                                   0,
                                   (5 * block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(arg1)].field_1280 / sub_ea2caab3) - (5 * users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(arg1)].field_1280 / sub_ea2caab3) / 100
                        if (block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) < (5 * block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(arg1)].field_1280 / sub_ea2caab3) - (5 * users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(arg1)].field_1280 / sub_ea2caab3) / 100:
                            revert with 0, 17
                        return (block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600), 
                               360 * users[address(arg1)].field_1280 / 100,
                               (block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(arg1)].field_1280 / sub_ea2caab3) - (5 * users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(arg1)].field_1280 / sub_ea2caab3) / 100),
                               (5 * block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(arg1)].field_1280 / sub_ea2caab3) - (5 * users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(arg1)].field_1280 / sub_ea2caab3) / 100
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
        if stor121 > 0x3333333333333333333333333333333333333333333333333333333333333333:
            revert with 0, 17
        if 360 * users[address(arg1)].field_1280 / 100 <= users[address(arg1)].field_1792:
            return 0, 360 * users[address(arg1)].field_1280 / 100, 0, 0
        if stor114 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
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
                if False and 5 * stor121 > 0:
                    revert with 0, 17
                return 0, 360 * users[address(arg1)].field_1280 / 100, 0, 0
        else:
            if users[address(arg1)].field_1280 and 10^18 * stor114 > -1 / users[address(arg1)].field_1280:
                revert with 0, 17
            if not users[address(arg1)].field_1280:
                revert with 0, 18
            if 10^18 * users[address(arg1)].field_1280 * stor114 / users[address(arg1)].field_1280 != 10^18 * stor114:
                revert with 0, 1
            if users[address(arg1)].field_1536 > block.timestamp:
                if 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 and 0 > -1 / 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600:
                    revert with 0, 17
                if users[address(arg1)].field_1792 > -1:
                    revert with 0, 17
                if users[address(arg1)].field_1792 <= 360 * users[address(arg1)].field_1280 / 100:
                    if False and 5 * stor121 > 0:
                        revert with 0, 17
                    return 0, 360 * users[address(arg1)].field_1280 / 100, 0, 0
            else:
                if block.timestamp < users[address(arg1)].field_1536:
                    revert with 0, 17
                if 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 and block.timestamp - users[address(arg1)].field_1536 > -1 / 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600:
                    revert with 0, 17
                if users[address(arg1)].field_1792 > !((block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600)):
                    revert with 0, 17
                if users[address(arg1)].field_1792 + (block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) <= 360 * users[address(arg1)].field_1280 / 100:
                    if (block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) and 5 * stor121 > -1 / (block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600):
                        revert with 0, 17
                    if (5 * block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) - (5 * users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) / 100 > (block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600):
                        return (block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600), 
                               360 * users[address(arg1)].field_1280 / 100,
                               0,
                               (5 * block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) - (5 * users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) / 100
                    if (block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) < (5 * block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) - (5 * users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) / 100:
                        revert with 0, 17
                    return (block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600), 
                           360 * users[address(arg1)].field_1280 / 100,
                           (block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) - (5 * users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) / 100),
                           (5 * block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) - (5 * users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) / 100
        if users[address(arg1)].field_1792 > 360 * users[address(arg1)].field_1280 / 100:
            if False and 5 * stor121 > 0:
                revert with 0, 17
            return 0, 360 * users[address(arg1)].field_1280 / 100, 0, 0
        if 360 * users[address(arg1)].field_1280 / 100 < users[address(arg1)].field_1792:
            revert with 0, 17
        if (360 * users[address(arg1)].field_1280 / 100) - users[address(arg1)].field_1792 and 5 * stor121 > -1 / (360 * users[address(arg1)].field_1280 / 100) - users[address(arg1)].field_1792:
            revert with 0, 17
        if (5 * 360 * users[address(arg1)].field_1280 / 100 * stor121) - (5 * users[address(arg1)].field_1792 * stor121) / 100 > (360 * users[address(arg1)].field_1280 / 100) - users[address(arg1)].field_1792:
            return (360 * users[address(arg1)].field_1280 / 100) - users[address(arg1)].field_1792, 
                   360 * users[address(arg1)].field_1280 / 100,
                   0,
                   (5 * 360 * users[address(arg1)].field_1280 / 100 * stor121) - (5 * users[address(arg1)].field_1792 * stor121) / 100
        if (360 * users[address(arg1)].field_1280 / 100) - users[address(arg1)].field_1792 < (5 * 360 * users[address(arg1)].field_1280 / 100 * stor121) - (5 * users[address(arg1)].field_1792 * stor121) / 100:
            revert with 0, 17
        return (360 * users[address(arg1)].field_1280 / 100) - users[address(arg1)].field_1792, 
               360 * users[address(arg1)].field_1280 / 100,
               (360 * users[address(arg1)].field_1280 / 100) - users[address(arg1)].field_1792 - ((5 * 360 * users[address(arg1)].field_1280 / 100 * stor121) - (5 * users[address(arg1)].field_1792 * stor121) / 100),
               (5 * 360 * users[address(arg1)].field_1280 / 100 * stor121) - (5 * users[address(arg1)].field_1792 * stor121) / 100
    if users[address(arg1)].field_1280 / sub_ea2caab3 < stor121:
        if users[address(arg1)].field_1280 / sub_ea2caab3 > 0x3333333333333333333333333333333333333333333333333333333333333333:
            revert with 0, 17
        if sub_72fcfe41 <= users[address(arg1)].field_1792:
            return 0, sub_72fcfe41, 0, 0
        if stor114 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
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
            if users[address(arg1)].field_1280 and 10^18 * stor114 > -1 / users[address(arg1)].field_1280:
                revert with 0, 17
            if not users[address(arg1)].field_1280:
                revert with 0, 18
            if 10^18 * users[address(arg1)].field_1280 * stor114 / users[address(arg1)].field_1280 != 10^18 * stor114:
                revert with 0, 1
            if users[address(arg1)].field_1536 > block.timestamp:
                if 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 and 0 > -1 / 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600:
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
                if 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 and block.timestamp - users[address(arg1)].field_1536 > -1 / 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600:
                    revert with 0, 17
                if users[address(arg1)].field_1792 > !((block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600)):
                    revert with 0, 17
                if users[address(arg1)].field_1792 + (block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) <= sub_72fcfe41:
                    if (block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) and 5 * users[address(arg1)].field_1280 / sub_ea2caab3 > -1 / (block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600):
                        revert with 0, 17
                    if (5 * block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(arg1)].field_1280 / sub_ea2caab3) - (5 * users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(arg1)].field_1280 / sub_ea2caab3) / 100 > (block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600):
                        return (block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600), 
                               sub_72fcfe41,
                               0,
                               (5 * block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(arg1)].field_1280 / sub_ea2caab3) - (5 * users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(arg1)].field_1280 / sub_ea2caab3) / 100
                    if (block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) < (5 * block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(arg1)].field_1280 / sub_ea2caab3) - (5 * users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(arg1)].field_1280 / sub_ea2caab3) / 100:
                        revert with 0, 17
                    return (block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600), 
                           sub_72fcfe41,
                           (block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(arg1)].field_1280 / sub_ea2caab3) - (5 * users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(arg1)].field_1280 / sub_ea2caab3) / 100),
                           (5 * block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(arg1)].field_1280 / sub_ea2caab3) - (5 * users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(arg1)].field_1280 / sub_ea2caab3) / 100
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
    if stor121 > 0x3333333333333333333333333333333333333333333333333333333333333333:
        revert with 0, 17
    if sub_72fcfe41 <= users[address(arg1)].field_1792:
        return 0, sub_72fcfe41, 0, 0
    if stor114 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
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
            if False and 5 * stor121 > 0:
                revert with 0, 17
            return 0, sub_72fcfe41, 0, 0
    else:
        if users[address(arg1)].field_1280 and 10^18 * stor114 > -1 / users[address(arg1)].field_1280:
            revert with 0, 17
        if not users[address(arg1)].field_1280:
            revert with 0, 18
        if 10^18 * users[address(arg1)].field_1280 * stor114 / users[address(arg1)].field_1280 != 10^18 * stor114:
            revert with 0, 1
        if users[address(arg1)].field_1536 > block.timestamp:
            if 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 and 0 > -1 / 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600:
                revert with 0, 17
            if users[address(arg1)].field_1792 > -1:
                revert with 0, 17
            if users[address(arg1)].field_1792 <= sub_72fcfe41:
                if False and 5 * stor121 > 0:
                    revert with 0, 17
                return 0, sub_72fcfe41, 0, 0
        else:
            if block.timestamp < users[address(arg1)].field_1536:
                revert with 0, 17
            if 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 and block.timestamp - users[address(arg1)].field_1536 > -1 / 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600:
                revert with 0, 17
            if users[address(arg1)].field_1792 > !((block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600)):
                revert with 0, 17
            if users[address(arg1)].field_1792 + (block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) <= sub_72fcfe41:
                if (block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) and 5 * stor121 > -1 / (block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600):
                    revert with 0, 17
                if (5 * block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) - (5 * users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) / 100 > (block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600):
                    return (block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600), 
                           sub_72fcfe41,
                           0,
                           (5 * block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) - (5 * users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) / 100
                if (block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) < (5 * block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) - (5 * users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) / 100:
                    revert with 0, 17
                return (block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600), 
                       sub_72fcfe41,
                       (block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) - (5 * users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) / 100),
                       (5 * block.timestamp * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) - (5 * users[address(arg1)].field_1536 * 10^18 * users[address(arg1)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) / 100
    if users[address(arg1)].field_1792 > sub_72fcfe41:
        if False and 5 * stor121 > 0:
            revert with 0, 17
        return 0, sub_72fcfe41, 0, 0
    if sub_72fcfe41 < users[address(arg1)].field_1792:
        revert with 0, 17
    if sub_72fcfe41 - users[address(arg1)].field_1792 and 5 * stor121 > -1 / sub_72fcfe41 - users[address(arg1)].field_1792:
        revert with 0, 17
    if (5 * sub_72fcfe41 * stor121) - (5 * users[address(arg1)].field_1792 * stor121) / 100 > sub_72fcfe41 - users[address(arg1)].field_1792:
        return sub_72fcfe41 - users[address(arg1)].field_1792, 
               sub_72fcfe41,
               0,
               (5 * sub_72fcfe41 * stor121) - (5 * users[address(arg1)].field_1792 * stor121) / 100
    if sub_72fcfe41 - users[address(arg1)].field_1792 < (5 * sub_72fcfe41 * stor121) - (5 * users[address(arg1)].field_1792 * stor121) / 100:
        revert with 0, 17
    return sub_72fcfe41 - users[address(arg1)].field_1792, 
           sub_72fcfe41,
           sub_72fcfe41 - users[address(arg1)].field_1792 - ((5 * sub_72fcfe41 * stor121) - (5 * users[address(arg1)].field_1792 * stor121) / 100),
           (5 * sub_72fcfe41 * stor121) - (5 * users[address(arg1)].field_1792 * stor121) / 100
}

function claim() {
    if not stor109[msg.sender] != 1:
        revert with 0, 'No Blacklist calls'
    if isPaused:
        revert with 0, 'Swaps currently paused'
    sub_e41e91ef[msg.sender].field_768 = block.timestamp
    emit Checkin(block.timestamp, msg.sender);
    if users[address(msg.sender)].field_1280 > 0xb60b60b60b60b60b60b60b60b60b60b60b60b60b60b60b60b60b60b60b60b6:
        revert with 0, 17
    if not sub_ea2caab3:
        revert with 0, 18
    if 360 * users[address(msg.sender)].field_1280 / 100 < sub_72fcfe41:
        if users[address(msg.sender)].field_1280 / sub_ea2caab3 < stor121:
            if users[address(msg.sender)].field_1280 / sub_ea2caab3 > 0x3333333333333333333333333333333333333333333333333333333333333333:
                revert with 0, 17
            if 360 * users[address(msg.sender)].field_1280 / 100 <= users[address(msg.sender)].field_1792:
                if 360 * users[address(msg.sender)].field_1280 / 100 <= users[address(msg.sender)].field_1792:
                    revert with 0, 'Full payouts'
                revert with 0, 'Zero payout'
            if stor114 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
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
                        call stor105.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, 0
                    else:
                        if (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) and -sub_639a0b26 + 100 > -1 / (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100):
                            revert with 0, 17
                        if not (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100):
                            revert with 0, 18
                        if (100 * 360 * users[address(msg.sender)].field_1280 / 100) - (sub_639a0b26 * 360 * users[address(msg.sender)].field_1280 / 100) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) - (100 * (5 * 360 * users[address(msg.sender)].field_1280 / 100 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) + (sub_639a0b26 * (5 * 360 * users[address(msg.sender)].field_1280 / 100 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) / (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) != -sub_639a0b26 + 100:
                            revert with 0, 1
                        call stor105.0xa9059cbb with:
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
                            call stor105.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, 0
                        else:
                            if (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) and -sub_639a0b26 + 100 > -1 / (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100):
                                revert with 0, 17
                            if not (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100):
                                revert with 0, 18
                            if (100 * 360 * users[address(msg.sender)].field_1280 / 100) - (sub_639a0b26 * 360 * users[address(msg.sender)].field_1280 / 100) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) - (100 * (5 * 360 * users[address(msg.sender)].field_1280 / 100 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) + (sub_639a0b26 * (5 * 360 * users[address(msg.sender)].field_1280 / 100 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) / (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) != -sub_639a0b26 + 100:
                                revert with 0, 1
                            call stor105.0xa9059cbb with:
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
                            call stor105.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, 0
                        else:
                            if (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 and -sub_639a0b26 + 100 > -1 / (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792:
                                revert with 0, 17
                            if not (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792:
                                revert with 0, 18
                            if (100 * 360 * users[address(msg.sender)].field_1280 / 100) - (sub_639a0b26 * 360 * users[address(msg.sender)].field_1280 / 100) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) / (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 != -sub_639a0b26 + 100:
                                revert with 0, 1
                            call stor105.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (100 * 360 * users[address(msg.sender)].field_1280 / 100) - (sub_639a0b26 * 360 * users[address(msg.sender)].field_1280 / 100) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) / 100
            else:
                if users[address(msg.sender)].field_1280 and 10^18 * stor114 > -1 / users[address(msg.sender)].field_1280:
                    revert with 0, 17
                if not users[address(msg.sender)].field_1280:
                    revert with 0, 18
                if 10^18 * users[address(msg.sender)].field_1280 * stor114 / users[address(msg.sender)].field_1280 != 10^18 * stor114:
                    revert with 0, 1
                if users[address(msg.sender)].field_1536 > block.timestamp:
                    if 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 and 0 > -1 / 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600:
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
                            call stor105.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, 0
                        else:
                            if (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) and -sub_639a0b26 + 100 > -1 / (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100):
                                revert with 0, 17
                            if not (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100):
                                revert with 0, 18
                            if (100 * 360 * users[address(msg.sender)].field_1280 / 100) - (sub_639a0b26 * 360 * users[address(msg.sender)].field_1280 / 100) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) - (100 * (5 * 360 * users[address(msg.sender)].field_1280 / 100 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) + (sub_639a0b26 * (5 * 360 * users[address(msg.sender)].field_1280 / 100 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) / (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) != -sub_639a0b26 + 100:
                                revert with 0, 1
                            call stor105.0xa9059cbb with:
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
                                call stor105.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 0
                            else:
                                if (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) and -sub_639a0b26 + 100 > -1 / (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100):
                                    revert with 0, 17
                                if not (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100):
                                    revert with 0, 18
                                if (100 * 360 * users[address(msg.sender)].field_1280 / 100) - (sub_639a0b26 * 360 * users[address(msg.sender)].field_1280 / 100) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) - (100 * (5 * 360 * users[address(msg.sender)].field_1280 / 100 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) + (sub_639a0b26 * (5 * 360 * users[address(msg.sender)].field_1280 / 100 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) / (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) != -sub_639a0b26 + 100:
                                    revert with 0, 1
                                call stor105.0xa9059cbb with:
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
                                call stor105.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 0
                            else:
                                if (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 and -sub_639a0b26 + 100 > -1 / (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792:
                                    revert with 0, 17
                                if not (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792:
                                    revert with 0, 18
                                if (100 * 360 * users[address(msg.sender)].field_1280 / 100) - (sub_639a0b26 * 360 * users[address(msg.sender)].field_1280 / 100) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) / (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 != -sub_639a0b26 + 100:
                                    revert with 0, 1
                                call stor105.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (100 * 360 * users[address(msg.sender)].field_1280 / 100) - (sub_639a0b26 * 360 * users[address(msg.sender)].field_1280 / 100) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) / 100
                else:
                    if block.timestamp < users[address(msg.sender)].field_1536:
                        revert with 0, 17
                    if 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 and block.timestamp - users[address(msg.sender)].field_1536 > -1 / 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600:
                        revert with 0, 17
                    if users[address(msg.sender)].field_1792 > !((block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600)):
                        revert with 0, 17
                    if users[address(msg.sender)].field_1792 + (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) <= 360 * users[address(msg.sender)].field_1280 / 100:
                        if (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) and 5 * users[address(msg.sender)].field_1280 / sub_ea2caab3 > -1 / (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600):
                            revert with 0, 17
                        if (5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100 > (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600):
                            if 360 * users[address(msg.sender)].field_1280 / 100 <= users[address(msg.sender)].field_1792:
                                revert with 0, 'Full payouts'
                            revert with 0, 'Zero payout'
                        if (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) < (5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100:
                            revert with 0, 17
                        if 360 * users[address(msg.sender)].field_1280 / 100 <= users[address(msg.sender)].field_1792:
                            revert with 0, 'Full payouts'
                        if not (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100):
                            if (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) <= 0:
                                revert with 0, 'Zero payout'
                            if total_withdraw > !((block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100)):
                                revert with 0, 17
                            total_withdraw = total_withdraw + (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100)
                            users[address(msg.sender)].field_1536 = block.timestamp
                            emit Withdraw(((block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100)), msg.sender);
                            if 360 * users[address(msg.sender)].field_1280 / 100 <= users[address(msg.sender)].field_1792:
                                emit LimitReached(users[address(msg.sender)].field_1792, msg.sender);
                            if sub_639a0b26 > 100:
                                revert with 0, 1
                            if 100 < sub_639a0b26:
                                revert with 0, 17
                            if not (-1 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) + (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) + ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100):
                                call stor105.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 0
                            else:
                                if (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) and -sub_639a0b26 + 100 > -1 / (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100):
                                    revert with 0, 17
                                if not (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100):
                                    revert with 0, 18
                                if (100 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (sub_639a0b26 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (100 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) + (sub_639a0b26 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (100 * (5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) + (sub_639a0b26 * (5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) / (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) != -sub_639a0b26 + 100:
                                    revert with 0, 1
                                call stor105.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (100 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (sub_639a0b26 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (100 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) + (sub_639a0b26 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (100 * (5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) + (sub_639a0b26 * (5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) / 100
                        else:
                            if users[address(msg.sender)].field_1792 > !((block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100)):
                                revert with 0, 17
                            if users[address(msg.sender)].field_1792 + (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) <= 360 * users[address(msg.sender)].field_1280 / 100:
                                if users[address(msg.sender)].field_1792 > !((block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600)):
                                    revert with 0, 17
                                users[address(msg.sender)].field_1792 = users[address(msg.sender)].field_1792 + (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600)
                                if (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) <= 0:
                                    revert with 0, 'Zero payout'
                                if total_withdraw > !((block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100)):
                                    revert with 0, 17
                                total_withdraw = total_withdraw + (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100)
                                users[address(msg.sender)].field_1536 = block.timestamp
                                emit Withdraw(((block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100)), msg.sender);
                                if 360 * users[address(msg.sender)].field_1280 / 100 <= users[address(msg.sender)].field_1792:
                                    emit LimitReached(users[address(msg.sender)].field_1792, msg.sender);
                                if sub_639a0b26 > 100:
                                    revert with 0, 1
                                if 100 < sub_639a0b26:
                                    revert with 0, 17
                                if not (-1 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) + (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) + ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100):
                                    call stor105.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, 0
                                else:
                                    if (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) and -sub_639a0b26 + 100 > -1 / (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100):
                                        revert with 0, 17
                                    if not (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100):
                                        revert with 0, 18
                                    if (100 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (sub_639a0b26 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (100 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) + (sub_639a0b26 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (100 * (5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) + (sub_639a0b26 * (5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) / (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) != -sub_639a0b26 + 100:
                                        revert with 0, 1
                                    call stor105.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (100 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (sub_639a0b26 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (100 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) + (sub_639a0b26 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (100 * (5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) + (sub_639a0b26 * (5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) / 100
                            else:
                                if users[address(msg.sender)].field_1792 > 360 * users[address(msg.sender)].field_1280 / 100:
                                    if users[address(msg.sender)].field_1792 > !((block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600)):
                                        revert with 0, 17
                                    users[address(msg.sender)].field_1792 = users[address(msg.sender)].field_1792 + (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600)
                                    revert with 0, 'Zero payout'
                                if 360 * users[address(msg.sender)].field_1280 / 100 < users[address(msg.sender)].field_1792:
                                    revert with 0, 17
                                if users[address(msg.sender)].field_1792 > !((block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600)):
                                    revert with 0, 17
                                users[address(msg.sender)].field_1792 = users[address(msg.sender)].field_1792 + (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600)
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
                                    call stor105.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, 0
                                else:
                                    if (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 and -sub_639a0b26 + 100 > -1 / (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792:
                                        revert with 0, 17
                                    if not (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792:
                                        revert with 0, 18
                                    if (100 * 360 * users[address(msg.sender)].field_1280 / 100) - (sub_639a0b26 * 360 * users[address(msg.sender)].field_1280 / 100) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) / (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 != -sub_639a0b26 + 100:
                                        revert with 0, 1
                                    call stor105.0xa9059cbb with:
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
                                call stor105.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 0
                            else:
                                if (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) and -sub_639a0b26 + 100 > -1 / (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100):
                                    revert with 0, 17
                                if not (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100):
                                    revert with 0, 18
                                if (100 * 360 * users[address(msg.sender)].field_1280 / 100) - (sub_639a0b26 * 360 * users[address(msg.sender)].field_1280 / 100) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) - (100 * (5 * 360 * users[address(msg.sender)].field_1280 / 100 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) + (sub_639a0b26 * (5 * 360 * users[address(msg.sender)].field_1280 / 100 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) / (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) != -sub_639a0b26 + 100:
                                    revert with 0, 1
                                call stor105.0xa9059cbb with:
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
                                    call stor105.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, 0
                                else:
                                    if (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) and -sub_639a0b26 + 100 > -1 / (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100):
                                        revert with 0, 17
                                    if not (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100):
                                        revert with 0, 18
                                    if (100 * 360 * users[address(msg.sender)].field_1280 / 100) - (sub_639a0b26 * 360 * users[address(msg.sender)].field_1280 / 100) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) - (100 * (5 * 360 * users[address(msg.sender)].field_1280 / 100 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) + (sub_639a0b26 * (5 * 360 * users[address(msg.sender)].field_1280 / 100 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) / (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) != -sub_639a0b26 + 100:
                                        revert with 0, 1
                                    call stor105.0xa9059cbb with:
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
                                    call stor105.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, 0
                                else:
                                    if (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 and -sub_639a0b26 + 100 > -1 / (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792:
                                        revert with 0, 17
                                    if not (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792:
                                        revert with 0, 18
                                    if (100 * 360 * users[address(msg.sender)].field_1280 / 100) - (sub_639a0b26 * 360 * users[address(msg.sender)].field_1280 / 100) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) / (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 != -sub_639a0b26 + 100:
                                        revert with 0, 1
                                    call stor105.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (100 * 360 * users[address(msg.sender)].field_1280 / 100) - (sub_639a0b26 * 360 * users[address(msg.sender)].field_1280 / 100) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) / 100
        else:
            if stor121 > 0x3333333333333333333333333333333333333333333333333333333333333333:
                revert with 0, 17
            if 360 * users[address(msg.sender)].field_1280 / 100 <= users[address(msg.sender)].field_1792:
                if 360 * users[address(msg.sender)].field_1280 / 100 <= users[address(msg.sender)].field_1792:
                    revert with 0, 'Full payouts'
                revert with 0, 'Zero payout'
            if stor114 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
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
                    if False and 5 * stor121 > 0:
                        revert with 0, 17
                    if 360 * users[address(msg.sender)].field_1280 / 100 <= users[address(msg.sender)].field_1792:
                        revert with 0, 'Full payouts'
                    revert with 0, 'Zero payout'
                if users[address(msg.sender)].field_1792 > 360 * users[address(msg.sender)].field_1280 / 100:
                    if False and 5 * stor121 > 0:
                        revert with 0, 17
                    if 360 * users[address(msg.sender)].field_1280 / 100 <= users[address(msg.sender)].field_1792:
                        revert with 0, 'Full payouts'
                    revert with 0, 'Zero payout'
                if 360 * users[address(msg.sender)].field_1280 / 100 < users[address(msg.sender)].field_1792:
                    revert with 0, 17
                if (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 and 5 * stor121 > -1 / (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792:
                    revert with 0, 17
                if (5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100 > (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792:
                    if 360 * users[address(msg.sender)].field_1280 / 100 <= users[address(msg.sender)].field_1792:
                        revert with 0, 'Full payouts'
                    revert with 0, 'Zero payout'
                if (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 < (5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100:
                    revert with 0, 17
                if 360 * users[address(msg.sender)].field_1280 / 100 <= users[address(msg.sender)].field_1792:
                    revert with 0, 'Full payouts'
                if not (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100):
                    if (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100) <= 0:
                        revert with 0, 'Zero payout'
                    if total_withdraw > !((360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100)):
                        revert with 0, 17
                    total_withdraw = total_withdraw + (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100)
                    users[address(msg.sender)].field_1536 = block.timestamp
                    emit Withdraw(((360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100)), msg.sender);
                    if 360 * users[address(msg.sender)].field_1280 / 100 <= users[address(msg.sender)].field_1792:
                        emit LimitReached(users[address(msg.sender)].field_1792, msg.sender);
                    if sub_639a0b26 > 100:
                        revert with 0, 1
                    if 100 < sub_639a0b26:
                        revert with 0, 17
                    if not -(360 * users[address(msg.sender)].field_1280 / 100) + users[address(msg.sender)].field_1792 + ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100):
                        call stor105.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, 0
                    else:
                        if (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100) and -sub_639a0b26 + 100 > -1 / (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100):
                            revert with 0, 17
                        if not (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100):
                            revert with 0, 18
                        if (100 * 360 * users[address(msg.sender)].field_1280 / 100) - (sub_639a0b26 * 360 * users[address(msg.sender)].field_1280 / 100) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) - (100 * (5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100) + (sub_639a0b26 * (5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100) / (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100) != -sub_639a0b26 + 100:
                            revert with 0, 1
                        call stor105.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (100 * 360 * users[address(msg.sender)].field_1280 / 100) - (sub_639a0b26 * 360 * users[address(msg.sender)].field_1280 / 100) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) - (100 * (5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100) + (sub_639a0b26 * (5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100) / 100
                else:
                    if users[address(msg.sender)].field_1792 > !((360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100)):
                        revert with 0, 17
                    if (360 * users[address(msg.sender)].field_1280 / 100) - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100) <= 360 * users[address(msg.sender)].field_1280 / 100:
                        if users[address(msg.sender)].field_1792 > !((360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792):
                            revert with 0, 17
                        users[address(msg.sender)].field_1792 = 360 * users[address(msg.sender)].field_1280 / 100
                        if (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100) <= 0:
                            revert with 0, 'Zero payout'
                        if total_withdraw > !((360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100)):
                            revert with 0, 17
                        total_withdraw = total_withdraw + (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100)
                        users[address(msg.sender)].field_1536 = block.timestamp
                        emit Withdraw(((360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100)), msg.sender);
                        if 360 * users[address(msg.sender)].field_1280 / 100 <= users[address(msg.sender)].field_1792:
                            emit LimitReached(users[address(msg.sender)].field_1792, msg.sender);
                        if sub_639a0b26 > 100:
                            revert with 0, 1
                        if 100 < sub_639a0b26:
                            revert with 0, 17
                        if not -(360 * users[address(msg.sender)].field_1280 / 100) + users[address(msg.sender)].field_1792 + ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100):
                            call stor105.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, 0
                        else:
                            if (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100) and -sub_639a0b26 + 100 > -1 / (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100):
                                revert with 0, 17
                            if not (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100):
                                revert with 0, 18
                            if (100 * 360 * users[address(msg.sender)].field_1280 / 100) - (sub_639a0b26 * 360 * users[address(msg.sender)].field_1280 / 100) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) - (100 * (5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100) + (sub_639a0b26 * (5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100) / (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100) != -sub_639a0b26 + 100:
                                revert with 0, 1
                            call stor105.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (100 * 360 * users[address(msg.sender)].field_1280 / 100) - (sub_639a0b26 * 360 * users[address(msg.sender)].field_1280 / 100) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) - (100 * (5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100) + (sub_639a0b26 * (5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100) / 100
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
                            call stor105.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, 0
                        else:
                            if (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 and -sub_639a0b26 + 100 > -1 / (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792:
                                revert with 0, 17
                            if not (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792:
                                revert with 0, 18
                            if (100 * 360 * users[address(msg.sender)].field_1280 / 100) - (sub_639a0b26 * 360 * users[address(msg.sender)].field_1280 / 100) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) / (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 != -sub_639a0b26 + 100:
                                revert with 0, 1
                            call stor105.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (100 * 360 * users[address(msg.sender)].field_1280 / 100) - (sub_639a0b26 * 360 * users[address(msg.sender)].field_1280 / 100) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) / 100
            else:
                if users[address(msg.sender)].field_1280 and 10^18 * stor114 > -1 / users[address(msg.sender)].field_1280:
                    revert with 0, 17
                if not users[address(msg.sender)].field_1280:
                    revert with 0, 18
                if 10^18 * users[address(msg.sender)].field_1280 * stor114 / users[address(msg.sender)].field_1280 != 10^18 * stor114:
                    revert with 0, 1
                if users[address(msg.sender)].field_1536 > block.timestamp:
                    if 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 and 0 > -1 / 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600:
                        revert with 0, 17
                    if users[address(msg.sender)].field_1792 > -1:
                        revert with 0, 17
                    if users[address(msg.sender)].field_1792 <= 360 * users[address(msg.sender)].field_1280 / 100:
                        if False and 5 * stor121 > 0:
                            revert with 0, 17
                        if 360 * users[address(msg.sender)].field_1280 / 100 <= users[address(msg.sender)].field_1792:
                            revert with 0, 'Full payouts'
                        revert with 0, 'Zero payout'
                    if users[address(msg.sender)].field_1792 > 360 * users[address(msg.sender)].field_1280 / 100:
                        if False and 5 * stor121 > 0:
                            revert with 0, 17
                        if 360 * users[address(msg.sender)].field_1280 / 100 <= users[address(msg.sender)].field_1792:
                            revert with 0, 'Full payouts'
                        revert with 0, 'Zero payout'
                    if 360 * users[address(msg.sender)].field_1280 / 100 < users[address(msg.sender)].field_1792:
                        revert with 0, 17
                    if (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 and 5 * stor121 > -1 / (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792:
                        revert with 0, 17
                    if (5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100 > (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792:
                        if 360 * users[address(msg.sender)].field_1280 / 100 <= users[address(msg.sender)].field_1792:
                            revert with 0, 'Full payouts'
                        revert with 0, 'Zero payout'
                    if (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 < (5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100:
                        revert with 0, 17
                    if 360 * users[address(msg.sender)].field_1280 / 100 <= users[address(msg.sender)].field_1792:
                        revert with 0, 'Full payouts'
                    if not (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100):
                        if (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100) <= 0:
                            revert with 0, 'Zero payout'
                        if total_withdraw > !((360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100)):
                            revert with 0, 17
                        total_withdraw = total_withdraw + (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100)
                        users[address(msg.sender)].field_1536 = block.timestamp
                        emit Withdraw(((360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100)), msg.sender);
                        if 360 * users[address(msg.sender)].field_1280 / 100 <= users[address(msg.sender)].field_1792:
                            emit LimitReached(users[address(msg.sender)].field_1792, msg.sender);
                        if sub_639a0b26 > 100:
                            revert with 0, 1
                        if 100 < sub_639a0b26:
                            revert with 0, 17
                        if not -(360 * users[address(msg.sender)].field_1280 / 100) + users[address(msg.sender)].field_1792 + ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100):
                            call stor105.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, 0
                        else:
                            if (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100) and -sub_639a0b26 + 100 > -1 / (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100):
                                revert with 0, 17
                            if not (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100):
                                revert with 0, 18
                            if (100 * 360 * users[address(msg.sender)].field_1280 / 100) - (sub_639a0b26 * 360 * users[address(msg.sender)].field_1280 / 100) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) - (100 * (5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100) + (sub_639a0b26 * (5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100) / (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100) != -sub_639a0b26 + 100:
                                revert with 0, 1
                            call stor105.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (100 * 360 * users[address(msg.sender)].field_1280 / 100) - (sub_639a0b26 * 360 * users[address(msg.sender)].field_1280 / 100) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) - (100 * (5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100) + (sub_639a0b26 * (5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100) / 100
                    else:
                        if users[address(msg.sender)].field_1792 > !((360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100)):
                            revert with 0, 17
                        if (360 * users[address(msg.sender)].field_1280 / 100) - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100) <= 360 * users[address(msg.sender)].field_1280 / 100:
                            if users[address(msg.sender)].field_1792 > !((360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792):
                                revert with 0, 17
                            users[address(msg.sender)].field_1792 = 360 * users[address(msg.sender)].field_1280 / 100
                            if (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100) <= 0:
                                revert with 0, 'Zero payout'
                            if total_withdraw > !((360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100)):
                                revert with 0, 17
                            total_withdraw = total_withdraw + (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100)
                            users[address(msg.sender)].field_1536 = block.timestamp
                            emit Withdraw(((360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100)), msg.sender);
                            if 360 * users[address(msg.sender)].field_1280 / 100 <= users[address(msg.sender)].field_1792:
                                emit LimitReached(users[address(msg.sender)].field_1792, msg.sender);
                            if sub_639a0b26 > 100:
                                revert with 0, 1
                            if 100 < sub_639a0b26:
                                revert with 0, 17
                            if not -(360 * users[address(msg.sender)].field_1280 / 100) + users[address(msg.sender)].field_1792 + ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100):
                                call stor105.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 0
                            else:
                                if (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100) and -sub_639a0b26 + 100 > -1 / (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100):
                                    revert with 0, 17
                                if not (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100):
                                    revert with 0, 18
                                if (100 * 360 * users[address(msg.sender)].field_1280 / 100) - (sub_639a0b26 * 360 * users[address(msg.sender)].field_1280 / 100) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) - (100 * (5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100) + (sub_639a0b26 * (5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100) / (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100) != -sub_639a0b26 + 100:
                                    revert with 0, 1
                                call stor105.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (100 * 360 * users[address(msg.sender)].field_1280 / 100) - (sub_639a0b26 * 360 * users[address(msg.sender)].field_1280 / 100) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) - (100 * (5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100) + (sub_639a0b26 * (5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100) / 100
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
                                call stor105.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 0
                            else:
                                if (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 and -sub_639a0b26 + 100 > -1 / (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792:
                                    revert with 0, 17
                                if not (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792:
                                    revert with 0, 18
                                if (100 * 360 * users[address(msg.sender)].field_1280 / 100) - (sub_639a0b26 * 360 * users[address(msg.sender)].field_1280 / 100) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) / (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 != -sub_639a0b26 + 100:
                                    revert with 0, 1
                                call stor105.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (100 * 360 * users[address(msg.sender)].field_1280 / 100) - (sub_639a0b26 * 360 * users[address(msg.sender)].field_1280 / 100) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) / 100
                else:
                    if block.timestamp < users[address(msg.sender)].field_1536:
                        revert with 0, 17
                    if 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 and block.timestamp - users[address(msg.sender)].field_1536 > -1 / 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600:
                        revert with 0, 17
                    if users[address(msg.sender)].field_1792 > !((block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600)):
                        revert with 0, 17
                    if users[address(msg.sender)].field_1792 + (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) <= 360 * users[address(msg.sender)].field_1280 / 100:
                        if (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) and 5 * stor121 > -1 / (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600):
                            revert with 0, 17
                        if (5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) / 100 > (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600):
                            if 360 * users[address(msg.sender)].field_1280 / 100 <= users[address(msg.sender)].field_1792:
                                revert with 0, 'Full payouts'
                            revert with 0, 'Zero payout'
                        if (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) < (5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) / 100:
                            revert with 0, 17
                        if 360 * users[address(msg.sender)].field_1280 / 100 <= users[address(msg.sender)].field_1792:
                            revert with 0, 'Full payouts'
                        if not (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) / 100):
                            if (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) / 100) <= 0:
                                revert with 0, 'Zero payout'
                            if total_withdraw > !((block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) / 100)):
                                revert with 0, 17
                            total_withdraw = total_withdraw + (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) / 100)
                            users[address(msg.sender)].field_1536 = block.timestamp
                            emit Withdraw(((block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) / 100)), msg.sender);
                            if 360 * users[address(msg.sender)].field_1280 / 100 <= users[address(msg.sender)].field_1792:
                                emit LimitReached(users[address(msg.sender)].field_1792, msg.sender);
                            if sub_639a0b26 > 100:
                                revert with 0, 1
                            if 100 < sub_639a0b26:
                                revert with 0, 17
                            if not (-1 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) + (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) + ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) / 100):
                                call stor105.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 0
                            else:
                                if (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) / 100) and -sub_639a0b26 + 100 > -1 / (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) / 100):
                                    revert with 0, 17
                                if not (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) / 100):
                                    revert with 0, 18
                                if (100 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (sub_639a0b26 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (100 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) + (sub_639a0b26 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (100 * (5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) / 100) + (sub_639a0b26 * (5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) / 100) / (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) / 100) != -sub_639a0b26 + 100:
                                    revert with 0, 1
                                call stor105.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (100 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (sub_639a0b26 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (100 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) + (sub_639a0b26 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (100 * (5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) / 100) + (sub_639a0b26 * (5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) / 100) / 100
                        else:
                            if users[address(msg.sender)].field_1792 > !((block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) / 100)):
                                revert with 0, 17
                            if users[address(msg.sender)].field_1792 + (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) / 100) <= 360 * users[address(msg.sender)].field_1280 / 100:
                                if users[address(msg.sender)].field_1792 > !((block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600)):
                                    revert with 0, 17
                                users[address(msg.sender)].field_1792 = users[address(msg.sender)].field_1792 + (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600)
                                if (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) / 100) <= 0:
                                    revert with 0, 'Zero payout'
                                if total_withdraw > !((block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) / 100)):
                                    revert with 0, 17
                                total_withdraw = total_withdraw + (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) / 100)
                                users[address(msg.sender)].field_1536 = block.timestamp
                                emit Withdraw(((block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) / 100)), msg.sender);
                                if 360 * users[address(msg.sender)].field_1280 / 100 <= users[address(msg.sender)].field_1792:
                                    emit LimitReached(users[address(msg.sender)].field_1792, msg.sender);
                                if sub_639a0b26 > 100:
                                    revert with 0, 1
                                if 100 < sub_639a0b26:
                                    revert with 0, 17
                                if not (-1 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) + (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) + ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) / 100):
                                    call stor105.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, 0
                                else:
                                    if (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) / 100) and -sub_639a0b26 + 100 > -1 / (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) / 100):
                                        revert with 0, 17
                                    if not (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) / 100):
                                        revert with 0, 18
                                    if (100 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (sub_639a0b26 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (100 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) + (sub_639a0b26 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (100 * (5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) / 100) + (sub_639a0b26 * (5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) / 100) / (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) / 100) != -sub_639a0b26 + 100:
                                        revert with 0, 1
                                    call stor105.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (100 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (sub_639a0b26 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (100 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) + (sub_639a0b26 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (100 * (5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) / 100) + (sub_639a0b26 * (5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) / 100) / 100
                            else:
                                if users[address(msg.sender)].field_1792 > 360 * users[address(msg.sender)].field_1280 / 100:
                                    if users[address(msg.sender)].field_1792 > !((block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600)):
                                        revert with 0, 17
                                    users[address(msg.sender)].field_1792 = users[address(msg.sender)].field_1792 + (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600)
                                    revert with 0, 'Zero payout'
                                if 360 * users[address(msg.sender)].field_1280 / 100 < users[address(msg.sender)].field_1792:
                                    revert with 0, 17
                                if users[address(msg.sender)].field_1792 > !((block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600)):
                                    revert with 0, 17
                                users[address(msg.sender)].field_1792 = users[address(msg.sender)].field_1792 + (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600)
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
                                    call stor105.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, 0
                                else:
                                    if (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 and -sub_639a0b26 + 100 > -1 / (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792:
                                        revert with 0, 17
                                    if not (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792:
                                        revert with 0, 18
                                    if (100 * 360 * users[address(msg.sender)].field_1280 / 100) - (sub_639a0b26 * 360 * users[address(msg.sender)].field_1280 / 100) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) / (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 != -sub_639a0b26 + 100:
                                        revert with 0, 1
                                    call stor105.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (100 * 360 * users[address(msg.sender)].field_1280 / 100) - (sub_639a0b26 * 360 * users[address(msg.sender)].field_1280 / 100) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) / 100
                    else:
                        if users[address(msg.sender)].field_1792 > 360 * users[address(msg.sender)].field_1280 / 100:
                            if False and 5 * stor121 > 0:
                                revert with 0, 17
                            if 360 * users[address(msg.sender)].field_1280 / 100 <= users[address(msg.sender)].field_1792:
                                revert with 0, 'Full payouts'
                            revert with 0, 'Zero payout'
                        if 360 * users[address(msg.sender)].field_1280 / 100 < users[address(msg.sender)].field_1792:
                            revert with 0, 17
                        if (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 and 5 * stor121 > -1 / (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792:
                            revert with 0, 17
                        if (5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100 > (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792:
                            if 360 * users[address(msg.sender)].field_1280 / 100 <= users[address(msg.sender)].field_1792:
                                revert with 0, 'Full payouts'
                            revert with 0, 'Zero payout'
                        if (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 < (5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100:
                            revert with 0, 17
                        if 360 * users[address(msg.sender)].field_1280 / 100 <= users[address(msg.sender)].field_1792:
                            revert with 0, 'Full payouts'
                        if not (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100):
                            if (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100) <= 0:
                                revert with 0, 'Zero payout'
                            if total_withdraw > !((360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100)):
                                revert with 0, 17
                            total_withdraw = total_withdraw + (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100)
                            users[address(msg.sender)].field_1536 = block.timestamp
                            emit Withdraw(((360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100)), msg.sender);
                            if 360 * users[address(msg.sender)].field_1280 / 100 <= users[address(msg.sender)].field_1792:
                                emit LimitReached(users[address(msg.sender)].field_1792, msg.sender);
                            if sub_639a0b26 > 100:
                                revert with 0, 1
                            if 100 < sub_639a0b26:
                                revert with 0, 17
                            if not -(360 * users[address(msg.sender)].field_1280 / 100) + users[address(msg.sender)].field_1792 + ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100):
                                call stor105.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 0
                            else:
                                if (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100) and -sub_639a0b26 + 100 > -1 / (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100):
                                    revert with 0, 17
                                if not (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100):
                                    revert with 0, 18
                                if (100 * 360 * users[address(msg.sender)].field_1280 / 100) - (sub_639a0b26 * 360 * users[address(msg.sender)].field_1280 / 100) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) - (100 * (5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100) + (sub_639a0b26 * (5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100) / (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100) != -sub_639a0b26 + 100:
                                    revert with 0, 1
                                call stor105.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (100 * 360 * users[address(msg.sender)].field_1280 / 100) - (sub_639a0b26 * 360 * users[address(msg.sender)].field_1280 / 100) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) - (100 * (5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100) + (sub_639a0b26 * (5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100) / 100
                        else:
                            if users[address(msg.sender)].field_1792 > !((360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100)):
                                revert with 0, 17
                            if (360 * users[address(msg.sender)].field_1280 / 100) - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100) <= 360 * users[address(msg.sender)].field_1280 / 100:
                                if users[address(msg.sender)].field_1792 > !((360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792):
                                    revert with 0, 17
                                users[address(msg.sender)].field_1792 = 360 * users[address(msg.sender)].field_1280 / 100
                                if (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100) <= 0:
                                    revert with 0, 'Zero payout'
                                if total_withdraw > !((360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100)):
                                    revert with 0, 17
                                total_withdraw = total_withdraw + (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100)
                                users[address(msg.sender)].field_1536 = block.timestamp
                                emit Withdraw(((360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100)), msg.sender);
                                if 360 * users[address(msg.sender)].field_1280 / 100 <= users[address(msg.sender)].field_1792:
                                    emit LimitReached(users[address(msg.sender)].field_1792, msg.sender);
                                if sub_639a0b26 > 100:
                                    revert with 0, 1
                                if 100 < sub_639a0b26:
                                    revert with 0, 17
                                if not -(360 * users[address(msg.sender)].field_1280 / 100) + users[address(msg.sender)].field_1792 + ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100):
                                    call stor105.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, 0
                                else:
                                    if (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100) and -sub_639a0b26 + 100 > -1 / (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100):
                                        revert with 0, 17
                                    if not (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100):
                                        revert with 0, 18
                                    if (100 * 360 * users[address(msg.sender)].field_1280 / 100) - (sub_639a0b26 * 360 * users[address(msg.sender)].field_1280 / 100) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) - (100 * (5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100) + (sub_639a0b26 * (5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100) / (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 - ((5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100) != -sub_639a0b26 + 100:
                                        revert with 0, 1
                                    call stor105.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (100 * 360 * users[address(msg.sender)].field_1280 / 100) - (sub_639a0b26 * 360 * users[address(msg.sender)].field_1280 / 100) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) - (100 * (5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100) + (sub_639a0b26 * (5 * 360 * users[address(msg.sender)].field_1280 / 100 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100) / 100
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
                                    call stor105.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, 0
                                else:
                                    if (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 and -sub_639a0b26 + 100 > -1 / (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792:
                                        revert with 0, 17
                                    if not (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792:
                                        revert with 0, 18
                                    if (100 * 360 * users[address(msg.sender)].field_1280 / 100) - (sub_639a0b26 * 360 * users[address(msg.sender)].field_1280 / 100) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) / (360 * users[address(msg.sender)].field_1280 / 100) - users[address(msg.sender)].field_1792 != -sub_639a0b26 + 100:
                                        revert with 0, 1
                                    call stor105.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (100 * 360 * users[address(msg.sender)].field_1280 / 100) - (sub_639a0b26 * 360 * users[address(msg.sender)].field_1280 / 100) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) / 100
    else:
        if users[address(msg.sender)].field_1280 / sub_ea2caab3 < stor121:
            if users[address(msg.sender)].field_1280 / sub_ea2caab3 > 0x3333333333333333333333333333333333333333333333333333333333333333:
                revert with 0, 17
            if sub_72fcfe41 <= users[address(msg.sender)].field_1792:
                if sub_72fcfe41 <= users[address(msg.sender)].field_1792:
                    revert with 0, 'Full payouts'
                revert with 0, 'Zero payout'
            if stor114 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
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
                        call stor105.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, 0
                    else:
                        if sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) and -sub_639a0b26 + 100 > -1 / sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100):
                            revert with 0, 17
                        if not sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100):
                            revert with 0, 18
                        if (100 * sub_72fcfe41) - (sub_639a0b26 * sub_72fcfe41) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) - (100 * (5 * sub_72fcfe41 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) + (sub_639a0b26 * (5 * sub_72fcfe41 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) / sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) != -sub_639a0b26 + 100:
                            revert with 0, 1
                        call stor105.0xa9059cbb with:
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
                            call stor105.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, 0
                        else:
                            if sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) and -sub_639a0b26 + 100 > -1 / sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100):
                                revert with 0, 17
                            if not sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100):
                                revert with 0, 18
                            if (100 * sub_72fcfe41) - (sub_639a0b26 * sub_72fcfe41) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) - (100 * (5 * sub_72fcfe41 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) + (sub_639a0b26 * (5 * sub_72fcfe41 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) / sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) != -sub_639a0b26 + 100:
                                revert with 0, 1
                            call stor105.0xa9059cbb with:
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
                            call stor105.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, 0
                        else:
                            if sub_72fcfe41 - users[address(msg.sender)].field_1792 and -sub_639a0b26 + 100 > -1 / sub_72fcfe41 - users[address(msg.sender)].field_1792:
                                revert with 0, 17
                            if not sub_72fcfe41 - users[address(msg.sender)].field_1792:
                                revert with 0, 18
                            if (100 * sub_72fcfe41) - (sub_639a0b26 * sub_72fcfe41) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) / sub_72fcfe41 - users[address(msg.sender)].field_1792 != -sub_639a0b26 + 100:
                                revert with 0, 1
                            call stor105.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (100 * sub_72fcfe41) - (sub_639a0b26 * sub_72fcfe41) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) / 100
            else:
                if users[address(msg.sender)].field_1280 and 10^18 * stor114 > -1 / users[address(msg.sender)].field_1280:
                    revert with 0, 17
                if not users[address(msg.sender)].field_1280:
                    revert with 0, 18
                if 10^18 * users[address(msg.sender)].field_1280 * stor114 / users[address(msg.sender)].field_1280 != 10^18 * stor114:
                    revert with 0, 1
                if users[address(msg.sender)].field_1536 > block.timestamp:
                    if 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 and 0 > -1 / 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600:
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
                            call stor105.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, 0
                        else:
                            if sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) and -sub_639a0b26 + 100 > -1 / sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100):
                                revert with 0, 17
                            if not sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100):
                                revert with 0, 18
                            if (100 * sub_72fcfe41) - (sub_639a0b26 * sub_72fcfe41) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) - (100 * (5 * sub_72fcfe41 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) + (sub_639a0b26 * (5 * sub_72fcfe41 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) / sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) != -sub_639a0b26 + 100:
                                revert with 0, 1
                            call stor105.0xa9059cbb with:
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
                                call stor105.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 0
                            else:
                                if sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) and -sub_639a0b26 + 100 > -1 / sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100):
                                    revert with 0, 17
                                if not sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100):
                                    revert with 0, 18
                                if (100 * sub_72fcfe41) - (sub_639a0b26 * sub_72fcfe41) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) - (100 * (5 * sub_72fcfe41 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) + (sub_639a0b26 * (5 * sub_72fcfe41 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) / sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) != -sub_639a0b26 + 100:
                                    revert with 0, 1
                                call stor105.0xa9059cbb with:
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
                                call stor105.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 0
                            else:
                                if sub_72fcfe41 - users[address(msg.sender)].field_1792 and -sub_639a0b26 + 100 > -1 / sub_72fcfe41 - users[address(msg.sender)].field_1792:
                                    revert with 0, 17
                                if not sub_72fcfe41 - users[address(msg.sender)].field_1792:
                                    revert with 0, 18
                                if (100 * sub_72fcfe41) - (sub_639a0b26 * sub_72fcfe41) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) / sub_72fcfe41 - users[address(msg.sender)].field_1792 != -sub_639a0b26 + 100:
                                    revert with 0, 1
                                call stor105.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (100 * sub_72fcfe41) - (sub_639a0b26 * sub_72fcfe41) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) / 100
                else:
                    if block.timestamp < users[address(msg.sender)].field_1536:
                        revert with 0, 17
                    if 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 and block.timestamp - users[address(msg.sender)].field_1536 > -1 / 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600:
                        revert with 0, 17
                    if users[address(msg.sender)].field_1792 > !((block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600)):
                        revert with 0, 17
                    if users[address(msg.sender)].field_1792 + (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) <= sub_72fcfe41:
                        if (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) and 5 * users[address(msg.sender)].field_1280 / sub_ea2caab3 > -1 / (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600):
                            revert with 0, 17
                        if (5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100 > (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600):
                            if sub_72fcfe41 <= users[address(msg.sender)].field_1792:
                                revert with 0, 'Full payouts'
                            revert with 0, 'Zero payout'
                        if (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) < (5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100:
                            revert with 0, 17
                        if sub_72fcfe41 <= users[address(msg.sender)].field_1792:
                            revert with 0, 'Full payouts'
                        if not (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100):
                            if (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) <= 0:
                                revert with 0, 'Zero payout'
                            if total_withdraw > !((block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100)):
                                revert with 0, 17
                            total_withdraw = total_withdraw + (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100)
                            users[address(msg.sender)].field_1536 = block.timestamp
                            emit Withdraw(((block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100)), msg.sender);
                            if sub_72fcfe41 <= users[address(msg.sender)].field_1792:
                                emit LimitReached(users[address(msg.sender)].field_1792, msg.sender);
                            if sub_639a0b26 > 100:
                                revert with 0, 1
                            if 100 < sub_639a0b26:
                                revert with 0, 17
                            if not (-1 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) + (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) + ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100):
                                call stor105.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 0
                            else:
                                if (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) and -sub_639a0b26 + 100 > -1 / (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100):
                                    revert with 0, 17
                                if not (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100):
                                    revert with 0, 18
                                if (100 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (sub_639a0b26 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (100 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) + (sub_639a0b26 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (100 * (5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) + (sub_639a0b26 * (5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) / (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) != -sub_639a0b26 + 100:
                                    revert with 0, 1
                                call stor105.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (100 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (sub_639a0b26 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (100 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) + (sub_639a0b26 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (100 * (5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) + (sub_639a0b26 * (5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) / 100
                        else:
                            if users[address(msg.sender)].field_1792 > !((block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100)):
                                revert with 0, 17
                            if users[address(msg.sender)].field_1792 + (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) <= sub_72fcfe41:
                                if users[address(msg.sender)].field_1792 > !((block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600)):
                                    revert with 0, 17
                                users[address(msg.sender)].field_1792 = users[address(msg.sender)].field_1792 + (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600)
                                if (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) <= 0:
                                    revert with 0, 'Zero payout'
                                if total_withdraw > !((block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100)):
                                    revert with 0, 17
                                total_withdraw = total_withdraw + (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100)
                                users[address(msg.sender)].field_1536 = block.timestamp
                                emit Withdraw(((block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100)), msg.sender);
                                if sub_72fcfe41 <= users[address(msg.sender)].field_1792:
                                    emit LimitReached(users[address(msg.sender)].field_1792, msg.sender);
                                if sub_639a0b26 > 100:
                                    revert with 0, 1
                                if 100 < sub_639a0b26:
                                    revert with 0, 17
                                if not (-1 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) + (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) + ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100):
                                    call stor105.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, 0
                                else:
                                    if (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) and -sub_639a0b26 + 100 > -1 / (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100):
                                        revert with 0, 17
                                    if not (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100):
                                        revert with 0, 18
                                    if (100 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (sub_639a0b26 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (100 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) + (sub_639a0b26 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (100 * (5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) + (sub_639a0b26 * (5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) / (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) != -sub_639a0b26 + 100:
                                        revert with 0, 1
                                    call stor105.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (100 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (sub_639a0b26 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (100 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) + (sub_639a0b26 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (100 * (5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) + (sub_639a0b26 * (5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) / 100
                            else:
                                if users[address(msg.sender)].field_1792 > sub_72fcfe41:
                                    if users[address(msg.sender)].field_1792 > !((block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600)):
                                        revert with 0, 17
                                    users[address(msg.sender)].field_1792 = users[address(msg.sender)].field_1792 + (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600)
                                    revert with 0, 'Zero payout'
                                if sub_72fcfe41 < users[address(msg.sender)].field_1792:
                                    revert with 0, 17
                                if users[address(msg.sender)].field_1792 > !((block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600)):
                                    revert with 0, 17
                                users[address(msg.sender)].field_1792 = users[address(msg.sender)].field_1792 + (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600)
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
                                    call stor105.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, 0
                                else:
                                    if sub_72fcfe41 - users[address(msg.sender)].field_1792 and -sub_639a0b26 + 100 > -1 / sub_72fcfe41 - users[address(msg.sender)].field_1792:
                                        revert with 0, 17
                                    if not sub_72fcfe41 - users[address(msg.sender)].field_1792:
                                        revert with 0, 18
                                    if (100 * sub_72fcfe41) - (sub_639a0b26 * sub_72fcfe41) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) / sub_72fcfe41 - users[address(msg.sender)].field_1792 != -sub_639a0b26 + 100:
                                        revert with 0, 1
                                    call stor105.0xa9059cbb with:
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
                                call stor105.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 0
                            else:
                                if sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) and -sub_639a0b26 + 100 > -1 / sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100):
                                    revert with 0, 17
                                if not sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100):
                                    revert with 0, 18
                                if (100 * sub_72fcfe41) - (sub_639a0b26 * sub_72fcfe41) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) - (100 * (5 * sub_72fcfe41 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) + (sub_639a0b26 * (5 * sub_72fcfe41 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) / sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) != -sub_639a0b26 + 100:
                                    revert with 0, 1
                                call stor105.0xa9059cbb with:
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
                                    call stor105.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, 0
                                else:
                                    if sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) and -sub_639a0b26 + 100 > -1 / sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100):
                                        revert with 0, 17
                                    if not sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100):
                                        revert with 0, 18
                                    if (100 * sub_72fcfe41) - (sub_639a0b26 * sub_72fcfe41) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) - (100 * (5 * sub_72fcfe41 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) + (sub_639a0b26 * (5 * sub_72fcfe41 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) / sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * users[address(msg.sender)].field_1280 / sub_ea2caab3) - (5 * users[address(msg.sender)].field_1792 * users[address(msg.sender)].field_1280 / sub_ea2caab3) / 100) != -sub_639a0b26 + 100:
                                        revert with 0, 1
                                    call stor105.0xa9059cbb with:
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
                                    call stor105.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, 0
                                else:
                                    if sub_72fcfe41 - users[address(msg.sender)].field_1792 and -sub_639a0b26 + 100 > -1 / sub_72fcfe41 - users[address(msg.sender)].field_1792:
                                        revert with 0, 17
                                    if not sub_72fcfe41 - users[address(msg.sender)].field_1792:
                                        revert with 0, 18
                                    if (100 * sub_72fcfe41) - (sub_639a0b26 * sub_72fcfe41) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) / sub_72fcfe41 - users[address(msg.sender)].field_1792 != -sub_639a0b26 + 100:
                                        revert with 0, 1
                                    call stor105.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (100 * sub_72fcfe41) - (sub_639a0b26 * sub_72fcfe41) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) / 100
        else:
            if stor121 > 0x3333333333333333333333333333333333333333333333333333333333333333:
                revert with 0, 17
            if sub_72fcfe41 <= users[address(msg.sender)].field_1792:
                if sub_72fcfe41 <= users[address(msg.sender)].field_1792:
                    revert with 0, 'Full payouts'
                revert with 0, 'Zero payout'
            if stor114 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
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
                    if False and 5 * stor121 > 0:
                        revert with 0, 17
                    if sub_72fcfe41 <= users[address(msg.sender)].field_1792:
                        revert with 0, 'Full payouts'
                    revert with 0, 'Zero payout'
                if users[address(msg.sender)].field_1792 > sub_72fcfe41:
                    if False and 5 * stor121 > 0:
                        revert with 0, 17
                    if sub_72fcfe41 <= users[address(msg.sender)].field_1792:
                        revert with 0, 'Full payouts'
                    revert with 0, 'Zero payout'
                if sub_72fcfe41 < users[address(msg.sender)].field_1792:
                    revert with 0, 17
                if sub_72fcfe41 - users[address(msg.sender)].field_1792 and 5 * stor121 > -1 / sub_72fcfe41 - users[address(msg.sender)].field_1792:
                    revert with 0, 17
                if (5 * sub_72fcfe41 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100 > sub_72fcfe41 - users[address(msg.sender)].field_1792:
                    if sub_72fcfe41 <= users[address(msg.sender)].field_1792:
                        revert with 0, 'Full payouts'
                    revert with 0, 'Zero payout'
                if sub_72fcfe41 - users[address(msg.sender)].field_1792 < (5 * sub_72fcfe41 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100:
                    revert with 0, 17
                if sub_72fcfe41 <= users[address(msg.sender)].field_1792:
                    revert with 0, 'Full payouts'
                if not sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100):
                    if sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100) <= 0:
                        revert with 0, 'Zero payout'
                    if total_withdraw > !(sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100)):
                        revert with 0, 17
                    total_withdraw = total_withdraw + sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100)
                    users[address(msg.sender)].field_1536 = block.timestamp
                    emit Withdraw((sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100)), msg.sender);
                    if sub_72fcfe41 <= users[address(msg.sender)].field_1792:
                        emit LimitReached(users[address(msg.sender)].field_1792, msg.sender);
                    if sub_639a0b26 > 100:
                        revert with 0, 1
                    if 100 < sub_639a0b26:
                        revert with 0, 17
                    if not -sub_72fcfe41 + users[address(msg.sender)].field_1792 + ((5 * sub_72fcfe41 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100):
                        call stor105.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, 0
                    else:
                        if sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100) and -sub_639a0b26 + 100 > -1 / sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100):
                            revert with 0, 17
                        if not sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100):
                            revert with 0, 18
                        if (100 * sub_72fcfe41) - (sub_639a0b26 * sub_72fcfe41) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) - (100 * (5 * sub_72fcfe41 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100) + (sub_639a0b26 * (5 * sub_72fcfe41 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100) / sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100) != -sub_639a0b26 + 100:
                            revert with 0, 1
                        call stor105.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (100 * sub_72fcfe41) - (sub_639a0b26 * sub_72fcfe41) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) - (100 * (5 * sub_72fcfe41 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100) + (sub_639a0b26 * (5 * sub_72fcfe41 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100) / 100
                else:
                    if users[address(msg.sender)].field_1792 > !(sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100)):
                        revert with 0, 17
                    if sub_72fcfe41 - ((5 * sub_72fcfe41 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100) <= sub_72fcfe41:
                        if users[address(msg.sender)].field_1792 > !(sub_72fcfe41 - users[address(msg.sender)].field_1792):
                            revert with 0, 17
                        users[address(msg.sender)].field_1792 = sub_72fcfe41
                        if sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100) <= 0:
                            revert with 0, 'Zero payout'
                        if total_withdraw > !(sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100)):
                            revert with 0, 17
                        total_withdraw = total_withdraw + sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100)
                        users[address(msg.sender)].field_1536 = block.timestamp
                        emit Withdraw((sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100)), msg.sender);
                        if sub_72fcfe41 <= users[address(msg.sender)].field_1792:
                            emit LimitReached(users[address(msg.sender)].field_1792, msg.sender);
                        if sub_639a0b26 > 100:
                            revert with 0, 1
                        if 100 < sub_639a0b26:
                            revert with 0, 17
                        if not -sub_72fcfe41 + users[address(msg.sender)].field_1792 + ((5 * sub_72fcfe41 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100):
                            call stor105.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, 0
                        else:
                            if sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100) and -sub_639a0b26 + 100 > -1 / sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100):
                                revert with 0, 17
                            if not sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100):
                                revert with 0, 18
                            if (100 * sub_72fcfe41) - (sub_639a0b26 * sub_72fcfe41) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) - (100 * (5 * sub_72fcfe41 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100) + (sub_639a0b26 * (5 * sub_72fcfe41 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100) / sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100) != -sub_639a0b26 + 100:
                                revert with 0, 1
                            call stor105.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (100 * sub_72fcfe41) - (sub_639a0b26 * sub_72fcfe41) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) - (100 * (5 * sub_72fcfe41 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100) + (sub_639a0b26 * (5 * sub_72fcfe41 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100) / 100
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
                            call stor105.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, 0
                        else:
                            if sub_72fcfe41 - users[address(msg.sender)].field_1792 and -sub_639a0b26 + 100 > -1 / sub_72fcfe41 - users[address(msg.sender)].field_1792:
                                revert with 0, 17
                            if not sub_72fcfe41 - users[address(msg.sender)].field_1792:
                                revert with 0, 18
                            if (100 * sub_72fcfe41) - (sub_639a0b26 * sub_72fcfe41) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) / sub_72fcfe41 - users[address(msg.sender)].field_1792 != -sub_639a0b26 + 100:
                                revert with 0, 1
                            call stor105.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (100 * sub_72fcfe41) - (sub_639a0b26 * sub_72fcfe41) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) / 100
            else:
                if users[address(msg.sender)].field_1280 and 10^18 * stor114 > -1 / users[address(msg.sender)].field_1280:
                    revert with 0, 17
                if not users[address(msg.sender)].field_1280:
                    revert with 0, 18
                if 10^18 * users[address(msg.sender)].field_1280 * stor114 / users[address(msg.sender)].field_1280 != 10^18 * stor114:
                    revert with 0, 1
                if users[address(msg.sender)].field_1536 > block.timestamp:
                    if 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 and 0 > -1 / 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600:
                        revert with 0, 17
                    if users[address(msg.sender)].field_1792 > -1:
                        revert with 0, 17
                    if users[address(msg.sender)].field_1792 <= sub_72fcfe41:
                        if False and 5 * stor121 > 0:
                            revert with 0, 17
                        if sub_72fcfe41 <= users[address(msg.sender)].field_1792:
                            revert with 0, 'Full payouts'
                        revert with 0, 'Zero payout'
                    if users[address(msg.sender)].field_1792 > sub_72fcfe41:
                        if False and 5 * stor121 > 0:
                            revert with 0, 17
                        if sub_72fcfe41 <= users[address(msg.sender)].field_1792:
                            revert with 0, 'Full payouts'
                        revert with 0, 'Zero payout'
                    if sub_72fcfe41 < users[address(msg.sender)].field_1792:
                        revert with 0, 17
                    if sub_72fcfe41 - users[address(msg.sender)].field_1792 and 5 * stor121 > -1 / sub_72fcfe41 - users[address(msg.sender)].field_1792:
                        revert with 0, 17
                    if (5 * sub_72fcfe41 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100 > sub_72fcfe41 - users[address(msg.sender)].field_1792:
                        if sub_72fcfe41 <= users[address(msg.sender)].field_1792:
                            revert with 0, 'Full payouts'
                        revert with 0, 'Zero payout'
                    if sub_72fcfe41 - users[address(msg.sender)].field_1792 < (5 * sub_72fcfe41 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100:
                        revert with 0, 17
                    if sub_72fcfe41 <= users[address(msg.sender)].field_1792:
                        revert with 0, 'Full payouts'
                    if not sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100):
                        if sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100) <= 0:
                            revert with 0, 'Zero payout'
                        if total_withdraw > !(sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100)):
                            revert with 0, 17
                        total_withdraw = total_withdraw + sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100)
                        users[address(msg.sender)].field_1536 = block.timestamp
                        emit Withdraw((sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100)), msg.sender);
                        if sub_72fcfe41 <= users[address(msg.sender)].field_1792:
                            emit LimitReached(users[address(msg.sender)].field_1792, msg.sender);
                        if sub_639a0b26 > 100:
                            revert with 0, 1
                        if 100 < sub_639a0b26:
                            revert with 0, 17
                        if not -sub_72fcfe41 + users[address(msg.sender)].field_1792 + ((5 * sub_72fcfe41 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100):
                            call stor105.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, 0
                        else:
                            if sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100) and -sub_639a0b26 + 100 > -1 / sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100):
                                revert with 0, 17
                            if not sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100):
                                revert with 0, 18
                            if (100 * sub_72fcfe41) - (sub_639a0b26 * sub_72fcfe41) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) - (100 * (5 * sub_72fcfe41 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100) + (sub_639a0b26 * (5 * sub_72fcfe41 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100) / sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100) != -sub_639a0b26 + 100:
                                revert with 0, 1
                            call stor105.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (100 * sub_72fcfe41) - (sub_639a0b26 * sub_72fcfe41) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) - (100 * (5 * sub_72fcfe41 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100) + (sub_639a0b26 * (5 * sub_72fcfe41 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100) / 100
                    else:
                        if users[address(msg.sender)].field_1792 > !(sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100)):
                            revert with 0, 17
                        if sub_72fcfe41 - ((5 * sub_72fcfe41 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100) <= sub_72fcfe41:
                            if users[address(msg.sender)].field_1792 > !(sub_72fcfe41 - users[address(msg.sender)].field_1792):
                                revert with 0, 17
                            users[address(msg.sender)].field_1792 = sub_72fcfe41
                            if sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100) <= 0:
                                revert with 0, 'Zero payout'
                            if total_withdraw > !(sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100)):
                                revert with 0, 17
                            total_withdraw = total_withdraw + sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100)
                            users[address(msg.sender)].field_1536 = block.timestamp
                            emit Withdraw((sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100)), msg.sender);
                            if sub_72fcfe41 <= users[address(msg.sender)].field_1792:
                                emit LimitReached(users[address(msg.sender)].field_1792, msg.sender);
                            if sub_639a0b26 > 100:
                                revert with 0, 1
                            if 100 < sub_639a0b26:
                                revert with 0, 17
                            if not -sub_72fcfe41 + users[address(msg.sender)].field_1792 + ((5 * sub_72fcfe41 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100):
                                call stor105.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 0
                            else:
                                if sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100) and -sub_639a0b26 + 100 > -1 / sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100):
                                    revert with 0, 17
                                if not sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100):
                                    revert with 0, 18
                                if (100 * sub_72fcfe41) - (sub_639a0b26 * sub_72fcfe41) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) - (100 * (5 * sub_72fcfe41 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100) + (sub_639a0b26 * (5 * sub_72fcfe41 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100) / sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100) != -sub_639a0b26 + 100:
                                    revert with 0, 1
                                call stor105.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (100 * sub_72fcfe41) - (sub_639a0b26 * sub_72fcfe41) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) - (100 * (5 * sub_72fcfe41 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100) + (sub_639a0b26 * (5 * sub_72fcfe41 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100) / 100
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
                                call stor105.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 0
                            else:
                                if sub_72fcfe41 - users[address(msg.sender)].field_1792 and -sub_639a0b26 + 100 > -1 / sub_72fcfe41 - users[address(msg.sender)].field_1792:
                                    revert with 0, 17
                                if not sub_72fcfe41 - users[address(msg.sender)].field_1792:
                                    revert with 0, 18
                                if (100 * sub_72fcfe41) - (sub_639a0b26 * sub_72fcfe41) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) / sub_72fcfe41 - users[address(msg.sender)].field_1792 != -sub_639a0b26 + 100:
                                    revert with 0, 1
                                call stor105.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (100 * sub_72fcfe41) - (sub_639a0b26 * sub_72fcfe41) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) / 100
                else:
                    if block.timestamp < users[address(msg.sender)].field_1536:
                        revert with 0, 17
                    if 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 and block.timestamp - users[address(msg.sender)].field_1536 > -1 / 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600:
                        revert with 0, 17
                    if users[address(msg.sender)].field_1792 > !((block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600)):
                        revert with 0, 17
                    if users[address(msg.sender)].field_1792 + (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) <= sub_72fcfe41:
                        if (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) and 5 * stor121 > -1 / (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600):
                            revert with 0, 17
                        if (5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) / 100 > (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600):
                            if sub_72fcfe41 <= users[address(msg.sender)].field_1792:
                                revert with 0, 'Full payouts'
                            revert with 0, 'Zero payout'
                        if (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) < (5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) / 100:
                            revert with 0, 17
                        if sub_72fcfe41 <= users[address(msg.sender)].field_1792:
                            revert with 0, 'Full payouts'
                        if not (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) / 100):
                            if (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) / 100) <= 0:
                                revert with 0, 'Zero payout'
                            if total_withdraw > !((block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) / 100)):
                                revert with 0, 17
                            total_withdraw = total_withdraw + (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) / 100)
                            users[address(msg.sender)].field_1536 = block.timestamp
                            emit Withdraw(((block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) / 100)), msg.sender);
                            if sub_72fcfe41 <= users[address(msg.sender)].field_1792:
                                emit LimitReached(users[address(msg.sender)].field_1792, msg.sender);
                            if sub_639a0b26 > 100:
                                revert with 0, 1
                            if 100 < sub_639a0b26:
                                revert with 0, 17
                            if not (-1 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) + (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) + ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) / 100):
                                call stor105.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 0
                            else:
                                if (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) / 100) and -sub_639a0b26 + 100 > -1 / (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) / 100):
                                    revert with 0, 17
                                if not (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) / 100):
                                    revert with 0, 18
                                if (100 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (sub_639a0b26 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (100 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) + (sub_639a0b26 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (100 * (5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) / 100) + (sub_639a0b26 * (5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) / 100) / (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) / 100) != -sub_639a0b26 + 100:
                                    revert with 0, 1
                                call stor105.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (100 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (sub_639a0b26 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (100 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) + (sub_639a0b26 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (100 * (5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) / 100) + (sub_639a0b26 * (5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) / 100) / 100
                        else:
                            if users[address(msg.sender)].field_1792 > !((block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) / 100)):
                                revert with 0, 17
                            if users[address(msg.sender)].field_1792 + (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) / 100) <= sub_72fcfe41:
                                if users[address(msg.sender)].field_1792 > !((block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600)):
                                    revert with 0, 17
                                users[address(msg.sender)].field_1792 = users[address(msg.sender)].field_1792 + (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600)
                                if (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) / 100) <= 0:
                                    revert with 0, 'Zero payout'
                                if total_withdraw > !((block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) / 100)):
                                    revert with 0, 17
                                total_withdraw = total_withdraw + (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) / 100)
                                users[address(msg.sender)].field_1536 = block.timestamp
                                emit Withdraw(((block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) / 100)), msg.sender);
                                if sub_72fcfe41 <= users[address(msg.sender)].field_1792:
                                    emit LimitReached(users[address(msg.sender)].field_1792, msg.sender);
                                if sub_639a0b26 > 100:
                                    revert with 0, 1
                                if 100 < sub_639a0b26:
                                    revert with 0, 17
                                if not (-1 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) + (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) + ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) / 100):
                                    call stor105.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, 0
                                else:
                                    if (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) / 100) and -sub_639a0b26 + 100 > -1 / (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) / 100):
                                        revert with 0, 17
                                    if not (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) / 100):
                                        revert with 0, 18
                                    if (100 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (sub_639a0b26 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (100 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) + (sub_639a0b26 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (100 * (5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) / 100) + (sub_639a0b26 * (5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) / 100) / (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - ((5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) / 100) != -sub_639a0b26 + 100:
                                        revert with 0, 1
                                    call stor105.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (100 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (sub_639a0b26 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (100 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) + (sub_639a0b26 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (100 * (5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) / 100) + (sub_639a0b26 * (5 * block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) - (5 * users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600 * stor121) / 100) / 100
                            else:
                                if users[address(msg.sender)].field_1792 > sub_72fcfe41:
                                    if users[address(msg.sender)].field_1792 > !((block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600)):
                                        revert with 0, 17
                                    users[address(msg.sender)].field_1792 = users[address(msg.sender)].field_1792 + (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600)
                                    revert with 0, 'Zero payout'
                                if sub_72fcfe41 < users[address(msg.sender)].field_1792:
                                    revert with 0, 17
                                if users[address(msg.sender)].field_1792 > !((block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600)):
                                    revert with 0, 17
                                users[address(msg.sender)].field_1792 = users[address(msg.sender)].field_1792 + (block.timestamp * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600) - (users[address(msg.sender)].field_1536 * 10^18 * users[address(msg.sender)].field_1280 * stor114 / 100 * 10^18 / 24 * 3600)
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
                                    call stor105.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, 0
                                else:
                                    if sub_72fcfe41 - users[address(msg.sender)].field_1792 and -sub_639a0b26 + 100 > -1 / sub_72fcfe41 - users[address(msg.sender)].field_1792:
                                        revert with 0, 17
                                    if not sub_72fcfe41 - users[address(msg.sender)].field_1792:
                                        revert with 0, 18
                                    if (100 * sub_72fcfe41) - (sub_639a0b26 * sub_72fcfe41) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) / sub_72fcfe41 - users[address(msg.sender)].field_1792 != -sub_639a0b26 + 100:
                                        revert with 0, 1
                                    call stor105.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (100 * sub_72fcfe41) - (sub_639a0b26 * sub_72fcfe41) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) / 100
                    else:
                        if users[address(msg.sender)].field_1792 > sub_72fcfe41:
                            if False and 5 * stor121 > 0:
                                revert with 0, 17
                            if sub_72fcfe41 <= users[address(msg.sender)].field_1792:
                                revert with 0, 'Full payouts'
                            revert with 0, 'Zero payout'
                        if sub_72fcfe41 < users[address(msg.sender)].field_1792:
                            revert with 0, 17
                        if sub_72fcfe41 - users[address(msg.sender)].field_1792 and 5 * stor121 > -1 / sub_72fcfe41 - users[address(msg.sender)].field_1792:
                            revert with 0, 17
                        if (5 * sub_72fcfe41 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100 > sub_72fcfe41 - users[address(msg.sender)].field_1792:
                            if sub_72fcfe41 <= users[address(msg.sender)].field_1792:
                                revert with 0, 'Full payouts'
                            revert with 0, 'Zero payout'
                        if sub_72fcfe41 - users[address(msg.sender)].field_1792 < (5 * sub_72fcfe41 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100:
                            revert with 0, 17
                        if sub_72fcfe41 <= users[address(msg.sender)].field_1792:
                            revert with 0, 'Full payouts'
                        if not sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100):
                            if sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100) <= 0:
                                revert with 0, 'Zero payout'
                            if total_withdraw > !(sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100)):
                                revert with 0, 17
                            total_withdraw = total_withdraw + sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100)
                            users[address(msg.sender)].field_1536 = block.timestamp
                            emit Withdraw((sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100)), msg.sender);
                            if sub_72fcfe41 <= users[address(msg.sender)].field_1792:
                                emit LimitReached(users[address(msg.sender)].field_1792, msg.sender);
                            if sub_639a0b26 > 100:
                                revert with 0, 1
                            if 100 < sub_639a0b26:
                                revert with 0, 17
                            if not -sub_72fcfe41 + users[address(msg.sender)].field_1792 + ((5 * sub_72fcfe41 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100):
                                call stor105.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 0
                            else:
                                if sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100) and -sub_639a0b26 + 100 > -1 / sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100):
                                    revert with 0, 17
                                if not sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100):
                                    revert with 0, 18
                                if (100 * sub_72fcfe41) - (sub_639a0b26 * sub_72fcfe41) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) - (100 * (5 * sub_72fcfe41 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100) + (sub_639a0b26 * (5 * sub_72fcfe41 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100) / sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100) != -sub_639a0b26 + 100:
                                    revert with 0, 1
                                call stor105.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (100 * sub_72fcfe41) - (sub_639a0b26 * sub_72fcfe41) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) - (100 * (5 * sub_72fcfe41 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100) + (sub_639a0b26 * (5 * sub_72fcfe41 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100) / 100
                        else:
                            if users[address(msg.sender)].field_1792 > !(sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100)):
                                revert with 0, 17
                            if sub_72fcfe41 - ((5 * sub_72fcfe41 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100) <= sub_72fcfe41:
                                if users[address(msg.sender)].field_1792 > !(sub_72fcfe41 - users[address(msg.sender)].field_1792):
                                    revert with 0, 17
                                users[address(msg.sender)].field_1792 = sub_72fcfe41
                                if sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100) <= 0:
                                    revert with 0, 'Zero payout'
                                if total_withdraw > !(sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100)):
                                    revert with 0, 17
                                total_withdraw = total_withdraw + sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100)
                                users[address(msg.sender)].field_1536 = block.timestamp
                                emit Withdraw((sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100)), msg.sender);
                                if sub_72fcfe41 <= users[address(msg.sender)].field_1792:
                                    emit LimitReached(users[address(msg.sender)].field_1792, msg.sender);
                                if sub_639a0b26 > 100:
                                    revert with 0, 1
                                if 100 < sub_639a0b26:
                                    revert with 0, 17
                                if not -sub_72fcfe41 + users[address(msg.sender)].field_1792 + ((5 * sub_72fcfe41 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100):
                                    call stor105.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, 0
                                else:
                                    if sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100) and -sub_639a0b26 + 100 > -1 / sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100):
                                        revert with 0, 17
                                    if not sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100):
                                        revert with 0, 18
                                    if (100 * sub_72fcfe41) - (sub_639a0b26 * sub_72fcfe41) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) - (100 * (5 * sub_72fcfe41 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100) + (sub_639a0b26 * (5 * sub_72fcfe41 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100) / sub_72fcfe41 - users[address(msg.sender)].field_1792 - ((5 * sub_72fcfe41 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100) != -sub_639a0b26 + 100:
                                        revert with 0, 1
                                    call stor105.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (100 * sub_72fcfe41) - (sub_639a0b26 * sub_72fcfe41) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) - (100 * (5 * sub_72fcfe41 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100) + (sub_639a0b26 * (5 * sub_72fcfe41 * stor121) - (5 * users[address(msg.sender)].field_1792 * stor121) / 100) / 100
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
                                    call stor105.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, 0
                                else:
                                    if sub_72fcfe41 - users[address(msg.sender)].field_1792 and -sub_639a0b26 + 100 > -1 / sub_72fcfe41 - users[address(msg.sender)].field_1792:
                                        revert with 0, 17
                                    if not sub_72fcfe41 - users[address(msg.sender)].field_1792:
                                        revert with 0, 18
                                    if (100 * sub_72fcfe41) - (sub_639a0b26 * sub_72fcfe41) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) / sub_72fcfe41 - users[address(msg.sender)].field_1792 != -sub_639a0b26 + 100:
                                        revert with 0, 1
                                    call stor105.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (100 * sub_72fcfe41) - (sub_639a0b26 * sub_72fcfe41) - (100 * users[address(msg.sender)].field_1792) + (sub_639a0b26 * users[address(msg.sender)].field_1792) / 100
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[0]
    emit Leaderboard(users[address(msg.sender)].field_256, users[address(msg.sender)].field_1280, users[address(msg.sender)].field_1792, users[address(msg.sender)].field_512, msg.sender);
    if not sub_c5e63fd6 + 1:
        revert with 0, 17
    sub_c5e63fd6++
}



}

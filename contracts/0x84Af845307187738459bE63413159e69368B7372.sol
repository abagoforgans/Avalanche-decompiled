contract main {




// =====================  Runtime code  =====================


#
#  - sub_4afbb11b(?)
#  - sub_9295152e(?)
#  - drainToken(address arg1, uint256 arg2)
#
address owner;
uint256 stor1;
address rewardTokenAddress;
address sub_bb7752feAddress;
address sub_4eaceddeAddress;
address sub_5ef35349Address;
uint256 lastId;
uint256 totalClaimable;
uint8 sub_60bc7305;
uint256 sub_0dd8783c;
array of struct trees;
uint256 sub_9beec1a3;
array of struct userInfo;
mapping of address sub_3e37fb3c;
mapping of uint256 sub_01af88ab;
mapping of struct saleInfo;
mapping of struct stor16;
mapping of uint256 sub_bd6e3e4a;

function sub_01af88ab(?) {
    require calldata.size - 4 >= 32
    return sub_01af88ab[arg1]
}

function saleInfo(uint256 arg1) {
    require calldata.size - 4 >= 32
    if saleInfo[arg1].field_0 >= 4:
        revert with 0, 33
    return saleInfo[arg1].field_0, 
           saleInfo[arg1].field_0,
           saleInfo[arg1].field_256,
           saleInfo[arg1].field_512,
           saleInfo[arg1].field_768,
           saleInfo[arg1].field_1024,
           saleInfo[arg1].field_1280
}

function sub_0dd8783c(?) {
    return sub_0dd8783c
}

function userInfo(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userInfo[arg1].field_0, 
           userInfo[arg1].field_256,
           userInfo[arg1].field_512,
           userInfo[arg1].field_768,
           userInfo[arg1].field_1024
}

function sub_3e37fb3c(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_3e37fb3c[arg1]
}

function totalClaimable() {
    return totalClaimable
}

function sub_4eacedde(?) {
    return sub_4eaceddeAddress
}

function sub_5ef35349(?) {
    return sub_5ef35349Address
}

function sub_60bc7305(?) {
    return bool(sub_60bc7305)
}

function trees(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < trees.length
    return trees[arg1].field_0
}

function owner() {
    return owner
}

function sub_9beec1a3(?) {
    return sub_9beec1a3
}

function sub_bb7752fe(?) {
    return sub_bb7752feAddress
}

function sub_bd6e3e4a(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    return sub_bd6e3e4a[address(arg1)][arg2]
}

function lastId() {
    return lastId
}

function sub_de347380(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    return sub_bd6e3e4a[arg1][arg2]
}

function rewardToken() {
    return rewardTokenAddress
}

function _fallback() payable {
    revert
}

function sub_034714bc(?) {
    if sub_9beec1a3 < sub_0dd8783c:
        return 0
    return 1, sub_9beec1a3 - sub_0dd8783c
}

function sub_d41b6c74(?) {
    if sub_9beec1a3 < sub_0dd8783c:
        revert with 0, 17
    return (sub_9beec1a3 - sub_0dd8783c)
}

function sub_4c63dff9(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_4eaceddeAddress = address(arg1)
}

function sub_c819edc2(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_5ef35349Address = address(arg1)
}

function adminWithdraw() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if eth.balance(this.address) <= 0:
        revert with 0, 'Zero AVAX Balance'
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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

function sub_43419ea3(?) {
    require ext_code.size(sub_4eaceddeAddress)
    staticcall sub_4eaceddeAddress.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    if ext_call.return_data[32] <= 0:
        revert with 0, 'UNABLE_TO_RETRIEVE_ETH_PRICE'
    return ext_call.return_data[32]
}

function sub_9cbdb886(?) {
    require ext_code.size(sub_5ef35349Address)
    staticcall sub_5ef35349Address.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    if ext_call.return_data[32] <= 0:
        revert with 0, 'UNABLE_TO_RETRIEVE_USDT_PRICE'
    return ext_call.return_data[32]
}

function sub_3672dfd2(?) {
    require calldata.size - 4 >= 64
    require ext_code.size(sub_4eaceddeAddress)
    staticcall sub_4eaceddeAddress.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    if ext_call.return_data[32] <= 0:
        revert with 0, 'UNABLE_TO_RETRIEVE_ETH_PRICE'
    if arg1 and ext_call.return_data[32] > -1 / arg1:
        revert with 0, 17
    if not arg2:
        revert with 0, 18
    return arg1 * ext_call.return_data[32] / 100 * 10^6, arg1 * ext_call.return_data[32] / arg2 / 10^6
}

function sub_f42b9cd7(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if (32 * ('cd', 4).length) + 128 < 96 or (32 * ('cd', 4).length) + 128 > test266151307():
        revert with 0, 65
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] == address(cd[36])
    idx = 0
    s = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 0, 50
        if idx == -1:
            revert with 0, 17
        if address(cd[36]) != mem[(32 * idx) + 140 len 20]:
            idx = idx + 1
            s = 0
            continue 
        idx = idx + 1
        s = 1
        continue 
    return bool(s)
}

function sub_e947711f(?) {
    require calldata.size - 4 >= 64
    require ext_code.size(sub_5ef35349Address)
    staticcall sub_5ef35349Address.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    if ext_call.return_data[32] <= 0:
        revert with 0, 'UNABLE_TO_RETRIEVE_USDT_PRICE'
    if arg1 and ext_call.return_data[32] > -1 / arg1:
        revert with 0, 17
    if not arg2:
        revert with 0, 18
    if arg1 * ext_call.return_data[32] / arg2 > 0x10c6f7a0b5ed8d36b4c7f34938583621fafc8b0079a2834d26fa3fcc9ea9:
        revert with 0, 17
    if arg1 * ext_call.return_data[32] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
        revert with 0, 17
    return 10000 * arg1 * ext_call.return_data[32], 10^6 * arg1 * ext_call.return_data[32] / arg2
}

function sub_5276da89(?) {
    mem[64] = (32 * trees.length) + 128
    mem[96] = trees.length
    if not trees.length:
        mem[(32 * trees.length) + 128] = 32
        mem[(32 * trees.length) + 160] = trees.length
        idx = 0
        s = (32 * trees.length) + 192
        t = 128
        while idx < trees.length:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * trees.length) + 128
           len (96 * trees.length) + 64
    mem[128] = address(trees.field_0)
    idx = 128
    s = 0
    while (32 * trees.length) + 96 > idx:
        mem[idx + 32] = trees[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * trees.length) + 128] = 32
    mem[(32 * trees.length) + 160] = trees.length
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < trees.length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * trees.length) + -mem[64] + 192
}

function sub_36aa8da9(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if (32 * ('cd', 4).length) + 128 < 96 or (32 * ('cd', 4).length) + 128 > test266151307():
        revert with 0, 65
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if ('cd', 4).length != 5:
        revert with 0, 'There has to be 5 levels only'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 0, 50
        mem[0] = idx
        mem[32] = 14
        sub_01af88ab[idx] = mem[(32 * idx) + 128]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    sub_60bc7305 = 1
    emit 0xdd7000fe: Array(len=('cd', 4).length, data=mem[128 len 32 * ('cd', 4).length])
}

function sub_5d715d32(?) {
    mem[64] = 320
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[224] = 0
    mem[256] = 0
    mem[288] = 0
    idx = 0
    s = 96
    while idx < 4:
        mem[0] = idx
        mem[32] = 15
        if block.timestamp <= saleInfo[idx].field_1024:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        mem[0] = idx
        mem[32] = 15
        if block.timestamp > saleInfo[idx].field_1280:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        mem[0] = idx
        mem[32] = 15
        _11 = mem[64]
        mem[64] = mem[64] + 224
        if saleInfo[idx].field_0 > 3:
            revert with 0, 33
        mem[_11] = saleInfo[idx].field_0
        mem[_11 + 32] = saleInfo[idx].field_8
        mem[_11 + 64] = saleInfo[idx].field_256
        mem[_11 + 96] = saleInfo[idx].field_512
        mem[_11 + 128] = saleInfo[idx].field_768
        mem[_11 + 160] = saleInfo[idx].field_1024
        mem[_11 + 192] = saleInfo[idx].field_1280
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = _11
        continue 
    if mem[s] >= 4:
        revert with 0, 33
    mem[mem[64]] = mem[s]
    mem[mem[64] + 32] = mem[s + 44 len 20]
    mem[mem[64] + 64] = mem[s + 64]
    mem[mem[64] + 96] = mem[s + 96]
    mem[mem[64] + 128] = mem[s + 128]
    mem[mem[64] + 160] = mem[s + 160]
    mem[mem[64] + 192] = mem[s + 192]
    return memory
      from mem[64]
       len 224
}

function referrersPerLevel(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    mem[64] = (32 * stor16[address(arg1)][arg2].field_0) + 128
    mem[96] = stor16[address(arg1)][arg2].field_0
    if not stor16[address(arg1)][arg2].field_0:
        mem[(32 * stor16[address(arg1)][arg2].field_0) + 128] = 32
        mem[(32 * stor16[address(arg1)][arg2].field_0) + 160] = stor16[address(arg1)][arg2].field_0
        idx = 0
        s = (32 * stor16[address(arg1)][arg2].field_0) + 192
        t = 128
        while idx < stor16[address(arg1)][arg2].field_0:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * stor16[address(arg1)][arg2].field_0) + 128
           len (96 * stor16[address(arg1)][arg2].field_0) + 64
    mem[128] = stor16[address(arg1)][arg2].field_0
    idx = 128
    s = 0
    while (32 * stor16[address(arg1)][arg2].field_0) + 96 > idx:
        mem[idx + 32] = stor16[address(arg1)][arg2][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor16[address(arg1)][arg2].field_0) + 128] = 32
    mem[(32 * stor16[address(arg1)][arg2].field_0) + 160] = stor16[address(arg1)][arg2].field_0
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < stor16[address(arg1)][arg2].field_0:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor16[address(arg1)][arg2].field_0) + -mem[64] + 192
}

function sub_ce6b02dc(?) {
    mem[96] = 4
    mem[64] = 480
    mem[256] = 0
    mem[288] = 0
    mem[320] = 0
    mem[352] = 0
    mem[384] = 0
    mem[416] = 0
    mem[448] = 0
    mem[var7001] = 256
    s = var7001
    idx = var7002
    while idx - 1:
        mem[64] = mem[64] + 224
        mem[256] = 0
        mem[288] = 0
        mem[320] = 0
        mem[352] = 0
        mem[384] = 0
        mem[416] = 0
        mem[448] = 0
        mem[s + 32] = 256
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < 4:
        mem[0] = idx
        mem[32] = 15
        _12 = mem[64]
        mem[64] = mem[64] + 224
        if saleInfo[idx].field_0 > 3:
            revert with 0, 33
        mem[_12] = saleInfo[idx].field_0
        mem[_12 + 32] = saleInfo[idx].field_8
        mem[_12 + 64] = saleInfo[idx].field_256
        mem[_12 + 96] = saleInfo[idx].field_512
        mem[_12 + 128] = saleInfo[idx].field_768
        mem[_12 + 160] = saleInfo[idx].field_1024
        mem[_12 + 192] = saleInfo[idx].field_1280
        if idx >= mem[96]:
            revert with 0, 50
        mem[(32 * idx) + 128] = _12
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _13 = mem[64]
    mem[mem[64]] = 32
    _14 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < _14:
        _25 = mem[t]
        if mem[mem[t]] >= 4:
            revert with 0, 33
        mem[s] = mem[mem[t]]
        mem[s + 32] = mem[_25 + 44 len 20]
        mem[s + 64] = mem[_25 + 64]
        mem[s + 96] = mem[_25 + 96]
        mem[s + 128] = mem[_25 + 128]
        mem[s + 160] = mem[_25 + 160]
        mem[s + 192] = mem[_25 + 192]
        idx = idx + 1
        s = s + 224
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _13 + (224 * _14) + -mem[64] + 64
}

function sub_94bbe150(?) {
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if not userInfo[msg.sender].field_0:
        revert with 0, 'Invalid User'
    if userInfo[msg.sender].field_1024 <= 0:
        revert with 0, 'Nothing to claim'
    mem[100] = this.address
    require ext_code.size(rewardTokenAddress)
    staticcall rewardTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
        revert with 0, 17
    if 10^12 * ext_call.return_data[0] < totalClaimable:
        revert with 0, 'Not enough token for referral rewards'
    mem[ceil32(return_data.size) + 132] = msg.sender
    mem[ceil32(return_data.size) + 164] = userInfo[msg.sender].field_1024 / 10^12
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(rewardTokenAddress):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, userInfo[msg.sender].field_1024 / 10^12, 0
    mem[ceil32(return_data.size) + 328] = 0
    call rewardTokenAddress with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, userInfo[msg.sender].field_1024 / 10^12, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, userInfo[msg.sender].field_1024 / 10^12, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
            if not 0, mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    if totalClaimable < userInfo[msg.sender].field_1024:
        revert with 0, 17
    totalClaimable -= userInfo[msg.sender].field_1024
    userInfo[msg.sender].field_1024 = 0
    stor1 = 1
}

function userDetails(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if userInfo[address(arg1)].field_1280:
        mem[576] = userInfo[address(arg1)][5].field_0
        idx = 576
        s = 0
        while (32 * userInfo[address(arg1)].field_1280) + 544 > idx:
            mem[idx + 32] = userInfo[address(arg1)][s + 5].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if userInfo[address(arg1)].field_1536:
            mem[(32 * userInfo[address(arg1)].field_1280) + 608] = userInfo[address(arg1)][6].field_0
            idx = (32 * userInfo[address(arg1)].field_1280) + 608
            s = 0
            while (32 * userInfo[address(arg1)].field_1280) + (32 * userInfo[address(arg1)].field_1536) + 576 > idx:
                mem[idx + 32] = userInfo[address(arg1)][s + 6].field_256
                idx = idx + 32
                s = s + 1
                continue 
        mem[(64 * userInfo[address(arg1)].field_1280) + (32 * userInfo[address(arg1)].field_1536) + 896] = userInfo[address(arg1)].field_1536
        mem[(64 * userInfo[address(arg1)].field_1280) + (32 * userInfo[address(arg1)].field_1536) + 928 len 32 * userInfo[address(arg1)].field_1536] = mem[(32 * userInfo[address(arg1)].field_1280) + 608 len 32 * userInfo[address(arg1)].field_1536]
        return 32, userInfo[address(arg1)].field_0, 
               userInfo[address(arg1)].field_256,
               userInfo[address(arg1)].field_512,
               userInfo[address(arg1)].field_768,
               userInfo[address(arg1)].field_1024,
               224,
               (32 * userInfo[address(arg1)].field_1280) + 256,
               userInfo[address(arg1)].field_1280,
               mem[576 len 32 * userInfo[address(arg1)].field_1280],
               userInfo[address(arg1)].field_1536,
               mem[(32 * userInfo[address(arg1)].field_1280) + 608 len 32 * userInfo[address(arg1)].field_1536]
    if userInfo[address(arg1)].field_1536:
        mem[(32 * userInfo[address(arg1)].field_1280) + 608] = userInfo[address(arg1)][6].field_0
        idx = (32 * userInfo[address(arg1)].field_1280) + 608
        s = 0
        while (32 * userInfo[address(arg1)].field_1280) + (32 * userInfo[address(arg1)].field_1536) + 576 > idx:
            mem[idx + 32] = userInfo[address(arg1)][s + 6].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(64 * userInfo[address(arg1)].field_1280) + (32 * userInfo[address(arg1)].field_1536) + 896] = userInfo[address(arg1)].field_1536
        mem[(64 * userInfo[address(arg1)].field_1280) + (32 * userInfo[address(arg1)].field_1536) + 928 len 32 * userInfo[address(arg1)].field_1536] = mem[(32 * userInfo[address(arg1)].field_1280) + 608 len 32 * userInfo[address(arg1)].field_1536]
        return 32, userInfo[address(arg1)].field_0, 
               userInfo[address(arg1)].field_256,
               userInfo[address(arg1)].field_512,
               userInfo[address(arg1)].field_768,
               userInfo[address(arg1)].field_1024,
               224,
               (32 * userInfo[address(arg1)].field_1280) + 256,
               userInfo[address(arg1)].field_1280,
               mem[576 len 32 * userInfo[address(arg1)].field_1280],
               userInfo[address(arg1)].field_1536,
               mem[(32 * userInfo[address(arg1)].field_1280) + 608 len 32 * userInfo[address(arg1)].field_1536]
    mem[(32 * userInfo[address(arg1)].field_1280) + (32 * userInfo[address(arg1)].field_1536) + 608] = 32
    mem[(32 * userInfo[address(arg1)].field_1280) + (32 * userInfo[address(arg1)].field_1536) + 640] = userInfo[address(arg1)].field_0
    mem[(32 * userInfo[address(arg1)].field_1280) + (32 * userInfo[address(arg1)].field_1536) + 672] = userInfo[address(arg1)].field_256
    mem[(32 * userInfo[address(arg1)].field_1280) + (32 * userInfo[address(arg1)].field_1536) + 704] = userInfo[address(arg1)].field_512
    mem[(32 * userInfo[address(arg1)].field_1280) + (32 * userInfo[address(arg1)].field_1536) + 736] = userInfo[address(arg1)].field_768
    mem[(32 * userInfo[address(arg1)].field_1280) + (32 * userInfo[address(arg1)].field_1536) + 768] = userInfo[address(arg1)].field_1024
    mem[(32 * userInfo[address(arg1)].field_1280) + (32 * userInfo[address(arg1)].field_1536) + 800] = 224
    mem[(32 * userInfo[address(arg1)].field_1280) + (32 * userInfo[address(arg1)].field_1536) + 864] = userInfo[address(arg1)].field_1280
    mem[(32 * userInfo[address(arg1)].field_1280) + (32 * userInfo[address(arg1)].field_1536) + 896 len 32 * userInfo[address(arg1)].field_1280] = mem[576 len 32 * userInfo[address(arg1)].field_1280]
    mem[(32 * userInfo[address(arg1)].field_1280) + (32 * userInfo[address(arg1)].field_1536) + 832] = (32 * userInfo[address(arg1)].field_1280) + 256
    mem[(64 * userInfo[address(arg1)].field_1280) + (32 * userInfo[address(arg1)].field_1536) + 896] = userInfo[address(arg1)].field_1536
    mem[(64 * userInfo[address(arg1)].field_1280) + (32 * userInfo[address(arg1)].field_1536) + 928 len 32 * userInfo[address(arg1)].field_1536] = mem[(32 * userInfo[address(arg1)].field_1280) + 608 len 32 * userInfo[address(arg1)].field_1536]
    return memory
      from (32 * userInfo[address(arg1)].field_1280) + (32 * userInfo[address(arg1)].field_1536) + 608
       len (96 * userInfo[address(arg1)].field_1280) + (32 * userInfo[address(arg1)].field_1536) + 320
}

function sub_63f48e1f(?) {
    require calldata.size - 4 >= 160
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if (32 * ('cd', 4).length) + 128 < 96 or (32 * ('cd', 4).length) + 128 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if (32 * ('cd', 36).length) + 160 < 128 or (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160 > test266151307():
        revert with 0, 65
    mem[(32 * ('cd', 4).length) + 128] = ('cd', 36).length
    require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
    idx = 0
    s = cd[36] + 36
    t = (32 * ('cd', 4).length) + 160
    while idx < ('cd', 36).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 0, 65
    if (32 * ('cd', 68).length) + 192 < 160 or (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192 > test266151307():
        revert with 0, 65
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160] = ('cd', 68).length
    require calldata.size >= cd[68] + (32 * ('cd', 68).length) + 36
    idx = 0
    s = cd[68] + 36
    t = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192
    while idx < ('cd', 68).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    if ('cd', 100).length > test266151307():
        revert with 0, 65
    if (32 * ('cd', 100).length) + 224 < 192 or (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 224 > test266151307():
        revert with 0, 65
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = ('cd', 100).length
    require calldata.size >= cd[100] + (32 * ('cd', 100).length) + 36
    idx = 0
    s = cd[100] + 36
    t = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224
    while idx < ('cd', 100).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    if ('cd', 132).length > test266151307():
        revert with 0, 65
    if (32 * ('cd', 132).length) + 256 < 224 or (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 256 > test266151307():
        revert with 0, 65
    mem[64] = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 256
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 224] = ('cd', 132).length
    require calldata.size >= cd[132] + (32 * ('cd', 132).length) + 36
    idx = 0
    s = cd[132] + 36
    t = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 256
    while idx < ('cd', 132).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < 4:
        _166 = mem[64]
        mem[64] = mem[64] + 224
        if idx > 3:
            revert with 0, 33
        mem[_166] = idx
        if 3 == idx:
            mem[_166 + 32] = this.address
            if idx >= mem[(32 * ('cd', 4).length) + 128]:
                revert with 0, 50
            mem[_166 + 64] = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
            if idx >= mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]:
                revert with 0, 50
            mem[_166 + 96] = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
            if idx >= mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]:
                revert with 0, 50
            mem[_166 + 128] = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224]
            if idx >= mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 224]:
                revert with 0, 50
            mem[_166 + 160] = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 256]
            if idx >= mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]:
                revert with 0, 50
            if idx >= mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 224]:
                revert with 0, 50
            if mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 256] > !mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224]:
                revert with 0, 17
            mem[_166 + 192] = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 256] + mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224]
            mem[0] = idx
            mem[32] = 15
            if idx > 3:
                revert with 0, 33
            saleInfo[idx].field_0 = idx or Mask(248, 8, saleInfo[idx].field_0)
            saleInfo[idx].field_8 = this.address
        else:
            if idx >= mem[96]:
                revert with 0, 50
            mem[_166 + 32] = mem[(32 * idx) + 140 len 20]
            if idx >= mem[(32 * ('cd', 4).length) + 128]:
                revert with 0, 50
            mem[_166 + 64] = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
            if idx >= mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]:
                revert with 0, 50
            mem[_166 + 96] = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
            if idx >= mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]:
                revert with 0, 50
            mem[_166 + 128] = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224]
            if idx >= mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 224]:
                revert with 0, 50
            mem[_166 + 160] = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 256]
            if idx >= mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]:
                revert with 0, 50
            if idx >= mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 224]:
                revert with 0, 50
            if mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 256] > !mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224]:
                revert with 0, 17
            mem[_166 + 192] = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 256] + mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224]
            mem[0] = idx
            mem[32] = 15
            if idx > 3:
                revert with 0, 33
            saleInfo[idx].field_0 = idx or Mask(248, 8, saleInfo[idx].field_0)
            saleInfo[idx].field_8 = mem[_166 + 44 len 20]
        saleInfo[idx].field_256 = mem[_166 + 64]
        saleInfo[idx].field_512 = mem[_166 + 96]
        saleInfo[idx].field_768 = mem[_166 + 128]
        saleInfo[idx].field_1024 = mem[_166 + 160]
        saleInfo[idx].field_1280 = mem[_166 + 192]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}



}

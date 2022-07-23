contract main {




// =====================  Runtime code  =====================


const balance = eth.balance(this.address)


address owner;
array of struct sub_8e27adbb;
mapping of struct tier;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 sub_f88e7138;
uint256 swapFee;
uint8 stor8; offset 160
uint128 stor8; offset 160
address stor8;

function getTier(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return tier[arg1].field_0, tier[arg1].field_256, bool(tier[arg1].field_512)
}

function owner() {
    return owner
}

function sub_8e27adbb(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_8e27adbb[address(arg1)].field_512
}

function getSwapFee() {
    return swapFee
}

function sub_f88e7138(?) {
    return sub_f88e7138
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_2e6b0ce4(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor5 = arg1
}

function sub_107f95ed(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_f88e7138 = arg1
}

function setSwapFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    swapFee = arg1
}

function sub_0924a868(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    tier[arg1].field_512 = 0
}

function sub_d8e61a7f(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    tier[arg1].field_512 = 1
}

function setTreasury(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    address(stor8.field_0) = arg1
}

function sub_468ea415(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(96, 0, stor8.field_160) = Mask(96, 0, bool(arg1))
}

function sub_118c8c0d(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_8e27adbb[address(arg1)].field_512 = arg2
}

function sub_ccc07df0(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_8e27adbb[address(arg1)].field_768 = arg2
}

function sub_23818eed(?) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    tier[arg1].field_0 = arg2
    tier[arg1].field_256 = arg3
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

function sub_f7ff5f8e(?) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == bool(arg3)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    tier[stor3].field_0 = arg1
    tier[stor3].field_256 = arg2
    tier[stor3].field_512 = uint8(bool(arg3))
    if stor3 == -1:
        revert with 'NH{q', 17
    stor3++
}

function sub_88c7ce8f(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2 and 24 * 3600 > -1 / arg2:
        revert with 'NH{q', 17
    if sub_8e27adbb[address(arg1)].field_512 > (-86400 * arg2) - 1:
        revert with 'NH{q', 17
    sub_8e27adbb[address(arg1)].field_512 += 24 * 3600 * arg2
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > eth.balance(this.address):
        revert with 0, 'Balance is to small'
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_46eedb93(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if block.timestamp < block.timestamp % 24 * 3600:
        revert with 'NH{q', 17
    if sub_8e27adbb[address(arg1)].field_512 < block.timestamp - (block.timestamp % 24 * 3600):
        revert with 'NH{q', 17
    if sub_8e27adbb[address(arg1)].field_512 - block.timestamp + (block.timestamp % 24 * 3600) and sub_f88e7138 > -1 / sub_8e27adbb[address(arg1)].field_512 - block.timestamp + (block.timestamp % 24 * 3600):
        revert with 'NH{q', 17
    return ((sub_8e27adbb[address(arg1)].field_512 * sub_f88e7138) - (block.timestamp * sub_f88e7138) + (block.timestamp % 24 * 3600 * sub_f88e7138) / 720 * 24 * 3600)
}

function sub_5df25d41(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if sub_8e27adbb[address(arg1)].field_512 <= 0:
        revert with 0, 'You are not a customer yet.'
    if sub_8e27adbb[address(arg1)].field_0 and sub_f88e7138 > -1 / sub_8e27adbb[address(arg1)].field_0:
        revert with 'NH{q', 17
    if tier[stor1[address(arg1)].field_768].field_0 > (-1 * sub_8e27adbb[address(arg1)].field_0 * sub_f88e7138) - 1:
        revert with 'NH{q', 17
    if not sub_8e27adbb[address(arg1)].field_256:
        if tier[stor1[address(arg1)].field_768].field_0 + (sub_8e27adbb[address(arg1)].field_0 * sub_f88e7138) > -1:
            revert with 'NH{q', 17
        return (tier[stor1[address(arg1)].field_768].field_0 + (sub_8e27adbb[address(arg1)].field_0 * sub_f88e7138))
    if tier[stor1[address(arg1)].field_768].field_0 + (sub_8e27adbb[address(arg1)].field_0 * sub_f88e7138) > -swapFee - 1:
        revert with 'NH{q', 17
    return (tier[stor1[address(arg1)].field_768].field_0 + (sub_8e27adbb[address(arg1)].field_0 * sub_f88e7138) + swapFee)
}

function addWallet(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sub_8e27adbb[address(msg.sender)].field_512 <= 0:
        revert with 0, 'You are not a customer yet.'
    if block.timestamp < block.timestamp % 24 * 3600:
        revert with 'NH{q', 17
    if sub_8e27adbb[address(msg.sender)].field_512 < block.timestamp - (block.timestamp % 24 * 3600):
        revert with 'NH{q', 17
    if sub_8e27adbb[address(msg.sender)].field_512 - block.timestamp + (block.timestamp % 24 * 3600) and sub_f88e7138 > -1 / sub_8e27adbb[address(msg.sender)].field_512 - block.timestamp + (block.timestamp % 24 * 3600):
        revert with 'NH{q', 17
    if (sub_8e27adbb[address(msg.sender)].field_512 * sub_f88e7138) - (block.timestamp * sub_f88e7138) + (block.timestamp % 24 * 3600 * sub_f88e7138) / 720 * 24 * 3600 > msg.value:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You need to pay for adding wallet.'
    sub_8e27adbb[address(msg.sender)].field_0++
    sub_8e27adbb[address(msg.sender)][sub_8e27adbb[address(msg.sender)].field_0].field_0 = arg1
}

function sub_d04731d4(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sub_8e27adbb[address(msg.sender)].field_512 <= 0:
        revert with 0, 'You are not a customer yet.'
    if sub_8e27adbb[address(msg.sender)].field_0 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You don't have any wallets added.'
    if sub_8e27adbb[address(msg.sender)].field_0 <= arg1:
        revert with 0, 'Ths wallet dont exist.'
    if sub_8e27adbb[address(msg.sender)].field_0 != 1:
        if sub_8e27adbb[address(msg.sender)].field_0 < 1:
            revert with 'NH{q', 17
        if sub_8e27adbb[address(msg.sender)].field_0 - 1 >= sub_8e27adbb[address(msg.sender)].field_0:
            revert with 'NH{q', 50
        if arg1 >= sub_8e27adbb[address(msg.sender)].field_0:
            revert with 'NH{q', 50
        sub_8e27adbb[address(msg.sender)][arg1].field_0 = sub_8e27adbb[address(msg.sender)][sub_8e27adbb[address(msg.sender)].field_0].field_0
    if not sub_8e27adbb[address(msg.sender)].field_0:
        revert with 'NH{q', 49
    sub_8e27adbb[address(msg.sender)][sub_8e27adbb[address(msg.sender)].field_0].field_0 = 0
    sub_8e27adbb[address(msg.sender)].field_0--
}

function sub_dbacdfcb(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if sub_8e27adbb[address(arg1)].field_512 <= 0:
        revert with 0, 'You are not a customer yet.'
    if sub_8e27adbb[address(arg1)].field_0 and sub_f88e7138 > -1 / sub_8e27adbb[address(arg1)].field_0:
        revert with 'NH{q', 17
    if not sub_8e27adbb[address(arg1)].field_256:
        if sub_8e27adbb[address(arg1)].field_0 * sub_f88e7138 > -1:
            revert with 'NH{q', 17
        if sub_8e27adbb[address(arg1)].field_0 * sub_f88e7138 and 12 > -1 / sub_8e27adbb[address(arg1)].field_0 * sub_f88e7138:
            revert with 'NH{q', 17
        if tier[stor1[address(arg1)].field_768].field_256 > (-12 * sub_8e27adbb[address(arg1)].field_0 * sub_f88e7138) - 1:
            revert with 'NH{q', 17
        return (tier[stor1[address(arg1)].field_768].field_256 + (12 * sub_8e27adbb[address(arg1)].field_0 * sub_f88e7138))
    if sub_8e27adbb[address(arg1)].field_0 * sub_f88e7138 > -swapFee - 1:
        revert with 'NH{q', 17
    if (sub_8e27adbb[address(arg1)].field_0 * sub_f88e7138) + swapFee and 12 > -1 / (sub_8e27adbb[address(arg1)].field_0 * sub_f88e7138) + swapFee:
        revert with 'NH{q', 17
    if tier[stor1[address(arg1)].field_768].field_256 > (-12 * sub_8e27adbb[address(arg1)].field_0 * sub_f88e7138) + (-12 * swapFee) - 1:
        revert with 'NH{q', 17
    return (tier[stor1[address(arg1)].field_768].field_256 + (12 * sub_8e27adbb[address(arg1)].field_0 * sub_f88e7138) + (12 * swapFee))
}

function sub_ac0a9957(?) {
    require calldata.size - 4 >= 128
    require cd[4] == address(cd[4])
    require cd[36] == cd[36]
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[100] == bool(cd[100])
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if tier[cd[36]].field_512:
        revert with 0, 'This tier is locked'
    sub_8e27adbb[address(cd[4])].field_768 = cd[36]
    sub_8e27adbb[address(cd[4])].field_256 = uint8(bool(cd[100]))
    sub_8e27adbb[address(cd[4])].field_0 = ('cd', 68).length
    if not ('cd', 68).length:
        idx = 0
        while sub_8e27adbb[address(cd[4])].field_0 > idx:
            sub_8e27adbb[address(cd[4])][idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = cd[68] + 36
        while cd[68] + (32 * ('cd', 68).length) + 36 > idx:
            sub_8e27adbb[address(cd[4])][s].field_0 = address(cd[idx])
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 68).length) + 31) >> 5
        while sub_8e27adbb[address(cd[4])].field_0 > idx:
            sub_8e27adbb[address(cd[4])][idx].field_0 = 0
            idx = idx + 1
            continue 
    if block.timestamp < block.timestamp % 24 * 3600:
        revert with 'NH{q', 17
    sub_8e27adbb[address(cd[4])].field_512 = block.timestamp - (block.timestamp % 24 * 3600)
    if sub_8e27adbb[address(cd[4])].field_512 > -2592001:
        revert with 'NH{q', 17
    sub_8e27adbb[address(cd[4])].field_512 += 720 * 24 * 3600
}

function sub_cf17e4e6(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if sub_8e27adbb[address(msg.sender)].field_512 <= 0:
        revert with 0, 'You are not a customer yet.'
    if block.timestamp < block.timestamp % 24 * 3600:
        revert with 'NH{q', 17
    if sub_8e27adbb[address(msg.sender)].field_1024 > -2592001:
        revert with 'NH{q', 17
    if sub_8e27adbb[address(msg.sender)].field_1024 + (720 * 24 * 3600) > block.timestamp - (block.timestamp % 24 * 3600):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You can edit only once per month.'
    if sub_8e27adbb[address(msg.sender)].field_0 != ('cd', 4).length:
        revert with 0, 'You can't add or remove wallet'
    sub_8e27adbb[address(msg.sender)].field_0 = ('cd', 4).length
    if not ('cd', 4).length:
        idx = 0
        while sub_8e27adbb[address(msg.sender)].field_0 > idx:
            sub_8e27adbb[address(msg.sender)][idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = cd[4] + 36
        while cd[4] + (32 * ('cd', 4).length) + 36 > idx:
            sub_8e27adbb[address(msg.sender)][s].field_0 = address(cd[idx])
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
        while sub_8e27adbb[address(msg.sender)].field_0 > idx:
            sub_8e27adbb[address(msg.sender)][idx].field_0 = 0
            idx = idx + 1
            continue 
    if block.timestamp < block.timestamp % 24 * 3600:
        revert with 'NH{q', 17
    sub_8e27adbb[address(msg.sender)].field_1024 = block.timestamp - (block.timestamp % 24 * 3600)
}

function sub_84de3c05(?) {
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if sub_8e27adbb[address(cd[4])].field_512 <= 0:
        revert with 0, 'You are not a customer yet.'
    if block.timestamp < block.timestamp % 24 * 3600:
        revert with 'NH{q', 17
    if sub_8e27adbb[address(cd[4])].field_1024 > -2592001:
        revert with 'NH{q', 17
    if sub_8e27adbb[address(cd[4])].field_1024 + (720 * 24 * 3600) > block.timestamp - (block.timestamp % 24 * 3600):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You can edit only once per month.'
    if sub_8e27adbb[address(cd[4])].field_0 != ('cd', 36).length:
        revert with 0, 'You can't add or remove wallet'
    sub_8e27adbb[address(cd[4])].field_0 = ('cd', 36).length
    if not ('cd', 36).length:
        idx = 0
        while sub_8e27adbb[address(cd[4])].field_0 > idx:
            sub_8e27adbb[address(cd[4])][idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = cd[36] + 36
        while cd[36] + (32 * ('cd', 36).length) + 36 > idx:
            sub_8e27adbb[address(cd[4])][s].field_0 = address(cd[idx])
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 36).length) + 31) >> 5
        while sub_8e27adbb[address(cd[4])].field_0 > idx:
            sub_8e27adbb[address(cd[4])][idx].field_0 = 0
            idx = idx + 1
            continue 
    if block.timestamp < block.timestamp % 24 * 3600:
        revert with 'NH{q', 17
    sub_8e27adbb[address(cd[4])].field_1024 = block.timestamp - (block.timestamp % 24 * 3600)
}

function sub_bc1e2e6a(?) payable {
    if sub_8e27adbb[address(msg.sender)].field_512 <= 0:
        revert with 0, 'You are not a customer yet.'
    if sub_8e27adbb[address(msg.sender)].field_512 <= 0:
        revert with 0, 'You are not a customer yet.'
    if sub_8e27adbb[address(msg.sender)].field_0 and sub_f88e7138 > -1 / sub_8e27adbb[address(msg.sender)].field_0:
        revert with 'NH{q', 17
    if tier[stor1[address(msg.sender)].field_768].field_0 > (-1 * sub_8e27adbb[address(msg.sender)].field_0 * sub_f88e7138) - 1:
        revert with 'NH{q', 17
    if not sub_8e27adbb[address(msg.sender)].field_256:
        if tier[stor1[address(msg.sender)].field_768].field_0 + (sub_8e27adbb[address(msg.sender)].field_0 * sub_f88e7138) > -1:
            revert with 'NH{q', 17
        if sub_8e27adbb[address(msg.sender)].field_512 > -2592001:
            revert with 'NH{q', 17
        sub_8e27adbb[address(msg.sender)].field_512 += 720 * 24 * 3600
        if stor4 > -tier[stor1[address(msg.sender)].field_768].field_0 + (-1 * sub_8e27adbb[address(msg.sender)].field_0 * sub_f88e7138) - 1:
            revert with 'NH{q', 17
        stor4 = stor4 + tier[stor1[address(msg.sender)].field_768].field_0 + (sub_8e27adbb[address(msg.sender)].field_0 * sub_f88e7138)
    else:
        if tier[stor1[address(msg.sender)].field_768].field_0 + (sub_8e27adbb[address(msg.sender)].field_0 * sub_f88e7138) > -swapFee - 1:
            revert with 'NH{q', 17
        if sub_8e27adbb[address(msg.sender)].field_512 > -2592001:
            revert with 'NH{q', 17
        sub_8e27adbb[address(msg.sender)].field_512 += 720 * 24 * 3600
        if stor4 > -tier[stor1[address(msg.sender)].field_768].field_0 + (-1 * sub_8e27adbb[address(msg.sender)].field_0 * sub_f88e7138) + -swapFee - 1:
            revert with 'NH{q', 17
        stor4 = stor4 + tier[stor1[address(msg.sender)].field_768].field_0 + (sub_8e27adbb[address(msg.sender)].field_0 * sub_f88e7138) + swapFee
    if stor4 > stor5:
        if uint8(stor8.field_160):
            if stor4 > eth.balance(this.address):
                call address(stor8.field_0) with:
                   value stor4 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                stor4 = 0
}

function getUser(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = 96
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[224] = 0
    mem[64] = (32 * sub_8e27adbb[address(arg1)].field_0) + 448
    mem[416] = sub_8e27adbb[address(arg1)].field_0
    if not sub_8e27adbb[address(arg1)].field_0:
        mem[(32 * sub_8e27adbb[address(arg1)].field_0) + 448] = 32
        idx = 0
        s = 448
        t = (32 * sub_8e27adbb[address(arg1)].field_0) + 672
        while idx < sub_8e27adbb[address(arg1)].field_0:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return 32, 160, 
               bool(sub_8e27adbb[address(arg1)].field_256),
               sub_8e27adbb[address(arg1)].field_512,
               sub_8e27adbb[address(arg1)].field_768,
               sub_8e27adbb[address(arg1)].field_1024,
               sub_8e27adbb[address(arg1)].field_0,
               mem[(32 * sub_8e27adbb[address(arg1)].field_0) + 672 len 32 * sub_8e27adbb[address(arg1)].field_0]
    mem[448] = sub_8e27adbb[address(arg1)].field_0
    idx = 448
    s = 0
    while (32 * sub_8e27adbb[address(arg1)].field_0) + 416 > idx:
        mem[idx + 32] = sub_8e27adbb[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[256] = 416
    mem[288] = bool(sub_8e27adbb[address(arg1)].field_256)
    mem[320] = sub_8e27adbb[address(arg1)].field_512
    mem[352] = sub_8e27adbb[address(arg1)].field_768
    mem[384] = sub_8e27adbb[address(arg1)].field_1024
    mem[(32 * sub_8e27adbb[address(arg1)].field_0) + 448] = 32
    mem[(32 * sub_8e27adbb[address(arg1)].field_0) + 480] = 160
    mem[(32 * sub_8e27adbb[address(arg1)].field_0) + 640] = sub_8e27adbb[address(arg1)].field_0
    idx = 0
    s = 448
    t = mem[64] + 224
    while idx < sub_8e27adbb[address(arg1)].field_0:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(32 * sub_8e27adbb[address(arg1)].field_0) + 512] = bool(mem[288])
    mem[(32 * sub_8e27adbb[address(arg1)].field_0) + 544] = mem[320]
    mem[(32 * sub_8e27adbb[address(arg1)].field_0) + 576] = mem[352]
    mem[(32 * sub_8e27adbb[address(arg1)].field_0) + 608] = mem[384]
    return memory
      from mem[64]
       len (64 * sub_8e27adbb[address(arg1)].field_0) + -mem[64] + 672
}

function sub_2fa6d431(?) payable {
    if sub_8e27adbb[address(msg.sender)].field_512 <= 0:
        revert with 0, 'You are not a customer yet.'
    if sub_8e27adbb[address(msg.sender)].field_512 <= 0:
        revert with 0, 'You are not a customer yet.'
    if sub_8e27adbb[address(msg.sender)].field_0 and sub_f88e7138 > -1 / sub_8e27adbb[address(msg.sender)].field_0:
        revert with 'NH{q', 17
    if not sub_8e27adbb[address(msg.sender)].field_256:
        if sub_8e27adbb[address(msg.sender)].field_0 * sub_f88e7138 > -1:
            revert with 'NH{q', 17
        if sub_8e27adbb[address(msg.sender)].field_0 * sub_f88e7138 and 12 > -1 / sub_8e27adbb[address(msg.sender)].field_0 * sub_f88e7138:
            revert with 'NH{q', 17
        if tier[stor1[address(msg.sender)].field_768].field_256 > (-12 * sub_8e27adbb[address(msg.sender)].field_0 * sub_f88e7138) - 1:
            revert with 'NH{q', 17
        if msg.value < tier[stor1[address(msg.sender)].field_768].field_256 + (12 * sub_8e27adbb[address(msg.sender)].field_0 * sub_f88e7138):
            revert with 0, 'Recived amount was to litle'
    else:
        if sub_8e27adbb[address(msg.sender)].field_0 * sub_f88e7138 > -swapFee - 1:
            revert with 'NH{q', 17
        if (sub_8e27adbb[address(msg.sender)].field_0 * sub_f88e7138) + swapFee and 12 > -1 / (sub_8e27adbb[address(msg.sender)].field_0 * sub_f88e7138) + swapFee:
            revert with 'NH{q', 17
        if tier[stor1[address(msg.sender)].field_768].field_256 > (-12 * sub_8e27adbb[address(msg.sender)].field_0 * sub_f88e7138) + (-12 * swapFee) - 1:
            revert with 'NH{q', 17
        if msg.value < tier[stor1[address(msg.sender)].field_768].field_256 + (12 * sub_8e27adbb[address(msg.sender)].field_0 * sub_f88e7138) + (12 * swapFee):
            revert with 0, 'Recived amount was to litle'
    if sub_8e27adbb[address(msg.sender)].field_512 > -31536001:
        revert with 'NH{q', 17
    sub_8e27adbb[address(msg.sender)].field_512 += 8760 * 24 * 3600
    if stor4 > -msg.value - 1:
        revert with 'NH{q', 17
    stor4 += msg.value
    if stor4 > stor5:
        if uint8(stor8.field_160):
            if stor4 > eth.balance(this.address):
                call address(stor8.field_0) with:
                   value stor4 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                stor4 = 0
}

function sub_2143964f(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] == cd[4]
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] == bool(cd[68])
    if tier[cd[4]].field_512:
        revert with 0, 'This tier is locked'
    sub_8e27adbb[address(msg.sender)].field_768 = cd[4]
    sub_8e27adbb[address(msg.sender)].field_256 = uint8(bool(cd[68]))
    sub_8e27adbb[address(msg.sender)].field_0 = ('cd', 36).length
    if not ('cd', 36).length:
        idx = 0
        while sub_8e27adbb[address(msg.sender)].field_0 > idx:
            sub_8e27adbb[address(msg.sender)][idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = cd[36] + 36
        while cd[36] + (32 * ('cd', 36).length) + 36 > idx:
            sub_8e27adbb[address(msg.sender)][s].field_0 = address(cd[idx])
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 36).length) + 31) >> 5
        while sub_8e27adbb[address(msg.sender)].field_0 > idx:
            sub_8e27adbb[address(msg.sender)][idx].field_0 = 0
            idx = idx + 1
            continue 
    if block.timestamp < block.timestamp % 24 * 3600:
        revert with 'NH{q', 17
    sub_8e27adbb[address(msg.sender)].field_512 = block.timestamp - (block.timestamp % 24 * 3600)
    if sub_8e27adbb[address(msg.sender)].field_512 <= 0:
        revert with 0, 'You are not a customer yet.'
    if sub_8e27adbb[address(msg.sender)].field_0 and sub_f88e7138 > -1 / sub_8e27adbb[address(msg.sender)].field_0:
        revert with 'NH{q', 17
    if tier[stor1[address(msg.sender)].field_768].field_0 > (-1 * sub_8e27adbb[address(msg.sender)].field_0 * sub_f88e7138) - 1:
        revert with 'NH{q', 17
    if not sub_8e27adbb[address(msg.sender)].field_256:
        if tier[stor1[address(msg.sender)].field_768].field_0 + (sub_8e27adbb[address(msg.sender)].field_0 * sub_f88e7138) > -1:
            revert with 'NH{q', 17
        if msg.value < tier[stor1[address(msg.sender)].field_768].field_0 + (sub_8e27adbb[address(msg.sender)].field_0 * sub_f88e7138):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'You need to pay for at least one month when creating new user'
    else:
        if tier[stor1[address(msg.sender)].field_768].field_0 + (sub_8e27adbb[address(msg.sender)].field_0 * sub_f88e7138) > -swapFee - 1:
            revert with 'NH{q', 17
        if msg.value < tier[stor1[address(msg.sender)].field_768].field_0 + (sub_8e27adbb[address(msg.sender)].field_0 * sub_f88e7138) + swapFee:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'You need to pay for at least one month when creating new user'
    if sub_8e27adbb[address(msg.sender)].field_512 <= 0:
        revert with 0, 'You are not a customer yet.'
    if sub_8e27adbb[address(msg.sender)].field_0 and sub_f88e7138 > -1 / sub_8e27adbb[address(msg.sender)].field_0:
        revert with 'NH{q', 17
    if not sub_8e27adbb[address(msg.sender)].field_256:
        if sub_8e27adbb[address(msg.sender)].field_0 * sub_f88e7138 > -1:
            revert with 'NH{q', 17
        if sub_8e27adbb[address(msg.sender)].field_0 * sub_f88e7138 and 12 > -1 / sub_8e27adbb[address(msg.sender)].field_0 * sub_f88e7138:
            revert with 'NH{q', 17
        if tier[stor1[address(msg.sender)].field_768].field_256 > (-12 * sub_8e27adbb[address(msg.sender)].field_0 * sub_f88e7138) - 1:
            revert with 'NH{q', 17
        if msg.value < tier[stor1[address(msg.sender)].field_768].field_256 + (12 * sub_8e27adbb[address(msg.sender)].field_0 * sub_f88e7138):
            if sub_8e27adbb[address(msg.sender)].field_512 > -2592001:
                revert with 'NH{q', 17
            sub_8e27adbb[address(msg.sender)].field_512 += 720 * 24 * 3600
        else:
            if sub_8e27adbb[address(msg.sender)].field_512 > -31536001:
                revert with 'NH{q', 17
            sub_8e27adbb[address(msg.sender)].field_512 += 8760 * 24 * 3600
    else:
        if sub_8e27adbb[address(msg.sender)].field_0 * sub_f88e7138 > -swapFee - 1:
            revert with 'NH{q', 17
        if (sub_8e27adbb[address(msg.sender)].field_0 * sub_f88e7138) + swapFee and 12 > -1 / (sub_8e27adbb[address(msg.sender)].field_0 * sub_f88e7138) + swapFee:
            revert with 'NH{q', 17
        if tier[stor1[address(msg.sender)].field_768].field_256 > (-12 * sub_8e27adbb[address(msg.sender)].field_0 * sub_f88e7138) + (-12 * swapFee) - 1:
            revert with 'NH{q', 17
        if msg.value < tier[stor1[address(msg.sender)].field_768].field_256 + (12 * sub_8e27adbb[address(msg.sender)].field_0 * sub_f88e7138) + (12 * swapFee):
            if sub_8e27adbb[address(msg.sender)].field_512 > -2592001:
                revert with 'NH{q', 17
            sub_8e27adbb[address(msg.sender)].field_512 += 720 * 24 * 3600
        else:
            if sub_8e27adbb[address(msg.sender)].field_512 > -31536001:
                revert with 'NH{q', 17
            sub_8e27adbb[address(msg.sender)].field_512 += 8760 * 24 * 3600
}



}

contract main {




// =====================  Runtime code  =====================


address owner;
address sub_6251be71Address;
address PAYMENT_TOKENAddress;
address POOLAddress;
address TREASURYAddress;
address MARKETINGAddress;
array of struct stor6;
mapping of uint256 totalStaked;
mapping of uint256 payouts;
mapping of struct stakers;
mapping of uint256 sub_1593e395;
mapping of uint8 stor11;
uint256 sub_074c3514;
uint256 sub_5bec4cb4;
uint256 minStake;
uint256 maxStake;
uint256 stakeFee;
array of uint256 sub_f566b04d;
uint256 sub_d95dc4d2;
array of uint256 sub_88b6e922;
array of uint256 sub_564185b8;

function sub_074c3514(?) payable {
    return sub_074c3514
}

function sub_1593e395(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    return sub_1593e395[arg1][arg2]
}

function stakeFee() payable {
    return stakeFee
}

function payouts(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return payouts[arg1]
}

function TREASURY() payable {
    return TREASURYAddress
}

function minStake() payable {
    return minStake
}

function totalStaked(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return totalStaked[arg1]
}

function sub_564185b8(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_564185b8.length
    return sub_564185b8[arg1].field_0
}

function sub_5bec4cb4(?) payable {
    return sub_5bec4cb4
}

function sub_6251be71(?) payable {
    return sub_6251be71Address
}

function POOL() payable {
    return POOLAddress
}

function PAYMENT_TOKEN() payable {
    return PAYMENT_TOKENAddress
}

function sub_88b6e922(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_88b6e922.length
    return sub_88b6e922[arg1].field_0
}

function owner() payable {
    return owner
}

function stakers(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return stakers[arg1].field_0, 
           stakers[arg1].field_256,
           stakers[arg1].field_512,
           stakers[arg1].field_768,
           stakers[arg1].field_1024
}

function sub_99736aac(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    return bool(stor11[arg1][arg2])
}

function sub_b0190dae(?) payable {
    if block.timestamp < sub_074c3514:
        revert with 'NH{q', 17
    if not sub_5bec4cb4:
        revert with 'NH{q', 18
    if block.timestamp - sub_074c3514 / sub_5bec4cb4 > -2:
        revert with 'NH{q', 17
    return totalStaked[(block.timestamp - stor12 / stor13) + 1]
}

function sub_d95dc4d2(?) payable {
    return sub_d95dc4d2
}

function MARKETING() payable {
    return MARKETINGAddress
}

function maxStake() payable {
    return maxStake
}

function sub_f566b04d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_f566b04d.length
    return sub_f566b04d[arg1]
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

function setPool(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    POOLAddress = arg1
}

function setStakeFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stakeFee = arg1
}

function setTreasury(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    TREASURYAddress = arg1
}

function setMarketing(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    MARKETINGAddress = arg1
}

function setCycleDuration(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_5bec4cb4 = arg1
}

function setPaymentToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    PAYMENT_TOKENAddress = arg1
}

function sub_5ba4aa78(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_6251be71Address = address(arg1)
}

function sub_0fc9aeb0(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    payouts[arg1] = arg2
}

function currentCycle() payable {
    if block.timestamp < sub_074c3514:
        revert with 'NH{q', 17
    if not sub_5bec4cb4:
        revert with 'NH{q', 18
    if block.timestamp - sub_074c3514 / sub_5bec4cb4 > -2:
        revert with 'NH{q', 17
    return ((block.timestamp - sub_074c3514 / sub_5bec4cb4) + 1)
}

function sub_1bab8de6(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 and 10^16 > -1 / arg1:
        revert with 'NH{q', 17
    minStake = 10^16 * arg1
    if arg2 and 10^16 > -1 / arg2:
        revert with 'NH{q', 17
    maxStake = 10^16 * arg2
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

function sub_a877109e(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if not totalStaked[arg2]:
        revert with 'NH{q', 18
    if totalStaked[arg2] and 10000 > -1 / totalStaked[arg2]:
        revert with 'NH{q', 17
    if not totalStaked[arg2]:
        revert with 'NH{q', 18
    if 10000 * totalStaked[arg2] / totalStaked[arg2] != 10000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if not 10000 * totalStaked[arg2]:
        revert with 'NH{q', 18
    return (sub_1593e395[address(arg1)][arg2] / 10000 * totalStaked[arg2])
}

function sub_93b1b527(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(sub_6251be71Address)
    staticcall sub_6251be71Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(sub_6251be71Address)
    call sub_6251be71Address.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function withdrawPayment() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(PAYMENT_TOKENAddress)
    staticcall PAYMENT_TOKENAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(PAYMENT_TOKENAddress)
    call PAYMENT_TOKENAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function claimAll() payable {
    if block.timestamp < sub_074c3514:
        revert with 'NH{q', 17
    if not sub_5bec4cb4:
        revert with 'NH{q', 18
    if block.timestamp - sub_074c3514 / sub_5bec4cb4 > -2:
        revert with 'NH{q', 17
    if (block.timestamp - sub_074c3514 / sub_5bec4cb4) + 1 <= stakers[address(msg.sender)].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'CLAIM2: You have no share to claim.'
    if stakers[address(msg.sender)].field_256 < stakers[address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'CLAIM3: You have no share to claim.'
    if stakers[address(msg.sender)].field_768 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'CLAIM: You are not contributing to the pool.'
    if block.timestamp < sub_074c3514:
        revert with 'NH{q', 17
    if not sub_5bec4cb4:
        revert with 'NH{q', 18
    # nil
}

function sub_8b8a9aa8(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if block.timestamp < sub_074c3514:
        revert with 'NH{q', 17
    if not sub_5bec4cb4:
        revert with 'NH{q', 18
    if block.timestamp - sub_074c3514 / sub_5bec4cb4 > -2:
        revert with 'NH{q', 17
    if (block.timestamp - sub_074c3514 / sub_5bec4cb4) + 1 <= stakers[address(arg1)].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'CLAIM2: You have no share to claim.'
    if stakers[address(arg1)].field_256 < stakers[address(arg1)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'CLAIM3: You have no share to claim.'
    if stakers[address(arg1)].field_768 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'CLAIM: You are not contributing to the pool.'
    if block.timestamp < sub_074c3514:
        revert with 'NH{q', 17
    if not sub_5bec4cb4:
        revert with 'NH{q', 18
    # nil
}

function sub_9fa0a4de(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if block.timestamp < sub_074c3514:
        revert with 'NH{q', 17
    if not sub_5bec4cb4:
        revert with 'NH{q', 18
    if block.timestamp - sub_074c3514 / sub_5bec4cb4 > -2:
        revert with 'NH{q', 17
    if not totalStaked[(block.timestamp - stor12 / stor13) + 1]:
        revert with 'NH{q', 18
    if totalStaked[(block.timestamp - stor12 / stor13) + 1] and 10000 > -1 / totalStaked[(block.timestamp - stor12 / stor13) + 1]:
        revert with 'NH{q', 17
    if not totalStaked[(block.timestamp - stor12 / stor13) + 1]:
        revert with 'NH{q', 18
    if 10000 * totalStaked[(block.timestamp - stor12 / stor13) + 1] / totalStaked[(block.timestamp - stor12 / stor13) + 1] != 10000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if not 10000 * totalStaked[(block.timestamp - stor12 / stor13) + 1]:
        revert with 'NH{q', 18
    return (sub_1593e395[address(arg1)][(block.timestamp - stor12 / stor13) + 1] / 10000 * totalStaked[(block.timestamp - stor12 / stor13) + 1])
}

function sub_793fa335(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_564185b8.length = ('cd', 4).length
    if not ('cd', 4).length:
        idx = 0
        while sub_564185b8.length > idx:
            sub_564185b8[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * ('cd', 4).length) + 128 > idx:
            sub_564185b8[s].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
        while sub_564185b8.length > idx:
            sub_564185b8[idx].field_0 = 0
            idx = idx + 1
            continue 
}

function sub_d45e817f(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_88b6e922.length = ('cd', 4).length
    if not ('cd', 4).length:
        idx = 0
        while sub_88b6e922.length > idx:
            sub_88b6e922[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * ('cd', 4).length) + 128 > idx:
            sub_88b6e922[s].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
        while sub_88b6e922.length > idx:
            sub_88b6e922[idx].field_0 = 0
            idx = idx + 1
            continue 
}

function setBaseUri(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor6.length):
        if bool(stor6.length) == stor6.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor6[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor6.length = 0
            idx = 0
            while stor6.length.field_1 + 31 / 32 > idx:
                stor6[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor6.length) == stor6.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor6[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor6.length = 0
            idx = 0
            while stor6.length.field_1 + 31 / 32 > idx:
                stor6[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function sub_7fda75a0(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] == cd[36]
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_f566b04d.length = ('cd', 4).length
    if not ('cd', 4).length:
        idx = 0
        while sub_f566b04d.length > idx:
            sub_f566b04d[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * ('cd', 4).length) + 128 > idx:
            sub_f566b04d[s] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
        while sub_f566b04d.length > idx:
            sub_f566b04d[idx] = 0
            idx = idx + 1
            continue 
    sub_d95dc4d2 = cd[36]
}

function sub_9561f616(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(stor6.length):
        if bool(stor6.length) == stor6.length.field_1 < 32:
            revert with 'NH{q', 34
        if not bool(stor6.length):
            mem[128] = Mask(248, 8, stor6.length)
            mem[stor6.length.field_1 + 128] = arg1
            return Array(len=stor6.length.field_1 + 32, data=mem[128 len ceil32(stor6.length.field_1) + 1])
        if bool(stor6.length) != 1:
            return mem[-96 len 160], -96, mem[128 len -96]
        idx = 0
        s = 0
        while idx < stor6.length.field_1:
            mem[idx + 128] = stor6[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        mem[stor6.length.field_1 + 128] = arg1
        mem[stor6.length.field_1 + 160] = 32
        mem[stor6.length.field_1 + 192] = mem[96]
        mem[stor6.length.field_1 + 224 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(mem[96]) > mem[96]:
            mem[stor6.length.field_1 + mem[96] + 224] = 0
        return Array(len=mem[96], data=mem[stor6.length.field_1 + 224 len ceil32(mem[96])])
    if bool(stor6.length) == stor6.length.field_1 < 32:
        revert with 'NH{q', 34
    if not bool(stor6.length):
        mem[128] = Mask(248, 8, stor6.length)
        mem[stor6.length.field_1 + 128] = arg1
        return Array(len=stor6.length.field_1 + 32, data=mem[128 len ceil32(stor6.length.field_1) + 1])
    if bool(stor6.length) != 1:
        return mem[-96 len 160], -96, mem[128 len -96]
    idx = 0
    s = 0
    while idx < stor6.length.field_1:
        mem[idx + 128] = stor6[s].field_0
        idx = idx + 32
        s = s + 1
        continue 
    mem[stor6.length.field_1 + 128] = arg1
    mem[stor6.length.field_1 + 160] = 32
    mem[stor6.length.field_1 + 192] = mem[96]
    mem[stor6.length.field_1 + 224 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    if ceil32(mem[96]) > mem[96]:
        mem[stor6.length.field_1 + mem[96] + 224] = 0
    return Array(len=mem[96], data=mem[stor6.length.field_1 + 224 len ceil32(mem[96])])
}

function sub_eb210254(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if block.timestamp < sub_074c3514:
        revert with 'NH{q', 17
    if not sub_5bec4cb4:
        revert with 'NH{q', 18
    if block.timestamp - sub_074c3514 / sub_5bec4cb4 > -2:
        revert with 'NH{q', 17
    if (block.timestamp - sub_074c3514 / sub_5bec4cb4) + 1 <= stakers[address(arg1)].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'CLAIM2: You have no share to claim.'
    if stakers[address(arg1)].field_256 < stakers[address(arg1)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'CLAIM3: You have no share to claim.'
    if stakers[address(arg1)].field_768 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'CLAIM: You are not contributing to the pool.'
    if not totalStaked[arg2]:
        revert with 'NH{q', 18
    if totalStaked[arg2] and 10000 > -1 / totalStaked[arg2]:
        revert with 'NH{q', 17
    if not totalStaked[arg2]:
        revert with 'NH{q', 18
    if 10000 * totalStaked[arg2] / totalStaked[arg2] != 10000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if not 10000 * totalStaked[arg2]:
        revert with 'NH{q', 18
    if not payouts[arg2]:
        return 0
    if payouts[arg2] and sub_1593e395[address(arg1)][arg2] / 10000 * totalStaked[arg2] > -1 / payouts[arg2]:
        revert with 'NH{q', 17
    if not payouts[arg2]:
        revert with 'NH{q', 18
    if payouts[arg2] * sub_1593e395[address(arg1)][arg2] / 10000 * totalStaked[arg2] / payouts[arg2] != sub_1593e395[address(arg1)][arg2] / 10000 * totalStaked[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if 0 > -(payouts[arg2] * sub_1593e395[address(arg1)][arg2] / 10000 * totalStaked[arg2] / 10000) - 1:
        revert with 'NH{q', 17
    return (payouts[arg2] * sub_1593e395[address(arg1)][arg2] / 10000 * totalStaked[arg2] / 10000)
}

function baseUri() payable {
    if bool(stor6.length):
        if bool(stor6.length) == stor6.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor6.length):
            if bool(stor6.length) == stor6.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor6.length.field_1:
                if 31 < stor6.length.field_1:
                    mem[128] = uint256(stor6.field_0)
                    idx = 128
                    s = 0
                    while stor6.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor6[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor6.length.field_1), data=mem[128 len ceil32(stor6.length.field_1)])
                mem[128] = 256 * stor6.length.field_8
        else:
            if bool(stor6.length) == stor6.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor6.length.field_1:
                if 31 < stor6.length.field_1:
                    mem[128] = uint256(stor6.field_0)
                    idx = 128
                    s = 0
                    while stor6.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor6[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor6.length.field_1), data=mem[128 len ceil32(stor6.length.field_1)])
                mem[128] = 256 * stor6.length.field_8
        mem[ceil32(stor6.length.field_1) + 192 len ceil32(stor6.length.field_1)] = mem[128 len ceil32(stor6.length.field_1)]
        if ceil32(stor6.length.field_1) > stor6.length.field_1:
            mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor6.length.field_1), data=mem[128 len ceil32(stor6.length.field_1)], mem[(2 * ceil32(stor6.length.field_1)) + 192 len 2 * ceil32(stor6.length.field_1)]), 
    if bool(stor6.length) == stor6.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor6.length):
        if bool(stor6.length) == stor6.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor6.length.field_1:
            if 31 < stor6.length.field_1:
                mem[128] = uint256(stor6.field_0)
                idx = 128
                s = 0
                while stor6.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor6[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor6.length % 128, data=mem[128 len ceil32(stor6.length.field_1)])
            mem[128] = 256 * stor6.length.field_8
    else:
        if bool(stor6.length) == stor6.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor6.length.field_1:
            if 31 < stor6.length.field_1:
                mem[128] = uint256(stor6.field_0)
                idx = 128
                s = 0
                while stor6.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor6[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor6.length % 128, data=mem[128 len ceil32(stor6.length.field_1)])
            mem[128] = 256 * stor6.length.field_8
    mem[ceil32(stor6.length.field_1) + 192 len ceil32(stor6.length.field_1)] = mem[128 len ceil32(stor6.length.field_1)]
    if ceil32(stor6.length.field_1) > stor6.length.field_1:
        mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + 192] = 0
    return Array(len=stor6.length % 128, data=mem[128 len ceil32(stor6.length.field_1)], mem[(2 * ceil32(stor6.length.field_1)) + 192 len 2 * ceil32(stor6.length.field_1)]), 
}

function claim(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if block.timestamp < sub_074c3514:
        revert with 'NH{q', 17
    if not sub_5bec4cb4:
        revert with 'NH{q', 18
    if block.timestamp - sub_074c3514 / sub_5bec4cb4 > -2:
        revert with 'NH{q', 17
    if (block.timestamp - sub_074c3514 / sub_5bec4cb4) + 1 <= stakers[address(msg.sender)].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'CLAIM2: You have no share to claim.'
    if stakers[address(msg.sender)].field_256 < stakers[address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'CLAIM3: You have no share to claim.'
    if stakers[address(msg.sender)].field_768 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'CLAIM: You are not contributing to the pool.'
    if stor11[address(msg.sender)][arg1]:
        revert with 0, 'CLAIM4: Nothing to claim'
    if not totalStaked[arg1]:
        revert with 'NH{q', 18
    if totalStaked[arg1] and 10000 > -1 / totalStaked[arg1]:
        revert with 'NH{q', 17
    if not totalStaked[arg1]:
        revert with 'NH{q', 18
    if 10000 * totalStaked[arg1] / totalStaked[arg1] != 10000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if not 10000 * totalStaked[arg1]:
        revert with 'NH{q', 18
    if not payouts[arg1]:
        if block.timestamp < sub_074c3514:
            revert with 'NH{q', 17
        if not sub_5bec4cb4:
            revert with 'NH{q', 18
        if block.timestamp - sub_074c3514 / sub_5bec4cb4 > -2:
            revert with 'NH{q', 17
        stakers[address(msg.sender)].field_256 = (block.timestamp - sub_074c3514 / sub_5bec4cb4) + 1
        if stakers[address(msg.sender)].field_1024 > -1:
            revert with 'NH{q', 17
        stor11[address(msg.sender)][arg1] = 1
        require ext_code.size(PAYMENT_TOKENAddress)
        call PAYMENT_TOKENAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        emit Claimed(0, msg.sender);
    else:
        if payouts[arg1] and sub_1593e395[address(msg.sender)][arg1] / 10000 * totalStaked[arg1] > -1 / payouts[arg1]:
            revert with 'NH{q', 17
        if not payouts[arg1]:
            revert with 'NH{q', 18
        if payouts[arg1] * sub_1593e395[address(msg.sender)][arg1] / 10000 * totalStaked[arg1] / payouts[arg1] != sub_1593e395[address(msg.sender)][arg1] / 10000 * totalStaked[arg1]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if block.timestamp < sub_074c3514:
            revert with 'NH{q', 17
        if not sub_5bec4cb4:
            revert with 'NH{q', 18
        if block.timestamp - sub_074c3514 / sub_5bec4cb4 > -2:
            revert with 'NH{q', 17
        stakers[address(msg.sender)].field_256 = (block.timestamp - sub_074c3514 / sub_5bec4cb4) + 1
        if stakers[address(msg.sender)].field_1024 > -(payouts[arg1] * sub_1593e395[address(msg.sender)][arg1] / 10000 * totalStaked[arg1] / 10000) - 1:
            revert with 'NH{q', 17
        stakers[address(msg.sender)].field_1024 += payouts[arg1] * sub_1593e395[address(msg.sender)][arg1] / 10000 * totalStaked[arg1] / 10000
        stor11[address(msg.sender)][arg1] = 1
        require ext_code.size(PAYMENT_TOKENAddress)
        call PAYMENT_TOKENAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, payouts[arg1] * sub_1593e395[address(msg.sender)][arg1] / 10000 * totalStaked[arg1] / 10000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        emit Claimed((payouts[arg1] * sub_1593e395[address(msg.sender)][arg1] / 10000 * totalStaked[arg1] / 10000), msg.sender);
}

function unstake() payable {
    if stakers[address(msg.sender)].field_768 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UNSTAKE: You have nothing to unstake.'
    if block.timestamp < sub_074c3514:
        revert with 'NH{q', 17
    if not sub_5bec4cb4:
        revert with 'NH{q', 18
    if block.timestamp - sub_074c3514 / sub_5bec4cb4 > -2:
        revert with 'NH{q', 17
    if block.timestamp < sub_074c3514:
        revert with 'NH{q', 17
    if not sub_5bec4cb4:
        revert with 'NH{q', 18
    if block.timestamp - sub_074c3514 / sub_5bec4cb4 > -2:
        revert with 'NH{q', 17
    if (block.timestamp - sub_074c3514 / sub_5bec4cb4) + 1 > stakers[address(msg.sender)].field_256:
        if (block.timestamp - sub_074c3514 / sub_5bec4cb4) + 1 <= stakers[address(msg.sender)].field_256:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'CLAIM2: You have no share to claim.'
        if stakers[address(msg.sender)].field_256 < stakers[address(msg.sender)].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'CLAIM3: You have no share to claim.'
        if stakers[address(msg.sender)].field_768 <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'CLAIM: You are not contributing to the pool.'
        if block.timestamp < sub_074c3514:
            revert with 'NH{q', 17
        if not sub_5bec4cb4:
            revert with 'NH{q', 18
        # nil
    else:
        if (block.timestamp - sub_074c3514 / sub_5bec4cb4) + 1 < stakers[address(msg.sender)].field_0:
            revert with 'NH{q', 17
        if (block.timestamp - sub_074c3514 / sub_5bec4cb4) + -stakers[address(msg.sender)].field_0 + 1 > sub_d95dc4d2:
            if sub_d95dc4d2 < 1:
                revert with 'NH{q', 17
            if sub_d95dc4d2 - 1 >= sub_f566b04d.length:
                revert with 'NH{q', 50
            if not stakers[address(msg.sender)].field_768:
                if 0 > stakers[address(msg.sender)].field_768:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stakers[address(msg.sender)].field_768 < 0:
                    revert with 'NH{q', 17
                stakers[address(msg.sender)].field_768 = 0
                if block.timestamp < sub_074c3514:
                    revert with 'NH{q', 17
                if not sub_5bec4cb4:
                    revert with 'NH{q', 18
                if block.timestamp - sub_074c3514 / sub_5bec4cb4 > -2:
                    revert with 'NH{q', 17
                stakers[address(msg.sender)].field_512 = (block.timestamp - sub_074c3514 / sub_5bec4cb4) + 1
                if block.timestamp < sub_074c3514:
                    revert with 'NH{q', 17
                if not sub_5bec4cb4:
                    revert with 'NH{q', 18
                if block.timestamp - sub_074c3514 / sub_5bec4cb4 > -2:
                    revert with 'NH{q', 17
                sub_1593e395[address(msg.sender)][(block.timestamp - stor12 / stor13) + 1] = 0
                if 0 >= sub_564185b8.length:
                    revert with 'NH{q', 50
                require ext_code.size(sub_6251be71Address)
                call sub_6251be71Address.0xa9059cbb with:
                     gas gas_remaining wei
                    args POOLAddress, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if 1 >= sub_564185b8.length:
                    revert with 'NH{q', 50
                require ext_code.size(sub_6251be71Address)
                call sub_6251be71Address.0xa9059cbb with:
                     gas gas_remaining wei
                    args sub_6251be71Address, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if 2 >= sub_564185b8.length:
                    revert with 'NH{q', 50
                require ext_code.size(sub_6251be71Address)
                call sub_6251be71Address.0xa9059cbb with:
                     gas gas_remaining wei
                    args TREASURYAddress, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if 3 >= sub_564185b8.length:
                    revert with 'NH{q', 50
                require ext_code.size(sub_6251be71Address)
                call sub_6251be71Address.0xa9059cbb with:
                     gas gas_remaining wei
                    args MARKETINGAddress, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(sub_6251be71Address)
                call sub_6251be71Address.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, stakers[address(msg.sender)].field_768
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                emit Unstaked(stakers[address(msg.sender)].field_768, msg.sender);
            else:
                if stakers[address(msg.sender)].field_768 and sub_f566b04d[stor18] > -1 / stakers[address(msg.sender)].field_768:
                    revert with 'NH{q', 17
                if not stakers[address(msg.sender)].field_768:
                    revert with 'NH{q', 18
                if stakers[address(msg.sender)].field_768 * sub_f566b04d[stor18] / stakers[address(msg.sender)].field_768 != sub_f566b04d[stor18]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if stakers[address(msg.sender)].field_768 * sub_f566b04d[stor18] / 10000 > stakers[address(msg.sender)].field_768:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stakers[address(msg.sender)].field_768 < stakers[address(msg.sender)].field_768 * sub_f566b04d[stor18] / 10000:
                    revert with 'NH{q', 17
                stakers[address(msg.sender)].field_768 = 0
                if block.timestamp < sub_074c3514:
                    revert with 'NH{q', 17
                if not sub_5bec4cb4:
                    revert with 'NH{q', 18
                if block.timestamp - sub_074c3514 / sub_5bec4cb4 > -2:
                    revert with 'NH{q', 17
                stakers[address(msg.sender)].field_512 = (block.timestamp - sub_074c3514 / sub_5bec4cb4) + 1
                if block.timestamp < sub_074c3514:
                    revert with 'NH{q', 17
                if not sub_5bec4cb4:
                    revert with 'NH{q', 18
                if block.timestamp - sub_074c3514 / sub_5bec4cb4 > -2:
                    revert with 'NH{q', 17
                sub_1593e395[address(msg.sender)][(block.timestamp - stor12 / stor13) + 1] = 0
                if 0 >= sub_564185b8.length:
                    revert with 'NH{q', 50
                if not stakers[address(msg.sender)].field_768 * sub_f566b04d[stor18] / 10000:
                    require ext_code.size(sub_6251be71Address)
                    call sub_6251be71Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args POOLAddress, 0
                else:
                    if stakers[address(msg.sender)].field_768 * sub_f566b04d[stor18] / 10000 and uint256(sub_564185b8.field_0) > -1 / stakers[address(msg.sender)].field_768 * sub_f566b04d[stor18] / 10000:
                        revert with 'NH{q', 17
                    if not stakers[address(msg.sender)].field_768 * sub_f566b04d[stor18] / 10000:
                        revert with 'NH{q', 18
                    if stakers[address(msg.sender)].field_768 * sub_f566b04d[stor18] / 10000 * uint256(sub_564185b8.field_0) / stakers[address(msg.sender)].field_768 * sub_f566b04d[stor18] / 10000 != uint256(sub_564185b8.field_0):
                        revert with 0, 'SafeMath: multiplication overflow'
                    require ext_code.size(sub_6251be71Address)
                    call sub_6251be71Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args POOLAddress, stakers[address(msg.sender)].field_768 * sub_f566b04d[stor18] / 10000 * uint256(sub_564185b8.field_0) / 10000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if 1 >= sub_564185b8.length:
                    revert with 'NH{q', 50
                if not stakers[address(msg.sender)].field_768 * sub_f566b04d[stor18] / 10000:
                    require ext_code.size(sub_6251be71Address)
                    call sub_6251be71Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args sub_6251be71Address, 0
                else:
                    if stakers[address(msg.sender)].field_768 * sub_f566b04d[stor18] / 10000 and uint256(sub_564185b8.field_256) > -1 / stakers[address(msg.sender)].field_768 * sub_f566b04d[stor18] / 10000:
                        revert with 'NH{q', 17
                    if not stakers[address(msg.sender)].field_768 * sub_f566b04d[stor18] / 10000:
                        revert with 'NH{q', 18
                    if stakers[address(msg.sender)].field_768 * sub_f566b04d[stor18] / 10000 * uint256(sub_564185b8.field_256) / stakers[address(msg.sender)].field_768 * sub_f566b04d[stor18] / 10000 != uint256(sub_564185b8.field_256):
                        revert with 0, 'SafeMath: multiplication overflow'
                    require ext_code.size(sub_6251be71Address)
                    call sub_6251be71Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args sub_6251be71Address, stakers[address(msg.sender)].field_768 * sub_f566b04d[stor18] / 10000 * uint256(sub_564185b8.field_256) / 10000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if 2 >= sub_564185b8.length:
                    revert with 'NH{q', 50
                if not stakers[address(msg.sender)].field_768 * sub_f566b04d[stor18] / 10000:
                    require ext_code.size(sub_6251be71Address)
                    call sub_6251be71Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args TREASURYAddress, 0
                else:
                    if stakers[address(msg.sender)].field_768 * sub_f566b04d[stor18] / 10000 and uint256(sub_564185b8.field_512) > -1 / stakers[address(msg.sender)].field_768 * sub_f566b04d[stor18] / 10000:
                        revert with 'NH{q', 17
                    if not stakers[address(msg.sender)].field_768 * sub_f566b04d[stor18] / 10000:
                        revert with 'NH{q', 18
                    if stakers[address(msg.sender)].field_768 * sub_f566b04d[stor18] / 10000 * uint256(sub_564185b8.field_512) / stakers[address(msg.sender)].field_768 * sub_f566b04d[stor18] / 10000 != uint256(sub_564185b8.field_512):
                        revert with 0, 'SafeMath: multiplication overflow'
                    require ext_code.size(sub_6251be71Address)
                    call sub_6251be71Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args TREASURYAddress, stakers[address(msg.sender)].field_768 * sub_f566b04d[stor18] / 10000 * uint256(sub_564185b8.field_512) / 10000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if 3 >= sub_564185b8.length:
                    revert with 'NH{q', 50
                if not stakers[address(msg.sender)].field_768 * sub_f566b04d[stor18] / 10000:
                    require ext_code.size(sub_6251be71Address)
                    call sub_6251be71Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args MARKETINGAddress, 0
                else:
                    if stakers[address(msg.sender)].field_768 * sub_f566b04d[stor18] / 10000 and uint256(sub_564185b8.field_768) > -1 / stakers[address(msg.sender)].field_768 * sub_f566b04d[stor18] / 10000:
                        revert with 'NH{q', 17
                    if not stakers[address(msg.sender)].field_768 * sub_f566b04d[stor18] / 10000:
                        revert with 'NH{q', 18
                    if stakers[address(msg.sender)].field_768 * sub_f566b04d[stor18] / 10000 * uint256(sub_564185b8.field_768) / stakers[address(msg.sender)].field_768 * sub_f566b04d[stor18] / 10000 != uint256(sub_564185b8.field_768):
                        revert with 0, 'SafeMath: multiplication overflow'
                    require ext_code.size(sub_6251be71Address)
                    call sub_6251be71Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args MARKETINGAddress, stakers[address(msg.sender)].field_768 * sub_f566b04d[stor18] / 10000 * uint256(sub_564185b8.field_768) / 10000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(sub_6251be71Address)
                call sub_6251be71Address.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, stakers[address(msg.sender)].field_768 - (stakers[address(msg.sender)].field_768 * sub_f566b04d[stor18] / 10000)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                emit Unstaked((stakers[address(msg.sender)].field_768 - (stakers[address(msg.sender)].field_768 * sub_f566b04d[stor18] / 10000)), msg.sender);
        else:
            if block.timestamp < sub_074c3514:
                revert with 'NH{q', 17
            if not sub_5bec4cb4:
                revert with 'NH{q', 18
            if block.timestamp - sub_074c3514 / sub_5bec4cb4 > -2:
                revert with 'NH{q', 17
            if (block.timestamp - sub_074c3514 / sub_5bec4cb4) + 1 < stakers[address(msg.sender)].field_0:
                revert with 'NH{q', 17
            if (block.timestamp - sub_074c3514 / sub_5bec4cb4) + -stakers[address(msg.sender)].field_0 + 1 < 1:
                revert with 'NH{q', 17
            if (block.timestamp - sub_074c3514 / sub_5bec4cb4) - stakers[address(msg.sender)].field_0 >= sub_f566b04d.length:
                revert with 'NH{q', 50
            if not stakers[address(msg.sender)].field_768:
                if 0 > stakers[address(msg.sender)].field_768:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stakers[address(msg.sender)].field_768 < 0:
                    revert with 'NH{q', 17
                stakers[address(msg.sender)].field_768 = 0
                if block.timestamp < sub_074c3514:
                    revert with 'NH{q', 17
                if not sub_5bec4cb4:
                    revert with 'NH{q', 18
                if block.timestamp - sub_074c3514 / sub_5bec4cb4 > -2:
                    revert with 'NH{q', 17
                stakers[address(msg.sender)].field_512 = (block.timestamp - sub_074c3514 / sub_5bec4cb4) + 1
                if block.timestamp < sub_074c3514:
                    revert with 'NH{q', 17
                if not sub_5bec4cb4:
                    revert with 'NH{q', 18
                if block.timestamp - sub_074c3514 / sub_5bec4cb4 > -2:
                    revert with 'NH{q', 17
                sub_1593e395[address(msg.sender)][(block.timestamp - stor12 / stor13) + 1] = 0
                if 0 >= sub_564185b8.length:
                    revert with 'NH{q', 50
                require ext_code.size(sub_6251be71Address)
                call sub_6251be71Address.0xa9059cbb with:
                     gas gas_remaining wei
                    args POOLAddress, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if 1 >= sub_564185b8.length:
                    revert with 'NH{q', 50
                require ext_code.size(sub_6251be71Address)
                call sub_6251be71Address.0xa9059cbb with:
                     gas gas_remaining wei
                    args sub_6251be71Address, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if 2 >= sub_564185b8.length:
                    revert with 'NH{q', 50
                require ext_code.size(sub_6251be71Address)
                call sub_6251be71Address.0xa9059cbb with:
                     gas gas_remaining wei
                    args TREASURYAddress, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if 3 >= sub_564185b8.length:
                    revert with 'NH{q', 50
                require ext_code.size(sub_6251be71Address)
                call sub_6251be71Address.0xa9059cbb with:
                     gas gas_remaining wei
                    args MARKETINGAddress, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(sub_6251be71Address)
                call sub_6251be71Address.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, stakers[address(msg.sender)].field_768
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                emit Unstaked(stakers[address(msg.sender)].field_768, msg.sender);
            else:
                if stakers[address(msg.sender)].field_768 and stor[('name', 'sub_f566b04d', 17) + (block.timestamp - stor12 / stor13) - stor9[address(msg.sender)].field_0] > -1 / stakers[address(msg.sender)].field_768:
                    revert with 'NH{q', 17
                if not stakers[address(msg.sender)].field_768:
                    revert with 'NH{q', 18
                if stakers[address(msg.sender)].field_768 * stor[('name', 'sub_f566b04d', 17) + (block.timestamp - stor12 / stor13) - stor9[address(msg.sender)].field_0] / stakers[address(msg.sender)].field_768 != stor[('name', 'sub_f566b04d', 17) + (block.timestamp - stor12 / stor13) - stor9[address(msg.sender)].field_0]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if stakers[address(msg.sender)].field_768 * stor[('name', 'sub_f566b04d', 17) + (block.timestamp - stor12 / stor13) - stor9[address(msg.sender)].field_0] / 10000 > stakers[address(msg.sender)].field_768:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stakers[address(msg.sender)].field_768 < stakers[address(msg.sender)].field_768 * stor[('name', 'sub_f566b04d', 17) + (block.timestamp - stor12 / stor13) - stor9[address(msg.sender)].field_0] / 10000:
                    revert with 'NH{q', 17
                stakers[address(msg.sender)].field_768 = 0
                if block.timestamp < sub_074c3514:
                    revert with 'NH{q', 17
                if not sub_5bec4cb4:
                    revert with 'NH{q', 18
                if block.timestamp - sub_074c3514 / sub_5bec4cb4 > -2:
                    revert with 'NH{q', 17
                stakers[address(msg.sender)].field_512 = (block.timestamp - sub_074c3514 / sub_5bec4cb4) + 1
                if block.timestamp < sub_074c3514:
                    revert with 'NH{q', 17
                if not sub_5bec4cb4:
                    revert with 'NH{q', 18
                if block.timestamp - sub_074c3514 / sub_5bec4cb4 > -2:
                    revert with 'NH{q', 17
                sub_1593e395[address(msg.sender)][(block.timestamp - stor12 / stor13) + 1] = 0
                if 0 >= sub_564185b8.length:
                    revert with 'NH{q', 50
                if not stakers[address(msg.sender)].field_768 * stor[('name', 'sub_f566b04d', 17) + (block.timestamp - stor12 / stor13) - stor9[address(msg.sender)].field_0] / 10000:
                    require ext_code.size(sub_6251be71Address)
                    call sub_6251be71Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args POOLAddress, 0
                else:
                    if stakers[address(msg.sender)].field_768 * stor[('name', 'sub_f566b04d', 17) + (block.timestamp - stor12 / stor13) - stor9[address(msg.sender)].field_0] / 10000 and uint256(sub_564185b8.field_0) > -1 / stakers[address(msg.sender)].field_768 * stor[('name', 'sub_f566b04d', 17) + (block.timestamp - stor12 / stor13) - stor9[address(msg.sender)].field_0] / 10000:
                        revert with 'NH{q', 17
                    if not stakers[address(msg.sender)].field_768 * stor[('name', 'sub_f566b04d', 17) + (block.timestamp - stor12 / stor13) - stor9[address(msg.sender)].field_0] / 10000:
                        revert with 'NH{q', 18
                    if stakers[address(msg.sender)].field_768 * stor[('name', 'sub_f566b04d', 17) + (block.timestamp - stor12 / stor13) - stor9[address(msg.sender)].field_0] / 10000 * uint256(sub_564185b8.field_0) / stakers[address(msg.sender)].field_768 * stor[('name', 'sub_f566b04d', 17) + (block.timestamp - stor12 / stor13) - stor9[address(msg.sender)].field_0] / 10000 != uint256(sub_564185b8.field_0):
                        revert with 0, 'SafeMath: multiplication overflow'
                    require ext_code.size(sub_6251be71Address)
                    call sub_6251be71Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args POOLAddress, stakers[address(msg.sender)].field_768 * stor[('name', 'sub_f566b04d', 17) + (block.timestamp - stor12 / stor13) - stor9[address(msg.sender)].field_0] / 10000 * uint256(sub_564185b8.field_0) / 10000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if 1 >= sub_564185b8.length:
                    revert with 'NH{q', 50
                if not stakers[address(msg.sender)].field_768 * stor[('name', 'sub_f566b04d', 17) + (block.timestamp - stor12 / stor13) - stor9[address(msg.sender)].field_0] / 10000:
                    require ext_code.size(sub_6251be71Address)
                    call sub_6251be71Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args sub_6251be71Address, 0
                else:
                    if stakers[address(msg.sender)].field_768 * stor[('name', 'sub_f566b04d', 17) + (block.timestamp - stor12 / stor13) - stor9[address(msg.sender)].field_0] / 10000 and uint256(sub_564185b8.field_256) > -1 / stakers[address(msg.sender)].field_768 * stor[('name', 'sub_f566b04d', 17) + (block.timestamp - stor12 / stor13) - stor9[address(msg.sender)].field_0] / 10000:
                        revert with 'NH{q', 17
                    if not stakers[address(msg.sender)].field_768 * stor[('name', 'sub_f566b04d', 17) + (block.timestamp - stor12 / stor13) - stor9[address(msg.sender)].field_0] / 10000:
                        revert with 'NH{q', 18
                    if stakers[address(msg.sender)].field_768 * stor[('name', 'sub_f566b04d', 17) + (block.timestamp - stor12 / stor13) - stor9[address(msg.sender)].field_0] / 10000 * uint256(sub_564185b8.field_256) / stakers[address(msg.sender)].field_768 * stor[('name', 'sub_f566b04d', 17) + (block.timestamp - stor12 / stor13) - stor9[address(msg.sender)].field_0] / 10000 != uint256(sub_564185b8.field_256):
                        revert with 0, 'SafeMath: multiplication overflow'
                    require ext_code.size(sub_6251be71Address)
                    call sub_6251be71Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args sub_6251be71Address, stakers[address(msg.sender)].field_768 * stor[('name', 'sub_f566b04d', 17) + (block.timestamp - stor12 / stor13) - stor9[address(msg.sender)].field_0] / 10000 * uint256(sub_564185b8.field_256) / 10000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if 2 >= sub_564185b8.length:
                    revert with 'NH{q', 50
                if not stakers[address(msg.sender)].field_768 * stor[('name', 'sub_f566b04d', 17) + (block.timestamp - stor12 / stor13) - stor9[address(msg.sender)].field_0] / 10000:
                    require ext_code.size(sub_6251be71Address)
                    call sub_6251be71Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args TREASURYAddress, 0
                else:
                    if stakers[address(msg.sender)].field_768 * stor[('name', 'sub_f566b04d', 17) + (block.timestamp - stor12 / stor13) - stor9[address(msg.sender)].field_0] / 10000 and uint256(sub_564185b8.field_512) > -1 / stakers[address(msg.sender)].field_768 * stor[('name', 'sub_f566b04d', 17) + (block.timestamp - stor12 / stor13) - stor9[address(msg.sender)].field_0] / 10000:
                        revert with 'NH{q', 17
                    if not stakers[address(msg.sender)].field_768 * stor[('name', 'sub_f566b04d', 17) + (block.timestamp - stor12 / stor13) - stor9[address(msg.sender)].field_0] / 10000:
                        revert with 'NH{q', 18
                    if stakers[address(msg.sender)].field_768 * stor[('name', 'sub_f566b04d', 17) + (block.timestamp - stor12 / stor13) - stor9[address(msg.sender)].field_0] / 10000 * uint256(sub_564185b8.field_512) / stakers[address(msg.sender)].field_768 * stor[('name', 'sub_f566b04d', 17) + (block.timestamp - stor12 / stor13) - stor9[address(msg.sender)].field_0] / 10000 != uint256(sub_564185b8.field_512):
                        revert with 0, 'SafeMath: multiplication overflow'
                    require ext_code.size(sub_6251be71Address)
                    call sub_6251be71Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args TREASURYAddress, stakers[address(msg.sender)].field_768 * stor[('name', 'sub_f566b04d', 17) + (block.timestamp - stor12 / stor13) - stor9[address(msg.sender)].field_0] / 10000 * uint256(sub_564185b8.field_512) / 10000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if 3 >= sub_564185b8.length:
                    revert with 'NH{q', 50
                if not stakers[address(msg.sender)].field_768 * stor[('name', 'sub_f566b04d', 17) + (block.timestamp - stor12 / stor13) - stor9[address(msg.sender)].field_0] / 10000:
                    require ext_code.size(sub_6251be71Address)
                    call sub_6251be71Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args MARKETINGAddress, 0
                else:
                    if stakers[address(msg.sender)].field_768 * stor[('name', 'sub_f566b04d', 17) + (block.timestamp - stor12 / stor13) - stor9[address(msg.sender)].field_0] / 10000 and uint256(sub_564185b8.field_768) > -1 / stakers[address(msg.sender)].field_768 * stor[('name', 'sub_f566b04d', 17) + (block.timestamp - stor12 / stor13) - stor9[address(msg.sender)].field_0] / 10000:
                        revert with 'NH{q', 17
                    if not stakers[address(msg.sender)].field_768 * stor[('name', 'sub_f566b04d', 17) + (block.timestamp - stor12 / stor13) - stor9[address(msg.sender)].field_0] / 10000:
                        revert with 'NH{q', 18
                    if stakers[address(msg.sender)].field_768 * stor[('name', 'sub_f566b04d', 17) + (block.timestamp - stor12 / stor13) - stor9[address(msg.sender)].field_0] / 10000 * uint256(sub_564185b8.field_768) / stakers[address(msg.sender)].field_768 * stor[('name', 'sub_f566b04d', 17) + (block.timestamp - stor12 / stor13) - stor9[address(msg.sender)].field_0] / 10000 != uint256(sub_564185b8.field_768):
                        revert with 0, 'SafeMath: multiplication overflow'
                    require ext_code.size(sub_6251be71Address)
                    call sub_6251be71Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args MARKETINGAddress, stakers[address(msg.sender)].field_768 * stor[('name', 'sub_f566b04d', 17) + (block.timestamp - stor12 / stor13) - stor9[address(msg.sender)].field_0] / 10000 * uint256(sub_564185b8.field_768) / 10000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(sub_6251be71Address)
                call sub_6251be71Address.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, stakers[address(msg.sender)].field_768 - (stakers[address(msg.sender)].field_768 * stor[('name', 'sub_f566b04d', 17) + (block.timestamp - stor12 / stor13) - stor9[address(msg.sender)].field_0] / 10000)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                emit Unstaked((stakers[address(msg.sender)].field_768 - (stakers[address(msg.sender)].field_768 * stor[('name', 'sub_f566b04d', 17) + (block.timestamp - stor12 / stor13) - stor9[address(msg.sender)].field_0] / 10000)), msg.sender);
}

function stake(uint256 arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        if block.timestamp < sub_074c3514:
            revert with 'NH{q', 17
        if not sub_5bec4cb4:
            revert with 'NH{q', 18
        if block.timestamp - sub_074c3514 / sub_5bec4cb4 > -2:
            revert with 'NH{q', 17
        if not stakers[address(msg.sender)].field_768:
            if 0 > arg1:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 < 0:
                revert with 'NH{q', 17
            if stakers[address(msg.sender)].field_512 == (block.timestamp - sub_074c3514 / sub_5bec4cb4) + 1:
                if arg1 > -stakers[address(msg.sender)].field_768 - 1:
                    revert with 'NH{q', 17
                if arg1 + stakers[address(msg.sender)].field_768 < arg1:
                    revert with 0, 'SafeMath: addition overflow'
                if arg1 + stakers[address(msg.sender)].field_768 < minStake:
                    revert with 0, 'STAKE: Below min amount'
                if arg1 > -stakers[address(msg.sender)].field_768 - 1:
                    revert with 'NH{q', 17
                if arg1 + stakers[address(msg.sender)].field_768 < arg1:
                    revert with 0, 'SafeMath: addition overflow'
                if arg1 + stakers[address(msg.sender)].field_768 > maxStake:
                    revert with 0, 'STAKE: Above max amount'
                require ext_code.size(sub_6251be71Address)
                call sub_6251be71Address.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if 0 >= sub_88b6e922.length:
                    revert with 'NH{q', 50
                require ext_code.size(sub_6251be71Address)
                call sub_6251be71Address.0xa9059cbb with:
                     gas gas_remaining wei
                    args POOLAddress, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if 1 >= sub_88b6e922.length:
                    revert with 'NH{q', 50
                require ext_code.size(sub_6251be71Address)
                call sub_6251be71Address.0xa9059cbb with:
                     gas gas_remaining wei
                    args sub_6251be71Address, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if stakers[address(msg.sender)].field_0:
                    if not stakers[address(msg.sender)].field_256:
                        if block.timestamp < sub_074c3514:
                            revert with 'NH{q', 17
                        if not sub_5bec4cb4:
                            revert with 'NH{q', 18
                        if block.timestamp - sub_074c3514 / sub_5bec4cb4 > -2:
                            revert with 'NH{q', 17
                        stakers[address(msg.sender)].field_256 = (block.timestamp - sub_074c3514 / sub_5bec4cb4) + 1
                else:
                    if block.timestamp < sub_074c3514:
                        revert with 'NH{q', 17
                    if not sub_5bec4cb4:
                        revert with 'NH{q', 18
                    if block.timestamp - sub_074c3514 / sub_5bec4cb4 > -2:
                        revert with 'NH{q', 17
                    if stakers[address(msg.sender)].field_256:
                        stakers[address(msg.sender)].field_0 = (block.timestamp - sub_074c3514 / sub_5bec4cb4) + 1
                    else:
                        if block.timestamp < sub_074c3514:
                            revert with 'NH{q', 17
                        if not sub_5bec4cb4:
                            revert with 'NH{q', 18
                        if block.timestamp - sub_074c3514 / sub_5bec4cb4 > -2:
                            revert with 'NH{q', 17
                        stakers[address(msg.sender)].field_0 = (block.timestamp - sub_074c3514 / sub_5bec4cb4) + 1
                        stakers[address(msg.sender)].field_256 = (block.timestamp - sub_074c3514 / sub_5bec4cb4) + 1
                stakers[address(msg.sender)].field_512 = 0
                stakers[address(msg.sender)].field_768 = arg1
                if block.timestamp < sub_074c3514:
                    revert with 'NH{q', 17
                if not sub_5bec4cb4:
                    revert with 'NH{q', 18
                if block.timestamp - sub_074c3514 / sub_5bec4cb4 > -2:
                    revert with 'NH{q', 17
                sub_1593e395[address(msg.sender)][(block.timestamp - stor12 / stor13) + 1] = arg1
                if block.timestamp < sub_074c3514:
                    revert with 'NH{q', 17
                if not sub_5bec4cb4:
                    revert with 'NH{q', 18
                if block.timestamp - sub_074c3514 / sub_5bec4cb4 > -2:
                    revert with 'NH{q', 17
                if totalStaked[(block.timestamp - stor12 / stor13) + 1] > -arg1 - 1:
                    revert with 'NH{q', 17
                totalStaked[(block.timestamp - stor12 / stor13) + 1] += arg1
                emit Staked(arg1, msg.sender);
            else:
                if block.timestamp < sub_074c3514:
                    revert with 'NH{q', 17
                if not sub_5bec4cb4:
                    revert with 'NH{q', 18
                if block.timestamp - sub_074c3514 / sub_5bec4cb4 > -2:
                    revert with 'NH{q', 17
                if sub_1593e395[address(msg.sender)][(block.timestamp - stor12 / stor13) + 1] > -arg1 - 1:
                    revert with 'NH{q', 17
                if sub_1593e395[address(msg.sender)][(block.timestamp - stor12 / stor13) + 1] + arg1 < sub_1593e395[address(msg.sender)][(block.timestamp - stor12 / stor13) + 1]:
                    revert with 0, 'SafeMath: addition overflow'
                if sub_1593e395[address(msg.sender)][(block.timestamp - stor12 / stor13) + 1] + arg1 > -stakers[address(msg.sender)].field_768 - 1:
                    revert with 'NH{q', 17
                if stakers[address(msg.sender)].field_768 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if sub_1593e395[address(msg.sender)][(block.timestamp - stor12 / stor13) + 1] + arg1 + stakers[address(msg.sender)].field_768 < minStake:
                    revert with 0, 'STAKE: Below min amount'
                if sub_1593e395[address(msg.sender)][(block.timestamp - stor12 / stor13) + 1] + arg1 > -stakers[address(msg.sender)].field_768 - 1:
                    revert with 'NH{q', 17
                if stakers[address(msg.sender)].field_768 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if sub_1593e395[address(msg.sender)][(block.timestamp - stor12 / stor13) + 1] + arg1 + stakers[address(msg.sender)].field_768 > maxStake:
                    revert with 0, 'STAKE: Above max amount'
                require ext_code.size(sub_6251be71Address)
                call sub_6251be71Address.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if 0 >= sub_88b6e922.length:
                    revert with 'NH{q', 50
                require ext_code.size(sub_6251be71Address)
                call sub_6251be71Address.0xa9059cbb with:
                     gas gas_remaining wei
                    args POOLAddress, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if 1 >= sub_88b6e922.length:
                    revert with 'NH{q', 50
                require ext_code.size(sub_6251be71Address)
                call sub_6251be71Address.0xa9059cbb with:
                     gas gas_remaining wei
                    args sub_6251be71Address, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if stakers[address(msg.sender)].field_0:
                    if not stakers[address(msg.sender)].field_256:
                        if block.timestamp < sub_074c3514:
                            revert with 'NH{q', 17
                        if not sub_5bec4cb4:
                            revert with 'NH{q', 18
                        if block.timestamp - sub_074c3514 / sub_5bec4cb4 > -2:
                            revert with 'NH{q', 17
                        stakers[address(msg.sender)].field_256 = (block.timestamp - sub_074c3514 / sub_5bec4cb4) + 1
                else:
                    if block.timestamp < sub_074c3514:
                        revert with 'NH{q', 17
                    if not sub_5bec4cb4:
                        revert with 'NH{q', 18
                    if block.timestamp - sub_074c3514 / sub_5bec4cb4 > -2:
                        revert with 'NH{q', 17
                    if stakers[address(msg.sender)].field_256:
                        stakers[address(msg.sender)].field_0 = (block.timestamp - sub_074c3514 / sub_5bec4cb4) + 1
                    else:
                        if block.timestamp < sub_074c3514:
                            revert with 'NH{q', 17
                        if not sub_5bec4cb4:
                            revert with 'NH{q', 18
                        if block.timestamp - sub_074c3514 / sub_5bec4cb4 > -2:
                            revert with 'NH{q', 17
                        stakers[address(msg.sender)].field_0 = (block.timestamp - sub_074c3514 / sub_5bec4cb4) + 1
                        stakers[address(msg.sender)].field_256 = (block.timestamp - sub_074c3514 / sub_5bec4cb4) + 1
                stakers[address(msg.sender)].field_512 = 0
                stakers[address(msg.sender)].field_768 = sub_1593e395[address(msg.sender)][(block.timestamp - stor12 / stor13) + 1] + arg1
                if block.timestamp < sub_074c3514:
                    revert with 'NH{q', 17
                if not sub_5bec4cb4:
                    revert with 'NH{q', 18
                if block.timestamp - sub_074c3514 / sub_5bec4cb4 > -2:
                    revert with 'NH{q', 17
                sub_1593e395[address(msg.sender)][(block.timestamp - stor12 / stor13) + 1] += arg1
                if block.timestamp < sub_074c3514:
                    revert with 'NH{q', 17
                if not sub_5bec4cb4:
                    revert with 'NH{q', 18
                if block.timestamp - sub_074c3514 / sub_5bec4cb4 > -2:
                    revert with 'NH{q', 17
                if totalStaked[(block.timestamp - stor12 / stor13) + 1] > -sub_1593e395[address(msg.sender)][(block.timestamp - stor12 / stor13) + 1] + -arg1 - 1:
                    revert with 'NH{q', 17
                totalStaked[(block.timestamp - stor12 / stor13) + 1] = totalStaked[(block.timestamp - stor12 / stor13) + 1] + sub_1593e395[address(msg.sender)][(block.timestamp - stor12 / stor13) + 1] + arg1
                emit Staked((sub_1593e395[address(msg.sender)][(block.timestamp - stor12 / stor13) + 1] + arg1), msg.sender);
        else:
            if not arg2:
                if sub_1593e395[address(msg.sender)][(block.timestamp - stor12 / stor13) + 1]:
                    revert with 0, 'STAKE: You already merged'
                if stakers[address(msg.sender)].field_0:
                    if not stakers[address(msg.sender)].field_256:
                        if block.timestamp < sub_074c3514:
                            revert with 'NH{q', 17
                        if not sub_5bec4cb4:
                            revert with 'NH{q', 18
                        if block.timestamp - sub_074c3514 / sub_5bec4cb4 > -2:
                            revert with 'NH{q', 17
                        stakers[address(msg.sender)].field_256 = (block.timestamp - sub_074c3514 / sub_5bec4cb4) + 1
                else:
                    if block.timestamp < sub_074c3514:
                        revert with 'NH{q', 17
                    if not sub_5bec4cb4:
                        revert with 'NH{q', 18
                    if block.timestamp - sub_074c3514 / sub_5bec4cb4 > -2:
                        revert with 'NH{q', 17
                    if stakers[address(msg.sender)].field_256:
                        stakers[address(msg.sender)].field_0 = (block.timestamp - sub_074c3514 / sub_5bec4cb4) + 1
                    else:
                        if block.timestamp < sub_074c3514:
                            revert with 'NH{q', 17
                        if not sub_5bec4cb4:
                            revert with 'NH{q', 18
                        if block.timestamp - sub_074c3514 / sub_5bec4cb4 > -2:
                            revert with 'NH{q', 17
                        stakers[address(msg.sender)].field_0 = (block.timestamp - sub_074c3514 / sub_5bec4cb4) + 1
                        stakers[address(msg.sender)].field_256 = (block.timestamp - sub_074c3514 / sub_5bec4cb4) + 1
                stakers[address(msg.sender)].field_512 = 0
                if block.timestamp < sub_074c3514:
                    revert with 'NH{q', 17
                if not sub_5bec4cb4:
                    revert with 'NH{q', 18
                if block.timestamp - sub_074c3514 / sub_5bec4cb4 > -2:
                    revert with 'NH{q', 17
                sub_1593e395[address(msg.sender)][(block.timestamp - stor12 / stor13) + 1] = stakers[address(msg.sender)].field_768
                if block.timestamp < sub_074c3514:
                    revert with 'NH{q', 17
                if not sub_5bec4cb4:
                    revert with 'NH{q', 18
                if block.timestamp - sub_074c3514 / sub_5bec4cb4 > -2:
                    revert with 'NH{q', 17
                if totalStaked[(block.timestamp - stor12 / stor13) + 1] > -stakers[address(msg.sender)].field_768 - 1:
                    revert with 'NH{q', 17
                totalStaked[(block.timestamp - stor12 / stor13) + 1] += stakers[address(msg.sender)].field_768
                emit Staked(stakers[address(msg.sender)].field_768, msg.sender);
            else:
                if 0 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 < 0:
                    revert with 'NH{q', 17
                if stakers[address(msg.sender)].field_512 == (block.timestamp - sub_074c3514 / sub_5bec4cb4) + 1:
                    if arg1 > -stakers[address(msg.sender)].field_768 - 1:
                        revert with 'NH{q', 17
                    if arg1 + stakers[address(msg.sender)].field_768 < arg1:
                        revert with 0, 'SafeMath: addition overflow'
                    if arg1 + stakers[address(msg.sender)].field_768 < minStake:
                        revert with 0, 'STAKE: Below min amount'
                    if arg1 > -stakers[address(msg.sender)].field_768 - 1:
                        revert with 'NH{q', 17
                    if arg1 + stakers[address(msg.sender)].field_768 < arg1:
                        revert with 0, 'SafeMath: addition overflow'
                    if arg1 + stakers[address(msg.sender)].field_768 > maxStake:
                        revert with 0, 'STAKE: Above max amount'
                    require ext_code.size(sub_6251be71Address)
                    call sub_6251be71Address.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if 0 >= sub_88b6e922.length:
                        revert with 'NH{q', 50
                    require ext_code.size(sub_6251be71Address)
                    call sub_6251be71Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args POOLAddress, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if 1 >= sub_88b6e922.length:
                        revert with 'NH{q', 50
                    require ext_code.size(sub_6251be71Address)
                    call sub_6251be71Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args sub_6251be71Address, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if stakers[address(msg.sender)].field_0:
                        if not stakers[address(msg.sender)].field_256:
                            if block.timestamp < sub_074c3514:
                                revert with 'NH{q', 17
                            if not sub_5bec4cb4:
                                revert with 'NH{q', 18
                            if block.timestamp - sub_074c3514 / sub_5bec4cb4 > -2:
                                revert with 'NH{q', 17
                            stakers[address(msg.sender)].field_256 = (block.timestamp - sub_074c3514 / sub_5bec4cb4) + 1
                    else:
                        if block.timestamp < sub_074c3514:
                            revert with 'NH{q', 17
                        if not sub_5bec4cb4:
                            revert with 'NH{q', 18
                        if block.timestamp - sub_074c3514 / sub_5bec4cb4 > -2:
                            revert with 'NH{q', 17
                        if stakers[address(msg.sender)].field_256:
                            stakers[address(msg.sender)].field_0 = (block.timestamp - sub_074c3514 / sub_5bec4cb4) + 1
                        else:
                            if block.timestamp < sub_074c3514:
                                revert with 'NH{q', 17
                            if not sub_5bec4cb4:
                                revert with 'NH{q', 18
                            if block.timestamp - sub_074c3514 / sub_5bec4cb4 > -2:
                                revert with 'NH{q', 17
                            stakers[address(msg.sender)].field_0 = (block.timestamp - sub_074c3514 / sub_5bec4cb4) + 1
                            stakers[address(msg.sender)].field_256 = (block.timestamp - sub_074c3514 / sub_5bec4cb4) + 1
                    stakers[address(msg.sender)].field_512 = 0
                    stakers[address(msg.sender)].field_768 = arg1
                    if block.timestamp < sub_074c3514:
                        revert with 'NH{q', 17
                    if not sub_5bec4cb4:
                        revert with 'NH{q', 18
                    if block.timestamp - sub_074c3514 / sub_5bec4cb4 > -2:
                        revert with 'NH{q', 17
                    sub_1593e395[address(msg.sender)][(block.timestamp - stor12 / stor13) + 1] = arg1
                    if block.timestamp < sub_074c3514:
                        revert with 'NH{q', 17
                    if not sub_5bec4cb4:
                        revert with 'NH{q', 18
                    if block.timestamp - sub_074c3514 / sub_5bec4cb4 > -2:
                        revert with 'NH{q', 17
                    if totalStaked[(block.timestamp - stor12 / stor13) + 1] > -arg1 - 1:
                        revert with 'NH{q', 17
                    totalStaked[(block.timestamp - stor12 / stor13) + 1] += arg1
                    emit Staked(arg1, msg.sender);
                else:
                    if block.timestamp < sub_074c3514:
                        revert with 'NH{q', 17
                    if not sub_5bec4cb4:
                        revert with 'NH{q', 18
                    if block.timestamp - sub_074c3514 / sub_5bec4cb4 > -2:
                        revert with 'NH{q', 17
                    if sub_1593e395[address(msg.sender)][(block.timestamp - stor12 / stor13) + 1] > -arg1 - 1:
                        revert with 'NH{q', 17
                    if sub_1593e395[address(msg.sender)][(block.timestamp - stor12 / stor13) + 1] + arg1 < sub_1593e395[address(msg.sender)][(block.timestamp - stor12 / stor13) + 1]:
                        revert with 0, 'SafeMath: addition overflow'
                    if sub_1593e395[address(msg.sender)][(block.timestamp - stor12 / stor13) + 1] + arg1 > -stakers[address(msg.sender)].field_768 - 1:
                        revert with 'NH{q', 17
                    if stakers[address(msg.sender)].field_768 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if sub_1593e395[address(msg.sender)][(block.timestamp - stor12 / stor13) + 1] + arg1 + stakers[address(msg.sender)].field_768 < minStake:
                        revert with 0, 'STAKE: Below min amount'
                    if sub_1593e395[address(msg.sender)][(block.timestamp - stor12 / stor13) + 1] + arg1 > -stakers[address(msg.sender)].field_768 - 1:
                        revert with 'NH{q', 17
                    if stakers[address(msg.sender)].field_768 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if sub_1593e395[address(msg.sender)][(block.timestamp - stor12 / stor13) + 1] + arg1 + stakers[address(msg.sender)].field_768 > maxStake:
                        revert with 0, 'STAKE: Above max amount'
                    require ext_code.size(sub_6251be71Address)
                    call sub_6251be71Address.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if 0 >= sub_88b6e922.length:
                        revert with 'NH{q', 50
                    require ext_code.size(sub_6251be71Address)
                    call sub_6251be71Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args POOLAddress, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if 1 >= sub_88b6e922.length:
                        revert with 'NH{q', 50
                    require ext_code.size(sub_6251be71Address)
                    call sub_6251be71Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args sub_6251be71Address, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if stakers[address(msg.sender)].field_0:
                        if not stakers[address(msg.sender)].field_256:
                            if block.timestamp < sub_074c3514:
                                revert with 'NH{q', 17
                            if not sub_5bec4cb4:
                                revert with 'NH{q', 18
                            if block.timestamp - sub_074c3514 / sub_5bec4cb4 > -2:
                                revert with 'NH{q', 17
                            stakers[address(msg.sender)].field_256 = (block.timestamp - sub_074c3514 / sub_5bec4cb4) + 1
                    else:
                        if block.timestamp < sub_074c3514:
                            revert with 'NH{q', 17
                        if not sub_5bec4cb4:
                            revert with 'NH{q', 18
                        if block.timestamp - sub_074c3514 / sub_5bec4cb4 > -2:
                            revert with 'NH{q', 17
                        if stakers[address(msg.sender)].field_256:
                            stakers[address(msg.sender)].field_0 = (block.timestamp - sub_074c3514 / sub_5bec4cb4) + 1
                        else:
                            if block.timestamp < sub_074c3514:
                                revert with 'NH{q', 17
                            if not sub_5bec4cb4:
                                revert with 'NH{q', 18
                            if block.timestamp - sub_074c3514 / sub_5bec4cb4 > -2:
                                revert with 'NH{q', 17
                            stakers[address(msg.sender)].field_0 = (block.timestamp - sub_074c3514 / sub_5bec4cb4) + 1
                            stakers[address(msg.sender)].field_256 = (block.timestamp - sub_074c3514 / sub_5bec4cb4) + 1
                    stakers[address(msg.sender)].field_512 = 0
                    stakers[address(msg.sender)].field_768 = sub_1593e395[address(msg.sender)][(block.timestamp - stor12 / stor13) + 1] + arg1
                    if block.timestamp < sub_074c3514:
                        revert with 'NH{q', 17
                    if not sub_5bec4cb4:
                        revert with 'NH{q', 18
                    if block.timestamp - sub_074c3514 / sub_5bec4cb4 > -2:
                        revert with 'NH{q', 17
                    sub_1593e395[address(msg.sender)][(block.timestamp - stor12 / stor13) + 1] += arg1
                    if block.timestamp < sub_074c3514:
                        revert with 'NH{q', 17
                    if not sub_5bec4cb4:
                        revert with 'NH{q', 18
                    if block.timestamp - sub_074c3514 / sub_5bec4cb4 > -2:
                        revert with 'NH{q', 17
                    if totalStaked[(block.timestamp - stor12 / stor13) + 1] > -sub_1593e395[address(msg.sender)][(block.timestamp - stor12 / stor13) + 1] + -arg1 - 1:
                        revert with 'NH{q', 17
                    totalStaked[(block.timestamp - stor12 / stor13) + 1] = totalStaked[(block.timestamp - stor12 / stor13) + 1] + sub_1593e395[address(msg.sender)][(block.timestamp - stor12 / stor13) + 1] + arg1
                    emit Staked((sub_1593e395[address(msg.sender)][(block.timestamp - stor12 / stor13) + 1] + arg1), msg.sender);
    else:
        if arg1 and stakeFee > -1 / arg1:
            revert with 'NH{q', 17
        if not arg1:
            revert with 'NH{q', 18
        if arg1 * stakeFee / arg1 != stakeFee:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if block.timestamp < sub_074c3514:
            revert with 'NH{q', 17
        if not sub_5bec4cb4:
            revert with 'NH{q', 18
        if block.timestamp - sub_074c3514 / sub_5bec4cb4 > -2:
            revert with 'NH{q', 17
        if not stakers[address(msg.sender)].field_768:
            if arg1 * stakeFee / 10000 > arg1:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 < arg1 * stakeFee / 10000:
                revert with 'NH{q', 17
            if stakers[address(msg.sender)].field_512 == (block.timestamp - sub_074c3514 / sub_5bec4cb4) + 1:
                if arg1 - (arg1 * stakeFee / 10000) > -stakers[address(msg.sender)].field_768 - 1:
                    revert with 'NH{q', 17
                if stakers[address(msg.sender)].field_768 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if arg1 - (arg1 * stakeFee / 10000) + stakers[address(msg.sender)].field_768 < minStake:
                    revert with 0, 'STAKE: Below min amount'
                if arg1 - (arg1 * stakeFee / 10000) > -stakers[address(msg.sender)].field_768 - 1:
                    revert with 'NH{q', 17
                if stakers[address(msg.sender)].field_768 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if arg1 - (arg1 * stakeFee / 10000) + stakers[address(msg.sender)].field_768 > maxStake:
                    revert with 0, 'STAKE: Above max amount'
                require ext_code.size(sub_6251be71Address)
                call sub_6251be71Address.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if 0 >= sub_88b6e922.length:
                    revert with 'NH{q', 50
                if not arg1 * stakeFee / 10000:
                    require ext_code.size(sub_6251be71Address)
                    call sub_6251be71Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args POOLAddress, 0
                else:
                    if arg1 * stakeFee / 10000 and uint256(sub_88b6e922.field_0) > -1 / arg1 * stakeFee / 10000:
                        revert with 'NH{q', 17
                    if not arg1 * stakeFee / 10000:
                        revert with 'NH{q', 18
                    if arg1 * stakeFee / 10000 * uint256(sub_88b6e922.field_0) / arg1 * stakeFee / 10000 != uint256(sub_88b6e922.field_0):
                        revert with 0, 'SafeMath: multiplication overflow'
                    require ext_code.size(sub_6251be71Address)
                    call sub_6251be71Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args POOLAddress, arg1 * stakeFee / 10000 * uint256(sub_88b6e922.field_0) / 10000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if 1 >= sub_88b6e922.length:
                    revert with 'NH{q', 50
                if not arg1 * stakeFee / 10000:
                    require ext_code.size(sub_6251be71Address)
                    call sub_6251be71Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args sub_6251be71Address, 0
                else:
                    if arg1 * stakeFee / 10000 and uint256(sub_88b6e922.field_256) > -1 / arg1 * stakeFee / 10000:
                        revert with 'NH{q', 17
                    if not arg1 * stakeFee / 10000:
                        revert with 'NH{q', 18
                    if arg1 * stakeFee / 10000 * uint256(sub_88b6e922.field_256) / arg1 * stakeFee / 10000 != uint256(sub_88b6e922.field_256):
                        revert with 0, 'SafeMath: multiplication overflow'
                    require ext_code.size(sub_6251be71Address)
                    call sub_6251be71Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args sub_6251be71Address, arg1 * stakeFee / 10000 * uint256(sub_88b6e922.field_256) / 10000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if stakers[address(msg.sender)].field_0:
                    if not stakers[address(msg.sender)].field_256:
                        if block.timestamp < sub_074c3514:
                            revert with 'NH{q', 17
                        if not sub_5bec4cb4:
                            revert with 'NH{q', 18
                        if block.timestamp - sub_074c3514 / sub_5bec4cb4 > -2:
                            revert with 'NH{q', 17
                        stakers[address(msg.sender)].field_256 = (block.timestamp - sub_074c3514 / sub_5bec4cb4) + 1
                else:
                    if block.timestamp < sub_074c3514:
                        revert with 'NH{q', 17
                    if not sub_5bec4cb4:
                        revert with 'NH{q', 18
                    if block.timestamp - sub_074c3514 / sub_5bec4cb4 > -2:
                        revert with 'NH{q', 17
                    if stakers[address(msg.sender)].field_256:
                        stakers[address(msg.sender)].field_0 = (block.timestamp - sub_074c3514 / sub_5bec4cb4) + 1
                    else:
                        if block.timestamp < sub_074c3514:
                            revert with 'NH{q', 17
                        if not sub_5bec4cb4:
                            revert with 'NH{q', 18
                        if block.timestamp - sub_074c3514 / sub_5bec4cb4 > -2:
                            revert with 'NH{q', 17
                        stakers[address(msg.sender)].field_0 = (block.timestamp - sub_074c3514 / sub_5bec4cb4) + 1
                        stakers[address(msg.sender)].field_256 = (block.timestamp - sub_074c3514 / sub_5bec4cb4) + 1
                stakers[address(msg.sender)].field_512 = 0
                stakers[address(msg.sender)].field_768 = arg1 - (arg1 * stakeFee / 10000)
                if block.timestamp < sub_074c3514:
                    revert with 'NH{q', 17
                if not sub_5bec4cb4:
                    revert with 'NH{q', 18
                if block.timestamp - sub_074c3514 / sub_5bec4cb4 > -2:
                    revert with 'NH{q', 17
                sub_1593e395[address(msg.sender)][(block.timestamp - stor12 / stor13) + 1] = arg1 - (arg1 * stakeFee / 10000)
                if block.timestamp < sub_074c3514:
                    revert with 'NH{q', 17
                if not sub_5bec4cb4:
                    revert with 'NH{q', 18
                if block.timestamp - sub_074c3514 / sub_5bec4cb4 > -2:
                    revert with 'NH{q', 17
                if totalStaked[(block.timestamp - stor12 / stor13) + 1] > -arg1 + (arg1 * stakeFee / 10000) - 1:
                    revert with 'NH{q', 17
                totalStaked[(block.timestamp - stor12 / stor13) + 1] = totalStaked[(block.timestamp - stor12 / stor13) + 1] + arg1 - (arg1 * stakeFee / 10000)
                emit Staked((arg1 - (arg1 * stakeFee / 10000)), msg.sender);
            else:
                if block.timestamp < sub_074c3514:
                    revert with 'NH{q', 17
                if not sub_5bec4cb4:
                    revert with 'NH{q', 18
                if block.timestamp - sub_074c3514 / sub_5bec4cb4 > -2:
                    revert with 'NH{q', 17
                if sub_1593e395[address(msg.sender)][(block.timestamp - stor12 / stor13) + 1] > -arg1 + (arg1 * stakeFee / 10000) - 1:
                    revert with 'NH{q', 17
                if sub_1593e395[address(msg.sender)][(block.timestamp - stor12 / stor13) + 1] + arg1 - (arg1 * stakeFee / 10000) < sub_1593e395[address(msg.sender)][(block.timestamp - stor12 / stor13) + 1]:
                    revert with 0, 'SafeMath: addition overflow'
                if sub_1593e395[address(msg.sender)][(block.timestamp - stor12 / stor13) + 1] + arg1 - (arg1 * stakeFee / 10000) > -stakers[address(msg.sender)].field_768 - 1:
                    revert with 'NH{q', 17
                if stakers[address(msg.sender)].field_768 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if sub_1593e395[address(msg.sender)][(block.timestamp - stor12 / stor13) + 1] + arg1 - (arg1 * stakeFee / 10000) + stakers[address(msg.sender)].field_768 < minStake:
                    revert with 0, 'STAKE: Below min amount'
                if sub_1593e395[address(msg.sender)][(block.timestamp - stor12 / stor13) + 1] + arg1 - (arg1 * stakeFee / 10000) > -stakers[address(msg.sender)].field_768 - 1:
                    revert with 'NH{q', 17
                if stakers[address(msg.sender)].field_768 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if sub_1593e395[address(msg.sender)][(block.timestamp - stor12 / stor13) + 1] + arg1 - (arg1 * stakeFee / 10000) + stakers[address(msg.sender)].field_768 > maxStake:
                    revert with 0, 'STAKE: Above max amount'
                require ext_code.size(sub_6251be71Address)
                call sub_6251be71Address.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if 0 >= sub_88b6e922.length:
                    revert with 'NH{q', 50
                if not arg1 * stakeFee / 10000:
                    require ext_code.size(sub_6251be71Address)
                    call sub_6251be71Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args POOLAddress, 0
                else:
                    if arg1 * stakeFee / 10000 and uint256(sub_88b6e922.field_0) > -1 / arg1 * stakeFee / 10000:
                        revert with 'NH{q', 17
                    if not arg1 * stakeFee / 10000:
                        revert with 'NH{q', 18
                    if arg1 * stakeFee / 10000 * uint256(sub_88b6e922.field_0) / arg1 * stakeFee / 10000 != uint256(sub_88b6e922.field_0):
                        revert with 0, 'SafeMath: multiplication overflow'
                    require ext_code.size(sub_6251be71Address)
                    call sub_6251be71Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args POOLAddress, arg1 * stakeFee / 10000 * uint256(sub_88b6e922.field_0) / 10000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if 1 >= sub_88b6e922.length:
                    revert with 'NH{q', 50
                if not arg1 * stakeFee / 10000:
                    require ext_code.size(sub_6251be71Address)
                    call sub_6251be71Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args sub_6251be71Address, 0
                else:
                    if arg1 * stakeFee / 10000 and uint256(sub_88b6e922.field_256) > -1 / arg1 * stakeFee / 10000:
                        revert with 'NH{q', 17
                    if not arg1 * stakeFee / 10000:
                        revert with 'NH{q', 18
                    if arg1 * stakeFee / 10000 * uint256(sub_88b6e922.field_256) / arg1 * stakeFee / 10000 != uint256(sub_88b6e922.field_256):
                        revert with 0, 'SafeMath: multiplication overflow'
                    require ext_code.size(sub_6251be71Address)
                    call sub_6251be71Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args sub_6251be71Address, arg1 * stakeFee / 10000 * uint256(sub_88b6e922.field_256) / 10000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if stakers[address(msg.sender)].field_0:
                    if not stakers[address(msg.sender)].field_256:
                        if block.timestamp < sub_074c3514:
                            revert with 'NH{q', 17
                        if not sub_5bec4cb4:
                            revert with 'NH{q', 18
                        if block.timestamp - sub_074c3514 / sub_5bec4cb4 > -2:
                            revert with 'NH{q', 17
                        stakers[address(msg.sender)].field_256 = (block.timestamp - sub_074c3514 / sub_5bec4cb4) + 1
                else:
                    if block.timestamp < sub_074c3514:
                        revert with 'NH{q', 17
                    if not sub_5bec4cb4:
                        revert with 'NH{q', 18
                    if block.timestamp - sub_074c3514 / sub_5bec4cb4 > -2:
                        revert with 'NH{q', 17
                    if stakers[address(msg.sender)].field_256:
                        stakers[address(msg.sender)].field_0 = (block.timestamp - sub_074c3514 / sub_5bec4cb4) + 1
                    else:
                        if block.timestamp < sub_074c3514:
                            revert with 'NH{q', 17
                        if not sub_5bec4cb4:
                            revert with 'NH{q', 18
                        if block.timestamp - sub_074c3514 / sub_5bec4cb4 > -2:
                            revert with 'NH{q', 17
                        stakers[address(msg.sender)].field_0 = (block.timestamp - sub_074c3514 / sub_5bec4cb4) + 1
                        stakers[address(msg.sender)].field_256 = (block.timestamp - sub_074c3514 / sub_5bec4cb4) + 1
                stakers[address(msg.sender)].field_512 = 0
                stakers[address(msg.sender)].field_768 = sub_1593e395[address(msg.sender)][(block.timestamp - stor12 / stor13) + 1] + arg1 - (arg1 * stakeFee / 10000)
                if block.timestamp < sub_074c3514:
                    revert with 'NH{q', 17
                if not sub_5bec4cb4:
                    revert with 'NH{q', 18
                if block.timestamp - sub_074c3514 / sub_5bec4cb4 > -2:
                    revert with 'NH{q', 17
                sub_1593e395[address(msg.sender)][(block.timestamp - stor12 / stor13) + 1] = sub_1593e395[address(msg.sender)][(block.timestamp - stor12 / stor13) + 1] + arg1 - (arg1 * stakeFee / 10000)
                if block.timestamp < sub_074c3514:
                    revert with 'NH{q', 17
                if not sub_5bec4cb4:
                    revert with 'NH{q', 18
                if block.timestamp - sub_074c3514 / sub_5bec4cb4 > -2:
                    revert with 'NH{q', 17
                if totalStaked[(block.timestamp - stor12 / stor13) + 1] > -sub_1593e395[address(msg.sender)][(block.timestamp - stor12 / stor13) + 1] + -arg1 + (arg1 * stakeFee / 10000) - 1:
                    revert with 'NH{q', 17
                totalStaked[(block.timestamp - stor12 / stor13) + 1] = totalStaked[(block.timestamp - stor12 / stor13) + 1] + sub_1593e395[address(msg.sender)][(block.timestamp - stor12 / stor13) + 1] + arg1 - (arg1 * stakeFee / 10000)
                emit Staked((sub_1593e395[address(msg.sender)][(block.timestamp - stor12 / stor13) + 1] + arg1 - (arg1 * stakeFee / 10000)), msg.sender);
        else:
            if not arg2:
                if sub_1593e395[address(msg.sender)][(block.timestamp - stor12 / stor13) + 1]:
                    revert with 0, 'STAKE: You already merged'
                if stakers[address(msg.sender)].field_0:
                    if not stakers[address(msg.sender)].field_256:
                        if block.timestamp < sub_074c3514:
                            revert with 'NH{q', 17
                        if not sub_5bec4cb4:
                            revert with 'NH{q', 18
                        if block.timestamp - sub_074c3514 / sub_5bec4cb4 > -2:
                            revert with 'NH{q', 17
                        stakers[address(msg.sender)].field_256 = (block.timestamp - sub_074c3514 / sub_5bec4cb4) + 1
                else:
                    if block.timestamp < sub_074c3514:
                        revert with 'NH{q', 17
                    if not sub_5bec4cb4:
                        revert with 'NH{q', 18
                    if block.timestamp - sub_074c3514 / sub_5bec4cb4 > -2:
                        revert with 'NH{q', 17
                    if stakers[address(msg.sender)].field_256:
                        stakers[address(msg.sender)].field_0 = (block.timestamp - sub_074c3514 / sub_5bec4cb4) + 1
                    else:
                        if block.timestamp < sub_074c3514:
                            revert with 'NH{q', 17
                        if not sub_5bec4cb4:
                            revert with 'NH{q', 18
                        if block.timestamp - sub_074c3514 / sub_5bec4cb4 > -2:
                            revert with 'NH{q', 17
                        stakers[address(msg.sender)].field_0 = (block.timestamp - sub_074c3514 / sub_5bec4cb4) + 1
                        stakers[address(msg.sender)].field_256 = (block.timestamp - sub_074c3514 / sub_5bec4cb4) + 1
                stakers[address(msg.sender)].field_512 = 0
                if block.timestamp < sub_074c3514:
                    revert with 'NH{q', 17
                if not sub_5bec4cb4:
                    revert with 'NH{q', 18
                if block.timestamp - sub_074c3514 / sub_5bec4cb4 > -2:
                    revert with 'NH{q', 17
                sub_1593e395[address(msg.sender)][(block.timestamp - stor12 / stor13) + 1] = stakers[address(msg.sender)].field_768
                if block.timestamp < sub_074c3514:
                    revert with 'NH{q', 17
                if not sub_5bec4cb4:
                    revert with 'NH{q', 18
                if block.timestamp - sub_074c3514 / sub_5bec4cb4 > -2:
                    revert with 'NH{q', 17
                if totalStaked[(block.timestamp - stor12 / stor13) + 1] > -stakers[address(msg.sender)].field_768 - 1:
                    revert with 'NH{q', 17
                totalStaked[(block.timestamp - stor12 / stor13) + 1] += stakers[address(msg.sender)].field_768
                emit Staked(stakers[address(msg.sender)].field_768, msg.sender);
            else:
                if arg1 * stakeFee / 10000 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 < arg1 * stakeFee / 10000:
                    revert with 'NH{q', 17
                if stakers[address(msg.sender)].field_512 == (block.timestamp - sub_074c3514 / sub_5bec4cb4) + 1:
                    if arg1 - (arg1 * stakeFee / 10000) > -stakers[address(msg.sender)].field_768 - 1:
                        revert with 'NH{q', 17
                    if stakers[address(msg.sender)].field_768 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if arg1 - (arg1 * stakeFee / 10000) + stakers[address(msg.sender)].field_768 < minStake:
                        revert with 0, 'STAKE: Below min amount'
                    if arg1 - (arg1 * stakeFee / 10000) > -stakers[address(msg.sender)].field_768 - 1:
                        revert with 'NH{q', 17
                    if stakers[address(msg.sender)].field_768 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if arg1 - (arg1 * stakeFee / 10000) + stakers[address(msg.sender)].field_768 > maxStake:
                        revert with 0, 'STAKE: Above max amount'
                    require ext_code.size(sub_6251be71Address)
                    call sub_6251be71Address.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if 0 >= sub_88b6e922.length:
                        revert with 'NH{q', 50
                    if not arg1 * stakeFee / 10000:
                        require ext_code.size(sub_6251be71Address)
                        call sub_6251be71Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args POOLAddress, 0
                    else:
                        if arg1 * stakeFee / 10000 and uint256(sub_88b6e922.field_0) > -1 / arg1 * stakeFee / 10000:
                            revert with 'NH{q', 17
                        if not arg1 * stakeFee / 10000:
                            revert with 'NH{q', 18
                        if arg1 * stakeFee / 10000 * uint256(sub_88b6e922.field_0) / arg1 * stakeFee / 10000 != uint256(sub_88b6e922.field_0):
                            revert with 0, 'SafeMath: multiplication overflow'
                        require ext_code.size(sub_6251be71Address)
                        call sub_6251be71Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args POOLAddress, arg1 * stakeFee / 10000 * uint256(sub_88b6e922.field_0) / 10000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if 1 >= sub_88b6e922.length:
                        revert with 'NH{q', 50
                    if not arg1 * stakeFee / 10000:
                        require ext_code.size(sub_6251be71Address)
                        call sub_6251be71Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args sub_6251be71Address, 0
                    else:
                        if arg1 * stakeFee / 10000 and uint256(sub_88b6e922.field_256) > -1 / arg1 * stakeFee / 10000:
                            revert with 'NH{q', 17
                        if not arg1 * stakeFee / 10000:
                            revert with 'NH{q', 18
                        if arg1 * stakeFee / 10000 * uint256(sub_88b6e922.field_256) / arg1 * stakeFee / 10000 != uint256(sub_88b6e922.field_256):
                            revert with 0, 'SafeMath: multiplication overflow'
                        require ext_code.size(sub_6251be71Address)
                        call sub_6251be71Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args sub_6251be71Address, arg1 * stakeFee / 10000 * uint256(sub_88b6e922.field_256) / 10000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if stakers[address(msg.sender)].field_0:
                        if not stakers[address(msg.sender)].field_256:
                            if block.timestamp < sub_074c3514:
                                revert with 'NH{q', 17
                            if not sub_5bec4cb4:
                                revert with 'NH{q', 18
                            if block.timestamp - sub_074c3514 / sub_5bec4cb4 > -2:
                                revert with 'NH{q', 17
                            stakers[address(msg.sender)].field_256 = (block.timestamp - sub_074c3514 / sub_5bec4cb4) + 1
                    else:
                        if block.timestamp < sub_074c3514:
                            revert with 'NH{q', 17
                        if not sub_5bec4cb4:
                            revert with 'NH{q', 18
                        if block.timestamp - sub_074c3514 / sub_5bec4cb4 > -2:
                            revert with 'NH{q', 17
                        if stakers[address(msg.sender)].field_256:
                            stakers[address(msg.sender)].field_0 = (block.timestamp - sub_074c3514 / sub_5bec4cb4) + 1
                        else:
                            if block.timestamp < sub_074c3514:
                                revert with 'NH{q', 17
                            if not sub_5bec4cb4:
                                revert with 'NH{q', 18
                            if block.timestamp - sub_074c3514 / sub_5bec4cb4 > -2:
                                revert with 'NH{q', 17
                            stakers[address(msg.sender)].field_0 = (block.timestamp - sub_074c3514 / sub_5bec4cb4) + 1
                            stakers[address(msg.sender)].field_256 = (block.timestamp - sub_074c3514 / sub_5bec4cb4) + 1
                    stakers[address(msg.sender)].field_512 = 0
                    stakers[address(msg.sender)].field_768 = arg1 - (arg1 * stakeFee / 10000)
                    if block.timestamp < sub_074c3514:
                        revert with 'NH{q', 17
                    if not sub_5bec4cb4:
                        revert with 'NH{q', 18
                    if block.timestamp - sub_074c3514 / sub_5bec4cb4 > -2:
                        revert with 'NH{q', 17
                    sub_1593e395[address(msg.sender)][(block.timestamp - stor12 / stor13) + 1] = arg1 - (arg1 * stakeFee / 10000)
                    if block.timestamp < sub_074c3514:
                        revert with 'NH{q', 17
                    if not sub_5bec4cb4:
                        revert with 'NH{q', 18
                    if block.timestamp - sub_074c3514 / sub_5bec4cb4 > -2:
                        revert with 'NH{q', 17
                    if totalStaked[(block.timestamp - stor12 / stor13) + 1] > -arg1 + (arg1 * stakeFee / 10000) - 1:
                        revert with 'NH{q', 17
                    totalStaked[(block.timestamp - stor12 / stor13) + 1] = totalStaked[(block.timestamp - stor12 / stor13) + 1] + arg1 - (arg1 * stakeFee / 10000)
                    emit Staked((arg1 - (arg1 * stakeFee / 10000)), msg.sender);
                else:
                    if block.timestamp < sub_074c3514:
                        revert with 'NH{q', 17
                    if not sub_5bec4cb4:
                        revert with 'NH{q', 18
                    if block.timestamp - sub_074c3514 / sub_5bec4cb4 > -2:
                        revert with 'NH{q', 17
                    if sub_1593e395[address(msg.sender)][(block.timestamp - stor12 / stor13) + 1] > -arg1 + (arg1 * stakeFee / 10000) - 1:
                        revert with 'NH{q', 17
                    if sub_1593e395[address(msg.sender)][(block.timestamp - stor12 / stor13) + 1] + arg1 - (arg1 * stakeFee / 10000) < sub_1593e395[address(msg.sender)][(block.timestamp - stor12 / stor13) + 1]:
                        revert with 0, 'SafeMath: addition overflow'
                    if sub_1593e395[address(msg.sender)][(block.timestamp - stor12 / stor13) + 1] + arg1 - (arg1 * stakeFee / 10000) > -stakers[address(msg.sender)].field_768 - 1:
                        revert with 'NH{q', 17
                    if stakers[address(msg.sender)].field_768 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if sub_1593e395[address(msg.sender)][(block.timestamp - stor12 / stor13) + 1] + arg1 - (arg1 * stakeFee / 10000) + stakers[address(msg.sender)].field_768 < minStake:
                        revert with 0, 'STAKE: Below min amount'
                    if sub_1593e395[address(msg.sender)][(block.timestamp - stor12 / stor13) + 1] + arg1 - (arg1 * stakeFee / 10000) > -stakers[address(msg.sender)].field_768 - 1:
                        revert with 'NH{q', 17
                    if stakers[address(msg.sender)].field_768 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if sub_1593e395[address(msg.sender)][(block.timestamp - stor12 / stor13) + 1] + arg1 - (arg1 * stakeFee / 10000) + stakers[address(msg.sender)].field_768 > maxStake:
                        revert with 0, 'STAKE: Above max amount'
                    require ext_code.size(sub_6251be71Address)
                    call sub_6251be71Address.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if 0 >= sub_88b6e922.length:
                        revert with 'NH{q', 50
                    if not arg1 * stakeFee / 10000:
                        require ext_code.size(sub_6251be71Address)
                        call sub_6251be71Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args POOLAddress, 0
                    else:
                        if arg1 * stakeFee / 10000 and uint256(sub_88b6e922.field_0) > -1 / arg1 * stakeFee / 10000:
                            revert with 'NH{q', 17
                        if not arg1 * stakeFee / 10000:
                            revert with 'NH{q', 18
                        if arg1 * stakeFee / 10000 * uint256(sub_88b6e922.field_0) / arg1 * stakeFee / 10000 != uint256(sub_88b6e922.field_0):
                            revert with 0, 'SafeMath: multiplication overflow'
                        require ext_code.size(sub_6251be71Address)
                        call sub_6251be71Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args POOLAddress, arg1 * stakeFee / 10000 * uint256(sub_88b6e922.field_0) / 10000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if 1 >= sub_88b6e922.length:
                        revert with 'NH{q', 50
                    if not arg1 * stakeFee / 10000:
                        require ext_code.size(sub_6251be71Address)
                        call sub_6251be71Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args sub_6251be71Address, 0
                    else:
                        if arg1 * stakeFee / 10000 and uint256(sub_88b6e922.field_256) > -1 / arg1 * stakeFee / 10000:
                            revert with 'NH{q', 17
                        if not arg1 * stakeFee / 10000:
                            revert with 'NH{q', 18
                        if arg1 * stakeFee / 10000 * uint256(sub_88b6e922.field_256) / arg1 * stakeFee / 10000 != uint256(sub_88b6e922.field_256):
                            revert with 0, 'SafeMath: multiplication overflow'
                        require ext_code.size(sub_6251be71Address)
                        call sub_6251be71Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args sub_6251be71Address, arg1 * stakeFee / 10000 * uint256(sub_88b6e922.field_256) / 10000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if stakers[address(msg.sender)].field_0:
                        if not stakers[address(msg.sender)].field_256:
                            if block.timestamp < sub_074c3514:
                                revert with 'NH{q', 17
                            if not sub_5bec4cb4:
                                revert with 'NH{q', 18
                            if block.timestamp - sub_074c3514 / sub_5bec4cb4 > -2:
                                revert with 'NH{q', 17
                            stakers[address(msg.sender)].field_256 = (block.timestamp - sub_074c3514 / sub_5bec4cb4) + 1
                    else:
                        if block.timestamp < sub_074c3514:
                            revert with 'NH{q', 17
                        if not sub_5bec4cb4:
                            revert with 'NH{q', 18
                        if block.timestamp - sub_074c3514 / sub_5bec4cb4 > -2:
                            revert with 'NH{q', 17
                        if stakers[address(msg.sender)].field_256:
                            stakers[address(msg.sender)].field_0 = (block.timestamp - sub_074c3514 / sub_5bec4cb4) + 1
                        else:
                            if block.timestamp < sub_074c3514:
                                revert with 'NH{q', 17
                            if not sub_5bec4cb4:
                                revert with 'NH{q', 18
                            if block.timestamp - sub_074c3514 / sub_5bec4cb4 > -2:
                                revert with 'NH{q', 17
                            stakers[address(msg.sender)].field_0 = (block.timestamp - sub_074c3514 / sub_5bec4cb4) + 1
                            stakers[address(msg.sender)].field_256 = (block.timestamp - sub_074c3514 / sub_5bec4cb4) + 1
                    stakers[address(msg.sender)].field_512 = 0
                    stakers[address(msg.sender)].field_768 = sub_1593e395[address(msg.sender)][(block.timestamp - stor12 / stor13) + 1] + arg1 - (arg1 * stakeFee / 10000)
                    if block.timestamp < sub_074c3514:
                        revert with 'NH{q', 17
                    if not sub_5bec4cb4:
                        revert with 'NH{q', 18
                    if block.timestamp - sub_074c3514 / sub_5bec4cb4 > -2:
                        revert with 'NH{q', 17
                    sub_1593e395[address(msg.sender)][(block.timestamp - stor12 / stor13) + 1] = sub_1593e395[address(msg.sender)][(block.timestamp - stor12 / stor13) + 1] + arg1 - (arg1 * stakeFee / 10000)
                    if block.timestamp < sub_074c3514:
                        revert with 'NH{q', 17
                    if not sub_5bec4cb4:
                        revert with 'NH{q', 18
                    if block.timestamp - sub_074c3514 / sub_5bec4cb4 > -2:
                        revert with 'NH{q', 17
                    if totalStaked[(block.timestamp - stor12 / stor13) + 1] > -sub_1593e395[address(msg.sender)][(block.timestamp - stor12 / stor13) + 1] + -arg1 + (arg1 * stakeFee / 10000) - 1:
                        revert with 'NH{q', 17
                    totalStaked[(block.timestamp - stor12 / stor13) + 1] = totalStaked[(block.timestamp - stor12 / stor13) + 1] + sub_1593e395[address(msg.sender)][(block.timestamp - stor12 / stor13) + 1] + arg1 - (arg1 * stakeFee / 10000)
                    emit Staked((sub_1593e395[address(msg.sender)][(block.timestamp - stor12 / stor13) + 1] + arg1 - (arg1 * stakeFee / 10000)), msg.sender);
}



}

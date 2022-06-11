contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor1;
address distributorAddress;
uint256 totalAllocations;
uint8 stor4; offset 160
address sub_5c12eef9Address;
uint256 sub_9beec1a3;
mapping of struct userVestingInfo;
array of struct sub_b87178d0;
array of uint256 stor75276140696391174450305814049576319106646922510300487059720162673006384432777;

function sub_30647052(?) payable {
    return bool(stor4)
}

function userVestingInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userVestingInfo[arg1].field_0, userVestingInfo[arg1].field_256, userVestingInfo[arg1].field_512
}

function sub_5c12eef9(?) payable {
    return sub_5c12eef9Address
}

function totalAllocations() payable {
    return totalAllocations
}

function owner() payable {
    return owner
}

function sub_9beec1a3(?) payable {
    return sub_9beec1a3
}

function sub_b87178d0(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_b87178d0.length
    return sub_b87178d0[arg1].field_0, sub_b87178d0[arg1].field_256
}

function distributor() payable {
    return distributorAddress
}

function _fallback() payable {
    revert
}

function sub_034714bc(?) payable {
    if sub_9beec1a3 < totalAllocations:
        return 0
    return 1, sub_9beec1a3 - totalAllocations
}

function sub_29d37b73(?) payable {
    require ext_code.size(sub_5c12eef9Address)
    staticcall sub_5c12eef9Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
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

function drainToken(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function getTokensUnlockedPercentage() payable {
    idx = 0
    s = 0
    while idx < 12:
        if idx >= sub_b87178d0.length:
            revert with 0, 50
        mem[0] = 7
        if block.timestamp < sub_b87178d0[idx].field_0:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if idx >= sub_b87178d0.length:
            revert with 0, 50
        mem[0] = 7
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = sub_b87178d0[idx].field_256
        continue 
    return s
}

function sub_20df1344(?) payable {
    mem[64] = (32 * sub_b87178d0.length) + 128
    mem[96] = sub_b87178d0.length
    s = 128
    idx = 0
    while idx < sub_b87178d0.length:
        mem[0] = 7
        _11 = mem[64]
        mem[64] = mem[64] + 64
        mem[_11] = sub_b87178d0[idx].field_0
        mem[_11 + 32] = sub_b87178d0[idx].field_256
        mem[s] = _11
        s = s + 32
        idx = idx + 1
        continue 
    _12 = mem[64]
    mem[mem[64]] = 32
    _13 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _13:
        _18 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_18 + 32]
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    return memory
      from mem[64]
       len _12 + (64 * _13) + -mem[64] + 64
}

function sub_d2c9d6b6(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if distributorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Allocation Possible only by Distributor Contract'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if not address(arg1):
        revert with 0, 'Cannot Allocate Invalid Details'
    if not arg2:
        revert with 0, 'Cannot Allocate Invalid Details'
    if totalAllocations > !arg2:
        revert with 0, 17
    totalAllocations += arg2
    userVestingInfo[address(arg1)].field_0 = address(arg1)
    if userVestingInfo[address(arg1)].field_256 > !arg2:
        revert with 0, 17
    userVestingInfo[address(arg1)].field_256 += arg2
    userVestingInfo[address(arg1)].field_512 = 0
    stor1 = 1
}

function sub_fddad068(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor4:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'LeftOver Daddy Can be burnt only Once'
    if 1 >= sub_b87178d0.length:
        revert with 0, 50
    if block.timestamp <= uint256(sub_b87178d0.field_512):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'LeftOver Tokens Can be burned only at the end of 1st Vesting Period'
    if sub_9beec1a3 < totalAllocations:
        revert with 0, 17
    require ext_code.size(sub_5c12eef9Address)
    call sub_5c12eef9Address.0x42966c68 with:
         gas gas_remaining wei
        args (sub_9beec1a3 - totalAllocations)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_e21925d9(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    idx = 0
    s = 0
    while idx < 12:
        if idx >= sub_b87178d0.length:
            revert with 0, 50
        mem[0] = 7
        if block.timestamp < sub_b87178d0[idx].field_0:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if idx >= sub_b87178d0.length:
            revert with 0, 50
        mem[0] = 7
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = sub_b87178d0[idx].field_256
        continue 
    if userVestingInfo[address(arg1)].field_256 and s > -1 / userVestingInfo[address(arg1)].field_256:
        revert with 0, 17
    if userVestingInfo[address(arg1)].field_256 * s / 100 < userVestingInfo[address(arg1)].field_512:
        revert with 0, 17
    return ((userVestingInfo[address(arg1)].field_256 * s / 100) - userVestingInfo[address(arg1)].field_512)
}

function sub_11113d47(?) payable {
    require calldata.size - 4 >= 64
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if (32 * ('cd', 36).length) + 128 > test266151307() or (32 * ('cd', 36).length) + 128 < 96:
        revert with 0, 65
    mem[96] = ('cd', 36).length
    require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
    s = cd[36] + 36
    t = 128
    idx = 0
    while idx < ('cd', 36).length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[(32 * ('cd', 36).length) + 132] = this.address
    require ext_code.size(sub_5c12eef9Address)
    staticcall sub_5c12eef9Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(32 * ('cd', 36).length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * ('cd', 36).length) + ceil32(return_data.size) + 128
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'Simple Sanity Check to ensure contract's DaddyBalance'
    idx = 0
    while idx < 12:
        _28 = mem[64]
        mem[64] = mem[64] + 64
        mem[_28 + 32] = 0
        if idx > 0x679024d03d1605b6d407fd5ed710b672f0dadb9dcc11178a135e14e2716:
            revert with 0, 17
        if cd[4] > !(720 * 24 * 3600 * idx):
            revert with 0, 17
        mem[_28] = cd[4] + (720 * 24 * 3600 * idx)
        if idx >= mem[96]:
            revert with 0, 50
        mem[_28 + 32] = mem[(32 * idx) + 128]
        sub_b87178d0.length++
        mem[0] = 7
        sub_b87178d0[sub_b87178d0.length].field_0 = cd[4] + (720 * 24 * 3600 * idx)
        storA66C[stor7.length] = mem[_28 + 32]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function claimToken() payable {
    if not userVestingInfo[msg.sender].field_256:
        revert with 0, 'User not Allocated For Vesting'
    idx = 0
    s = 0
    while idx < 12:
        if idx >= sub_b87178d0.length:
            revert with 0, 50
        mem[0] = 7
        if block.timestamp < sub_b87178d0[idx].field_0:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if idx >= sub_b87178d0.length:
            revert with 0, 50
        mem[0] = 7
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = sub_b87178d0[idx].field_256
        continue 
    if userVestingInfo[userVestingInfo[msg.sender].field_0].field_256 and s > -1 / userVestingInfo[userVestingInfo[msg.sender].field_0].field_256:
        revert with 0, 17
    if userVestingInfo[userVestingInfo[msg.sender].field_0].field_256 * s / 100 < userVestingInfo[userVestingInfo[msg.sender].field_0].field_512:
        revert with 0, 17
    if not (userVestingInfo[userVestingInfo[msg.sender].field_0].field_256 * s / 100) - userVestingInfo[userVestingInfo[msg.sender].field_0].field_512:
        revert with 0, 'claim amount is unsufficient'
    require ext_code.size(sub_5c12eef9Address)
    call sub_5c12eef9Address.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, (userVestingInfo[userVestingInfo[msg.sender].field_0].field_256 * s / 100) - userVestingInfo[userVestingInfo[msg.sender].field_0].field_512
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if userVestingInfo[msg.sender].field_512 > !((userVestingInfo[userVestingInfo[msg.sender].field_0].field_256 * s / 100) - userVestingInfo[userVestingInfo[msg.sender].field_0].field_512):
        revert with 0, 17
    if userVestingInfo[msg.sender].field_512 + (userVestingInfo[userVestingInfo[msg.sender].field_0].field_256 * s / 100) - userVestingInfo[userVestingInfo[msg.sender].field_0].field_512 > userVestingInfo[msg.sender].field_256:
        revert with 0, 'Claimable Balance cannot go over Allocated amount'
    if userVestingInfo[msg.sender].field_512 > !((userVestingInfo[userVestingInfo[msg.sender].field_0].field_256 * s / 100) - userVestingInfo[userVestingInfo[msg.sender].field_0].field_512):
        revert with 0, 17
    userVestingInfo[msg.sender].field_512 = userVestingInfo[msg.sender].field_512 + (userVestingInfo[userVestingInfo[msg.sender].field_0].field_256 * s / 100) - userVestingInfo[userVestingInfo[msg.sender].field_0].field_512
    emit Withdraw((userVestingInfo[userVestingInfo[msg.sender].field_0].field_256 * s / 100) - userVestingInfo[userVestingInfo[msg.sender].field_0].field_512, block.timestamp);
}



}

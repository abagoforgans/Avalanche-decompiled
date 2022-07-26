contract main {




// =====================  Runtime code  =====================


#
#  - sub_c2705c75(?)
#
address owner;
array of uint256 stor1;
address sub_6251be71Address;
address NFTAddress;
address sub_2d5e99b7Address;
address sub_312b8b74Address;
address sub_cec24836Address;
array of struct tiers;

function tiers(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < tiers.length
    return tiers[arg1].field_0
}

function sub_2d5e99b7(?) payable {
    return sub_2d5e99b7Address
}

function sub_312b8b74(?) payable {
    return sub_312b8b74Address
}

function sub_6251be71(?) payable {
    return sub_6251be71Address
}

function sub_64075e44(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_64075e44.length
    return sub_64075e44[arg1]
}

function NFT() payable {
    return NFTAddress
}

function owner() payable {
    return owner
}

function sub_cec24836(?) payable {
    return sub_cec24836Address
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

function sub_36450ccc(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    NFTAddress = address(arg1)
}

function sub_33fade82(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_2d5e99b7Address = address(arg1)
}

function sub_44faa317(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_312b8b74Address = address(arg1)
}

function sub_d1169dc0(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_cec24836Address = address(arg1)
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
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_c3da5961(?) payable {
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
    require ('cd', 4).length == tiers.length
    tiers.length = ('cd', 4).length
    if not ('cd', 4).length:
        idx = 0
        while tiers.length > idx:
            tiers[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * ('cd', 4).length) + 128 > idx:
            tiers[s].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
        while tiers.length > idx:
            tiers[idx].field_0 = 0
            idx = idx + 1
            continue 
}

function sub_b8c4876b(?) payable {
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
    require ('cd', 4).length == sub_64075e44.length
    sub_64075e44.length = ('cd', 4).length
    if not ('cd', 4).length:
        idx = 0
        while sub_64075e44.length > idx:
            sub_64075e44[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * ('cd', 4).length) + 128 > idx:
            sub_64075e44[s] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
        while sub_64075e44.length > idx:
            sub_64075e44[idx] = 0
            idx = idx + 1
            continue 
}

function stake(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor1.length == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1.length = 2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(NFTAddress)
    staticcall NFTAddress.0x70a08231 with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(NFTAddress)
    if not ext_call.return_data[0]:
        call NFTAddress.0x40c10f19 with:
             gas gas_remaining wei
            args address(arg2), arg1
    else:
        staticcall NFTAddress.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
                gas gas_remaining wei
               args address(arg2), 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(NFTAddress)
        call NFTAddress.updateValue(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args ext_call.return_data[0], arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor1.length = 1
}

function getTokenTierIndex(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[100] = arg1
    require ext_code.size(NFTAddress)
    staticcall NFTAddress.exists(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if tiers.length:
        mem[ceil32(return_data.size) + 128] = uint256(tiers.field_0)
        idx = ceil32(return_data.size) + 128
        s = 0
        while ceil32(return_data.size) + (32 * tiers.length) + 96 > idx:
            mem[idx + 32] = tiers[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    require ext_code.size(NFTAddress)
    staticcall NFTAddress.0x3e8c379 with:
            gas gas_remaining wei
           args arg1
    mem[ceil32(return_data.size) + (32 * tiers.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    idx = 0
    while idx < tiers.length:
        if idx >= tiers.length:
            revert with 'NH{q', 50
        if mem[(32 * idx) + ceil32(return_data.size) + 128] and 10^18 > -1 / mem[(32 * idx) + ceil32(return_data.size) + 128]:
            revert with 'NH{q', 17
        if ext_call.return_data[0] >= 10^18 * mem[(32 * idx) + ceil32(return_data.size) + 128]:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if tiers.length < idx:
            revert with 'NH{q', 17
        if tiers.length - idx > -2:
            revert with 'NH{q', 17
        return (tiers.length + -idx + 1)
    return 1
}

function stake(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor1.length == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1.length = 2
    require ext_code.size(sub_6251be71Address)
    staticcall sub_6251be71Address.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < arg1:
        revert with 0, 'STAKE: PLAYMATES balance too low.'
    require ext_code.size(sub_6251be71Address)
    call sub_6251be71Address.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(NFTAddress)
    staticcall NFTAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(NFTAddress)
    if not ext_call.return_data[0]:
        call NFTAddress.0x40c10f19 with:
             gas gas_remaining wei
            args msg.sender, arg1
    else:
        staticcall NFTAddress.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
                gas gas_remaining wei
               args msg.sender, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(NFTAddress)
        call NFTAddress.updateValue(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args ext_call.return_data[0], arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor1.length = 1
}

function sub_36fe1efe(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(NFTAddress)
    staticcall NFTAddress.exists(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    mem[ceil32(return_data.size) + 100] = arg1
    require ext_code.size(NFTAddress)
    staticcall NFTAddress.0x3e8c379 with:
            gas gas_remaining wei
           args arg1
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] / 10^18 / 100 and 100 > -1 / ext_call.return_data[0] / 10^18 / 100:
        revert with 'NH{q', 17
    mem[(2 * ceil32(return_data.size)) + 100] = arg1
    require ext_code.size(NFTAddress)
    staticcall NFTAddress.exists(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if tiers.length:
        mem[(4 * ceil32(return_data.size)) + 128] = uint256(tiers.field_0)
        idx = (4 * ceil32(return_data.size)) + 128
        s = 0
        while (4 * ceil32(return_data.size)) + (32 * tiers.length) + 96 > idx:
            mem[idx + 32] = tiers[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    require ext_code.size(NFTAddress)
    staticcall NFTAddress.0x3e8c379 with:
            gas gas_remaining wei
           args arg1
    mem[(4 * ceil32(return_data.size)) + (32 * tiers.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    idx = 0
    while idx < tiers.length:
        if idx >= tiers.length:
            revert with 'NH{q', 50
        if mem[(32 * idx) + (4 * ceil32(return_data.size)) + 128] and 10^18 > -1 / mem[(32 * idx) + (4 * ceil32(return_data.size)) + 128]:
            revert with 'NH{q', 17
        if ext_call.return_data[0] >= 10^18 * mem[(32 * idx) + (4 * ceil32(return_data.size)) + 128]:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if tiers.length < idx:
            revert with 'NH{q', 17
        if tiers.length - idx > -2:
            revert with 'NH{q', 17
        if tiers.length + -idx + 1 < 1:
            revert with 'NH{q', 17
        if tiers.length - idx >= sub_64075e44.length:
            revert with 'NH{q', 50
        if stor[('name', 'sub_64075e44', 7) + stor8.length - idx] > (-100 * ext_call.return_data[0] / 10^18 / 100) - 1:
            revert with 'NH{q', 17
        return (stor[('name', 'sub_64075e44', 7) + stor8.length - idx] + (100 * ext_call.return_data[0] / 10^18 / 100))
    if 0 >= sub_64075e44.length:
        revert with 'NH{q', 50
    if sub_64075e44 > (-100 * ext_call.return_data[0] / 10^18 / 100) - 1:
        revert with 'NH{q', 17
    return (sub_64075e44 + (100 * ext_call.return_data[0] / 10^18 / 100))
}

function sub_e0b87c1f(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == uint64(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] == cd[36]
    if stor1.length == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1.length = 2
    mem[floor32(('cd', 4).length) + 101] = msg.sender
    require ext_code.size(sub_312b8b74Address)
    staticcall sub_312b8b74Address.0x99e3b18d with:
            gas gas_remaining wei
           args msg.sender
    mem[floor32(('cd', 4).length) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 101] = msg.sender
    require ext_code.size(sub_312b8b74Address)
    staticcall sub_312b8b74Address.0xc5e22f3f with:
            gas gas_remaining wei
           args msg.sender
    mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if ext_call.return_data[0] > -(ext_call.return_data[0] * ext_call.return_data[0] / 1000) - 1:
        revert with 'NH{q', 17
    if ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 1000) < cd[36]:
        revert with 0, 'STAKE: Not enough to compound'
    mem[floor32(('cd', 4).length) + (2 * ceil32(return_data.size)) + 97] = 0xd96f9e2000000000000000000000000000000000000000000000000000000000
    mem[floor32(('cd', 4).length) + (2 * ceil32(return_data.size)) + 101] = 160
    mem[floor32(('cd', 4).length) + (2 * ceil32(return_data.size)) + 261] = ('cd', 4).length
    idx = 0
    s = 128
    t = floor32(('cd', 4).length) + (2 * ceil32(return_data.size)) + 293
    while idx < ('cd', 4).length:
        mem[t] = mem[s + 24 len 8]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(sub_2d5e99b7Address)
    call sub_2d5e99b7Address.0xd96f9e20 with:
         gas gas_remaining wei
        args Array(len=('cd', 4).length, data=mem[floor32(('cd', 4).length) + (2 * ceil32(return_data.size)) + 293 len 32 * ('cd', 4).length]), address(this.address), cd[36], sub_cec24836Address, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 1000) < cd[36]:
        revert with 'NH{q', 17
    require ext_code.size(sub_cec24836Address)
    call sub_cec24836Address.execute(uint256 arg1, address arg2) with:
         gas gas_remaining wei
        args ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 1000) - cd[36], msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(NFTAddress)
    staticcall NFTAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(NFTAddress)
    if not ext_call.return_data[0]:
        call NFTAddress.0x40c10f19 with:
             gas gas_remaining wei
            args msg.sender, cd[36]
    else:
        staticcall NFTAddress.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
                gas gas_remaining wei
               args msg.sender, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(NFTAddress)
        call NFTAddress.updateValue(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args ext_call.return_data[0], cd[36]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor1.length = 1
}

function sub_563d0e4d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(NFTAddress)
    staticcall NFTAddress.exists(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    mem[ceil32(return_data.size) + 100] = arg1
    require ext_code.size(NFTAddress)
    staticcall NFTAddress.exists(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if tiers.length:
        mem[(2 * ceil32(return_data.size)) + 128] = uint256(tiers.field_0)
        idx = (2 * ceil32(return_data.size)) + 128
        s = 0
        while (2 * ceil32(return_data.size)) + (32 * tiers.length) + 96 > idx:
            mem[idx + 32] = tiers[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    mem[(2 * ceil32(return_data.size)) + (32 * tiers.length) + 132] = arg1
    require ext_code.size(NFTAddress)
    staticcall NFTAddress.0x3e8c379 with:
            gas gas_remaining wei
           args arg1
    mem[(2 * ceil32(return_data.size)) + (32 * tiers.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    idx = 0
    while idx < tiers.length:
        if idx >= tiers.length:
            revert with 'NH{q', 50
        if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128] and 10^18 > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]:
            revert with 'NH{q', 17
        if ext_call.return_data[0] >= 10^18 * mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if tiers.length < idx:
            revert with 'NH{q', 17
        if tiers.length - idx > -2:
            revert with 'NH{q', 17
        if tiers.length + -idx + 1 < 1:
            revert with 'NH{q', 17
        if not tiers.length - idx:
            return 0
        mem[(4 * ceil32(return_data.size)) + (32 * tiers.length) + 132] = arg1
        require ext_code.size(NFTAddress)
        staticcall NFTAddress.exists(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'ERC721: owner query for nonexistent token'
        if tiers.length:
            mem[(6 * ceil32(return_data.size)) + (32 * tiers.length) + 160] = uint256(tiers.field_0)
            idx = (6 * ceil32(return_data.size)) + (32 * tiers.length) + 160
            s = sha3(8)
            while (6 * ceil32(return_data.size)) + (64 * tiers.length) + 128 > idx:
                mem[idx + 32] = stor1[s]
                idx = idx + 32
                s = s + 1
                continue 
        require ext_code.size(NFTAddress)
        staticcall NFTAddress.0x3e8c379 with:
                gas gas_remaining wei
               args arg1
        mem[(6 * ceil32(return_data.size)) + (64 * tiers.length) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        idx = 0
        while idx < tiers.length:
            if idx >= tiers.length:
                revert with 'NH{q', 50
            if mem[(32 * idx) + (6 * ceil32(return_data.size)) + (32 * tiers.length) + 160] and 10^18 > -1 / mem[(32 * idx) + (6 * ceil32(return_data.size)) + (32 * tiers.length) + 160]:
                revert with 'NH{q', 17
            if ext_call.return_data[0] >= 10^18 * mem[(32 * idx) + (6 * ceil32(return_data.size)) + (32 * tiers.length) + 160]:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if tiers.length < idx:
                revert with 'NH{q', 17
            if tiers.length - idx > -2:
                revert with 'NH{q', 17
            if tiers.length < tiers.length + -idx + 1:
                revert with 'NH{q', 17
            if idx - 1 > -2:
                revert with 'NH{q', 17
            if idx >= tiers.length:
                revert with 'NH{q', 50
            return tiers[idx].field_0
        if tiers.length < 1:
            revert with 'NH{q', 17
        if tiers.length - 1 > -2:
            revert with 'NH{q', 17
        if tiers.length >= tiers.length:
            revert with 'NH{q', 50
        return tiers[tiers.length].field_0
    return 0
}

function tokenURI(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[100] = arg1
    require ext_code.size(NFTAddress)
    staticcall NFTAddress.exists(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    mem[ceil32(return_data.size) + 96] = 0x743976a000000000000000000000000000000000000000000000000000000000
    require ext_code.size(NFTAddress)
    staticcall NFTAddress._baseURI() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    _9 = mem[ceil32(return_data.size) + 96]
    require mem[ceil32(return_data.size) + 96] <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 127 < ceil32(return_data.size) + return_data.size + 96
    _10 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96] > test266151307():
        revert with 'NH{q', 65
    if (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96])) + 97 > test266151307() or ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96])) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96])) + 97
    mem[(2 * ceil32(return_data.size)) + 96] = _10
    require _9 + _10 + 32 <= return_data.size
    mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_10)] = mem[ceil32(return_data.size) + _9 + 128 len ceil32(_10)]
    if ceil32(_10) <= _10:
        if _10 <= 0:
            return ''
        mem[mem[64] + 4] = arg1
        require ext_code.size(NFTAddress)
        staticcall NFTAddress.exists(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _137 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_137] == bool(mem[_137])
        if not mem[_137]:
            revert with 0, 'ERC721: owner query for nonexistent token'
        _147 = mem[64]
        mem[64] = mem[64] + (32 * tiers.length) + 32
        mem[_147] = tiers.length
        if not tiers.length:
            mem[mem[64] + 4] = arg1
            require ext_code.size(NFTAddress)
            staticcall NFTAddress.0x3e8c379 with:
                    gas gas_remaining wei
                   args arg1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _158 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_158] == mem[_158]
            idx = 0
            while idx < tiers.length:
                if idx >= tiers.length:
                    revert with 'NH{q', 50
                if mem[(32 * idx) + _147 + 32] and 10^18 > -1 / mem[(32 * idx) + _147 + 32]:
                    revert with 'NH{q', 17
                if mem[_158] >= 10^18 * mem[(32 * idx) + _147 + 32]:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if tiers.length < idx:
                    revert with 'NH{q', 17
                if tiers.length - idx > -2:
                    revert with 'NH{q', 17
                if not tiers.length + -idx + 1:
                    _249 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_249] = 1
                    mem[_249 + 32] = '0'
                    _251 = mem[64]
                    idx = 0
                    while idx < _10:
                        mem[_251 + idx + 32] = mem[(2 * ceil32(return_data.size)) + idx + 128]
                        idx = idx + 32
                        continue 
                    if ceil32(_10) <= _10:
                        _321 = mem[_249]
                        idx = 0
                        while idx < _321:
                            mem[_251 + _10 + idx + 32] = mem[_249 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_251 + _10 + _321 + 32] = '.json'
                        if ceil32(_321) <= _321:
                            _615 = mem[64]
                            mem[64] = _251 + _10 + _321 + 37
                            mem[_251 + _10 + _321 + 37] = 32
                            _639 = mem[_615]
                            mem[_251 + _10 + _321 + 69] = mem[_615]
                            idx = 0
                            while idx < _639:
                                mem[_251 + _10 + _321 + idx + 101] = mem[_615 + idx + 32]
                                idx = idx + 32
                                continue 
                            if ceil32(_639) > _639:
                                mem[_251 + _10 + _321 + _639 + 101] = 0
                            return 32, mem[_251 + _10 + _321 + 69 len ceil32(_639) + 32]
                        _623 = mem[64]
                        mem[64] = _251 + _10 + _321 + 37
                        mem[_251 + _10 + _321 + 37] = 32
                        _647 = mem[_623]
                        mem[_251 + _10 + _321 + 69] = mem[_623]
                        idx = 0
                        while idx < _647:
                            mem[_251 + _10 + _321 + idx + 101] = mem[_623 + idx + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_647) > _647:
                            mem[_251 + _10 + _321 + _647 + 101] = 0
                        return 32, mem[_251 + _10 + _321 + 69 len ceil32(_647) + 32]
                    mem[_251 + _10 + 32] = 0
                    _326 = mem[_249]
                    idx = 0
                    while idx < _326:
                        mem[_251 + _10 + idx + 32] = mem[_249 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_251 + _10 + _326 + 32] = '.json'
                    if ceil32(_326) <= _326:
                        _616 = mem[64]
                        mem[64] = _251 + _10 + _326 + 37
                        mem[_251 + _10 + _326 + 37] = 32
                        _640 = mem[_616]
                        mem[_251 + _10 + _326 + 69] = mem[_616]
                        idx = 0
                        while idx < _640:
                            mem[_251 + _10 + _326 + idx + 101] = mem[_616 + idx + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_640) > _640:
                            mem[_251 + _10 + _326 + _640 + 101] = 0
                        return 32, mem[_251 + _10 + _326 + 69 len ceil32(_640) + 32]
                    _624 = mem[64]
                    mem[64] = _251 + _10 + _326 + 37
                    mem[_251 + _10 + _326 + 37] = 32
                    _648 = mem[_624]
                    mem[_251 + _10 + _326 + 69] = mem[_624]
                    idx = 0
                    while idx < _648:
                        mem[_251 + _10 + _326 + idx + 101] = mem[_624 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_648) > _648:
                        mem[_251 + _10 + _326 + _648 + 101] = 0
                    return 32, mem[_251 + _10 + _326 + 69 len ceil32(_648) + 32]
                t = 0
                s = tiers.length + -idx + 1
                while s:
                    if t == -1:
                        revert with 'NH{q', 17
                    t = t + 1
                    s = s / 10
                    continue 
                if t > test266151307():
                    revert with 'NH{q', 65
                _318 = mem[64]
                mem[mem[64]] = t
                mem[64] = mem[64] + ceil32(t) + 32
                if not t:
                    u = t
                    s = tiers.length + -idx + 1
                    while s:
                        if u < 1:
                            revert with 'NH{q', 17
                        if 48 > -(s % 10) - 1:
                            revert with 'NH{q', 17
                        if u - 1 >= mem[_318]:
                            revert with 'NH{q', 50
                        mem[u + _318 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                        u = u - 1
                        s = s / 10
                        continue 
                    _599 = mem[64]
                    _607 = mem[(2 * ceil32(return_data.size)) + 96]
                    idx = 0
                    while idx < _607:
                        mem[_599 + idx + 32] = mem[(2 * ceil32(return_data.size)) + idx + 128]
                        idx = idx + 32
                        continue 
                    if ceil32(_607) <= _607:
                        _991 = mem[_318]
                        idx = 0
                        while idx < _991:
                            mem[_599 + _607 + idx + 32] = mem[_318 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_599 + _607 + _991 + 32] = '.json'
                        if ceil32(_991) <= _991:
                            _1457 = mem[64]
                            mem[64] = _599 + _607 + _991 + 37
                            mem[_599 + _607 + _991 + 37] = 32
                            _1545 = mem[_1457]
                            mem[_599 + _607 + _991 + 69] = mem[_1457]
                            idx = 0
                            while idx < _1545:
                                mem[_599 + _607 + _991 + idx + 101] = mem[_1457 + idx + 32]
                                idx = idx + 32
                                continue 
                            if ceil32(_1545) > _1545:
                                mem[_599 + _607 + _991 + _1545 + 101] = 0
                            return 32, mem[_599 + _607 + _991 + 69 len ceil32(_1545) + 32]
                        _1477 = mem[64]
                        mem[64] = _599 + _607 + _991 + 37
                        mem[_599 + _607 + _991 + 37] = 32
                        _1565 = mem[_1477]
                        mem[_599 + _607 + _991 + 69] = mem[_1477]
                        idx = 0
                        while idx < _1565:
                            mem[_599 + _607 + _991 + idx + 101] = mem[_1477 + idx + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_1565) > _1565:
                            mem[_599 + _607 + _991 + _1565 + 101] = 0
                        return 32, mem[_599 + _607 + _991 + 69 len ceil32(_1565) + 32]
                    mem[_599 + _607 + 32] = 0
                    _1001 = mem[_318]
                    idx = 0
                    while idx < _1001:
                        mem[_599 + _607 + idx + 32] = mem[_318 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_599 + _607 + _1001 + 32] = '.json'
                    if ceil32(_1001) <= _1001:
                        _1458 = mem[64]
                        mem[64] = _599 + _607 + _1001 + 37
                        mem[_599 + _607 + _1001 + 37] = 32
                        _1546 = mem[_1458]
                        mem[_599 + _607 + _1001 + 69] = mem[_1458]
                        idx = 0
                        while idx < _1546:
                            mem[_599 + _607 + _1001 + idx + 101] = mem[_1458 + idx + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_1546) > _1546:
                            mem[_599 + _607 + _1001 + _1546 + 101] = 0
                        return 32, mem[_599 + _607 + _1001 + 69 len ceil32(_1546) + 32]
                    _1478 = mem[64]
                    mem[64] = _599 + _607 + _1001 + 37
                    mem[_599 + _607 + _1001 + 37] = 32
                    _1566 = mem[_1478]
                    mem[_599 + _607 + _1001 + 69] = mem[_1478]
                    idx = 0
                    while idx < _1566:
                        mem[_599 + _607 + _1001 + idx + 101] = mem[_1478 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_1566) > _1566:
                        mem[_599 + _607 + _1001 + _1566 + 101] = 0
                    return 32, mem[_599 + _607 + _1001 + 69 len ceil32(_1566) + 32]
                mem[_318 + 32 len t] = call.data[calldata.size len t]
                u = t
                s = tiers.length + -idx + 1
                while s:
                    if u < 1:
                        revert with 'NH{q', 17
                    if 48 > -(s % 10) - 1:
                        revert with 'NH{q', 17
                    if u - 1 >= mem[_318]:
                        revert with 'NH{q', 50
                    mem[u + _318 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                    u = u - 1
                    s = s / 10
                    continue 
                _600 = mem[64]
                _608 = mem[(2 * ceil32(return_data.size)) + 96]
                idx = 0
                while idx < _608:
                    mem[_600 + idx + 32] = mem[(2 * ceil32(return_data.size)) + idx + 128]
                    idx = idx + 32
                    continue 
                if ceil32(_608) <= _608:
                    _992 = mem[_318]
                    idx = 0
                    while idx < _992:
                        mem[_600 + _608 + idx + 32] = mem[_318 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_600 + _608 + _992 + 32] = '.json'
                    if ceil32(_992) <= _992:
                        _1459 = mem[64]
                        mem[64] = _600 + _608 + _992 + 37
                        mem[_600 + _608 + _992 + 37] = 32
                        _1547 = mem[_1459]
                        mem[_600 + _608 + _992 + 69] = mem[_1459]
                        idx = 0
                        while idx < _1547:
                            mem[_600 + _608 + _992 + idx + 101] = mem[_1459 + idx + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_1547) > _1547:
                            mem[_600 + _608 + _992 + _1547 + 101] = 0
                        return 32, mem[_600 + _608 + _992 + 69 len ceil32(_1547) + 32]
                    _1479 = mem[64]
                    mem[64] = _600 + _608 + _992 + 37
                    mem[_600 + _608 + _992 + 37] = 32
                    _1567 = mem[_1479]
                    mem[_600 + _608 + _992 + 69] = mem[_1479]
                    idx = 0
                    while idx < _1567:
                        mem[_600 + _608 + _992 + idx + 101] = mem[_1479 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_1567) > _1567:
                        mem[_600 + _608 + _992 + _1567 + 101] = 0
                    return 32, mem[_600 + _608 + _992 + 69 len ceil32(_1567) + 32]
                mem[_600 + _608 + 32] = 0
                _1002 = mem[_318]
                idx = 0
                while idx < _1002:
                    mem[_600 + _608 + idx + 32] = mem[_318 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_600 + _608 + _1002 + 32] = '.json'
                if ceil32(_1002) <= _1002:
                    _1460 = mem[64]
                    mem[64] = _600 + _608 + _1002 + 37
                    mem[_600 + _608 + _1002 + 37] = 32
                    _1548 = mem[_1460]
                    mem[_600 + _608 + _1002 + 69] = mem[_1460]
                    idx = 0
                    while idx < _1548:
                        mem[_600 + _608 + _1002 + idx + 101] = mem[_1460 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_1548) > _1548:
                        mem[_600 + _608 + _1002 + _1548 + 101] = 0
                    return 32, mem[_600 + _608 + _1002 + 69 len ceil32(_1548) + 32]
                _1480 = mem[64]
                mem[64] = _600 + _608 + _1002 + 37
                mem[_600 + _608 + _1002 + 37] = 32
                _1568 = mem[_1480]
                mem[_600 + _608 + _1002 + 69] = mem[_1480]
                idx = 0
                while idx < _1568:
                    mem[_600 + _608 + _1002 + idx + 101] = mem[_1480 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_1568) > _1568:
                    mem[_600 + _608 + _1002 + _1568 + 101] = 0
                return 32, mem[_600 + _608 + _1002 + 69 len ceil32(_1568) + 32]
            s = 0
            idx = 1
            while idx:
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 'NH{q', 65
            _317 = mem[64]
            mem[mem[64]] = s
            mem[64] = mem[64] + ceil32(s) + 32
            if not s:
                t = s
                idx = 1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[_317]:
                        revert with 'NH{q', 50
                    mem[t + _317 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                _597 = mem[64]
                _605 = mem[(2 * ceil32(return_data.size)) + 96]
                mem[mem[64] + 32 len ceil32(mem[(2 * ceil32(return_data.size)) + 96])] = mem[(2 * ceil32(return_data.size)) + 128 len ceil32(mem[(2 * ceil32(return_data.size)) + 96])]
                if ceil32(_605) <= _605:
                    _989 = mem[_317]
                    mem[mem[64] + _605 + 32 len ceil32(mem[_317])] = mem[_317 + 32 len ceil32(mem[_317])]
                    mem[mem[64] + _605 + _989 + 32] = '.json'
                    if ceil32(_989) <= _989:
                        _1453 = mem[64]
                        mem[64] = mem[64] + _605 + _989 + 37
                        mem[_597 + _605 + _989 + 37] = 32
                        _1541 = mem[_1453]
                        mem[_597 + _605 + _989 + 69] = mem[_1453]
                        mem[_597 + _605 + _989 + 101 len ceil32(_1541)] = mem[_1453 + 32 len ceil32(_1541)]
                        if ceil32(_1541) > _1541:
                            mem[_597 + _605 + _989 + _1541 + 101] = 0
                        return 32, mem[_597 + _605 + _989 + 69 len ceil32(_1541) + 32]
                    _1473 = mem[64]
                    mem[64] = mem[64] + _605 + _989 + 37
                    mem[_597 + _605 + _989 + 37] = 32
                    _1561 = mem[_1473]
                    mem[_597 + _605 + _989 + 69] = mem[_1473]
                    mem[_597 + _605 + _989 + 101 len ceil32(_1561)] = mem[_1473 + 32 len ceil32(_1561)]
                    if ceil32(_1561) > _1561:
                        mem[_597 + _605 + _989 + _1561 + 101] = 0
                    return 32, mem[_597 + _605 + _989 + 69 len ceil32(_1561) + 32]
                mem[mem[64] + _605 + 32] = 0
                _999 = mem[_317]
                mem[mem[64] + _605 + 32 len ceil32(mem[_317])] = mem[_317 + 32 len ceil32(mem[_317])]
                mem[mem[64] + _605 + _999 + 32] = '.json'
                if ceil32(_999) <= _999:
                    _1454 = mem[64]
                    mem[64] = mem[64] + _605 + _999 + 37
                    mem[_597 + _605 + _999 + 37] = 32
                    _1542 = mem[_1454]
                    mem[_597 + _605 + _999 + 69] = mem[_1454]
                    mem[_597 + _605 + _999 + 101 len ceil32(_1542)] = mem[_1454 + 32 len ceil32(_1542)]
                    if ceil32(_1542) > _1542:
                        mem[_597 + _605 + _999 + _1542 + 101] = 0
                    return 32, mem[_597 + _605 + _999 + 69 len ceil32(_1542) + 32]
                _1474 = mem[64]
                mem[64] = mem[64] + _605 + _999 + 37
                mem[_597 + _605 + _999 + 37] = 32
                _1562 = mem[_1474]
                mem[_597 + _605 + _999 + 69] = mem[_1474]
                mem[_597 + _605 + _999 + 101 len ceil32(_1562)] = mem[_1474 + 32 len ceil32(_1562)]
                if ceil32(_1562) > _1562:
                    mem[_597 + _605 + _999 + _1562 + 101] = 0
                return 32, mem[_597 + _605 + _999 + 69 len ceil32(_1562) + 32]
            mem[_317 + 32 len s] = call.data[calldata.size len s]
            t = s
            idx = 1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[_317]:
                    revert with 'NH{q', 50
                mem[t + _317 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            _598 = mem[64]
            _606 = mem[(2 * ceil32(return_data.size)) + 96]
            mem[mem[64] + 32 len ceil32(mem[(2 * ceil32(return_data.size)) + 96])] = mem[(2 * ceil32(return_data.size)) + 128 len ceil32(mem[(2 * ceil32(return_data.size)) + 96])]
            if ceil32(_606) <= _606:
                _990 = mem[_317]
                mem[mem[64] + _606 + 32 len ceil32(mem[_317])] = mem[_317 + 32 len ceil32(mem[_317])]
                mem[mem[64] + _606 + _990 + 32] = '.json'
                if ceil32(_990) <= _990:
                    _1455 = mem[64]
                    mem[64] = mem[64] + _606 + _990 + 37
                    mem[_598 + _606 + _990 + 37] = 32
                    _1543 = mem[_1455]
                    mem[_598 + _606 + _990 + 69] = mem[_1455]
                    mem[_598 + _606 + _990 + 101 len ceil32(_1543)] = mem[_1455 + 32 len ceil32(_1543)]
                    if ceil32(_1543) > _1543:
                        mem[_598 + _606 + _990 + _1543 + 101] = 0
                    return 32, mem[_598 + _606 + _990 + 69 len ceil32(_1543) + 32]
                _1475 = mem[64]
                mem[64] = mem[64] + _606 + _990 + 37
                mem[_598 + _606 + _990 + 37] = 32
                _1563 = mem[_1475]
                mem[_598 + _606 + _990 + 69] = mem[_1475]
                mem[_598 + _606 + _990 + 101 len ceil32(_1563)] = mem[_1475 + 32 len ceil32(_1563)]
                if ceil32(_1563) > _1563:
                    mem[_598 + _606 + _990 + _1563 + 101] = 0
                return 32, mem[_598 + _606 + _990 + 69 len ceil32(_1563) + 32]
            mem[mem[64] + _606 + 32] = 0
            _1000 = mem[_317]
            mem[mem[64] + _606 + 32 len ceil32(mem[_317])] = mem[_317 + 32 len ceil32(mem[_317])]
            mem[mem[64] + _606 + _1000 + 32] = '.json'
            if ceil32(_1000) <= _1000:
                _1456 = mem[64]
                mem[64] = mem[64] + _606 + _1000 + 37
                mem[_598 + _606 + _1000 + 37] = 32
                _1544 = mem[_1456]
                mem[_598 + _606 + _1000 + 69] = mem[_1456]
                mem[_598 + _606 + _1000 + 101 len ceil32(_1544)] = mem[_1456 + 32 len ceil32(_1544)]
                if ceil32(_1544) > _1544:
                    mem[_598 + _606 + _1000 + _1544 + 101] = 0
                return 32, mem[_598 + _606 + _1000 + 69 len ceil32(_1544) + 32]
            _1476 = mem[64]
            mem[64] = mem[64] + _606 + _1000 + 37
            mem[_598 + _606 + _1000 + 37] = 32
            _1564 = mem[_1476]
            mem[_598 + _606 + _1000 + 69] = mem[_1476]
            mem[_598 + _606 + _1000 + 101 len ceil32(_1564)] = mem[_1476 + 32 len ceil32(_1564)]
            if ceil32(_1564) > _1564:
                mem[_598 + _606 + _1000 + _1564 + 101] = 0
            return 32, mem[_598 + _606 + _1000 + 69 len ceil32(_1564) + 32]
        mem[0] = 8
        mem[_147 + 32] = uint256(tiers.field_0)
        idx = _147 + 32
        s = 0
        while _147 + (32 * tiers.length) > idx:
            mem[idx + 32] = tiers[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[mem[64] + 4] = arg1
        require ext_code.size(NFTAddress)
        staticcall NFTAddress.0x3e8c379 with:
                gas gas_remaining wei
               args arg1
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _330 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_330] == mem[_330]
        idx = 0
        while idx < tiers.length:
            if idx >= tiers.length:
                revert with 'NH{q', 50
            if mem[(32 * idx) + _147 + 32] and 10^18 > -1 / mem[(32 * idx) + _147 + 32]:
                revert with 'NH{q', 17
            if mem[_330] >= 10^18 * mem[(32 * idx) + _147 + 32]:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if tiers.length < idx:
                revert with 'NH{q', 17
            if tiers.length - idx > -2:
                revert with 'NH{q', 17
            if not tiers.length + -idx + 1:
                _697 = mem[64]
                mem[64] = mem[64] + 64
                mem[_697] = 1
                mem[_697 + 32] = '0'
                _711 = mem[64]
                _719 = mem[(2 * ceil32(return_data.size)) + 96]
                idx = 0
                while idx < _719:
                    mem[_711 + idx + 32] = mem[(2 * ceil32(return_data.size)) + idx + 128]
                    idx = idx + 32
                    continue 
                if ceil32(_719) <= _719:
                    _993 = mem[_697]
                    idx = 0
                    while idx < _993:
                        mem[_711 + _719 + idx + 32] = mem[_697 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_711 + _719 + _993 + 32] = '.json'
                    if ceil32(_993) <= _993:
                        _1461 = mem[64]
                        mem[64] = _711 + _719 + _993 + 37
                        mem[_711 + _719 + _993 + 37] = 32
                        _1549 = mem[_1461]
                        mem[_711 + _719 + _993 + 69] = mem[_1461]
                        idx = 0
                        while idx < _1549:
                            mem[_711 + _719 + _993 + idx + 101] = mem[_1461 + idx + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_1549) > _1549:
                            mem[_711 + _719 + _993 + _1549 + 101] = 0
                        return 32, mem[_711 + _719 + _993 + 69 len ceil32(_1549) + 32]
                    _1485 = mem[64]
                    mem[64] = _711 + _719 + _993 + 37
                    mem[_711 + _719 + _993 + 37] = 32
                    _1573 = mem[_1485]
                    mem[_711 + _719 + _993 + 69] = mem[_1485]
                    idx = 0
                    while idx < _1573:
                        mem[_711 + _719 + _993 + idx + 101] = mem[_1485 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_1573) > _1573:
                        mem[_711 + _719 + _993 + _1573 + 101] = 0
                    return 32, mem[_711 + _719 + _993 + 69 len ceil32(_1573) + 32]
                mem[_711 + _719 + 32] = 0
                _1008 = mem[_697]
                idx = 0
                while idx < _1008:
                    mem[_711 + _719 + idx + 32] = mem[_697 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_711 + _719 + _1008 + 32] = '.json'
                if ceil32(_1008) <= _1008:
                    _1462 = mem[64]
                    mem[64] = _711 + _719 + _1008 + 37
                    mem[_711 + _719 + _1008 + 37] = 32
                    _1550 = mem[_1462]
                    mem[_711 + _719 + _1008 + 69] = mem[_1462]
                    idx = 0
                    while idx < _1550:
                        mem[_711 + _719 + _1008 + idx + 101] = mem[_1462 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_1550) > _1550:
                        mem[_711 + _719 + _1008 + _1550 + 101] = 0
                    return 32, mem[_711 + _719 + _1008 + 69 len ceil32(_1550) + 32]
                _1486 = mem[64]
                mem[64] = _711 + _719 + _1008 + 37
                mem[_711 + _719 + _1008 + 37] = 32
                _1574 = mem[_1486]
                mem[_711 + _719 + _1008 + 69] = mem[_1486]
                idx = 0
                while idx < _1574:
                    mem[_711 + _719 + _1008 + idx + 101] = mem[_1486 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_1574) > _1574:
                    mem[_711 + _719 + _1008 + _1574 + 101] = 0
                return 32, mem[_711 + _719 + _1008 + 69 len ceil32(_1574) + 32]
            t = 0
            s = tiers.length + -idx + 1
            while s:
                if t == -1:
                    revert with 'NH{q', 17
                t = t + 1
                s = s / 10
                continue 
            if t > test266151307():
                revert with 'NH{q', 65
            _986 = mem[64]
            mem[mem[64]] = t
            mem[64] = mem[64] + ceil32(t) + 32
            if not t:
                u = t
                s = tiers.length + -idx + 1
                while s:
                    if u < 1:
                        revert with 'NH{q', 17
                    if 48 > -(s % 10) - 1:
                        revert with 'NH{q', 17
                    if u - 1 >= mem[_986]:
                        revert with 'NH{q', 50
                    mem[u + _986 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                    u = u - 1
                    s = s / 10
                    continue 
                _1439 = mem[64]
                _1447 = mem[(2 * ceil32(return_data.size)) + 96]
                idx = 0
                while idx < _1447:
                    mem[_1439 + idx + 32] = mem[(2 * ceil32(return_data.size)) + idx + 128]
                    idx = idx + 32
                    continue 
                if ceil32(_1447) <= _1447:
                    _1983 = mem[_986]
                    idx = 0
                    while idx < _1983:
                        mem[_1439 + _1447 + idx + 32] = mem[_986 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1439 + _1447 + _1983 + 32] = '.json'
                    if ceil32(_1983) <= _1983:
                        _2305 = mem[64]
                        mem[64] = _1439 + _1447 + _1983 + 37
                        mem[_1439 + _1447 + _1983 + 37] = 32
                        _2369 = mem[_2305]
                        mem[_1439 + _1447 + _1983 + 69] = mem[_2305]
                        idx = 0
                        while idx < _2369:
                            mem[_1439 + _1447 + _1983 + idx + 101] = mem[_2305 + idx + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_2369) > _2369:
                            mem[_1439 + _1447 + _1983 + _2369 + 101] = 0
                        return 32, mem[_1439 + _1447 + _1983 + 69 len ceil32(_2369) + 32]
                    _2321 = mem[64]
                    mem[64] = _1439 + _1447 + _1983 + 37
                    mem[_1439 + _1447 + _1983 + 37] = 32
                    _2385 = mem[_2321]
                    mem[_1439 + _1447 + _1983 + 69] = mem[_2321]
                    idx = 0
                    while idx < _2385:
                        mem[_1439 + _1447 + _1983 + idx + 101] = mem[_2321 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_2385) > _2385:
                        mem[_1439 + _1447 + _1983 + _2385 + 101] = 0
                    return 32, mem[_1439 + _1447 + _1983 + 69 len ceil32(_2385) + 32]
                mem[_1439 + _1447 + 32] = 0
                _2007 = mem[_986]
                idx = 0
                while idx < _2007:
                    mem[_1439 + _1447 + idx + 32] = mem[_986 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1439 + _1447 + _2007 + 32] = '.json'
                if ceil32(_2007) <= _2007:
                    _2306 = mem[64]
                    mem[64] = _1439 + _1447 + _2007 + 37
                    mem[_1439 + _1447 + _2007 + 37] = 32
                    _2370 = mem[_2306]
                    mem[_1439 + _1447 + _2007 + 69] = mem[_2306]
                    idx = 0
                    while idx < _2370:
                        mem[_1439 + _1447 + _2007 + idx + 101] = mem[_2306 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_2370) > _2370:
                        mem[_1439 + _1447 + _2007 + _2370 + 101] = 0
                    return 32, mem[_1439 + _1447 + _2007 + 69 len ceil32(_2370) + 32]
                _2322 = mem[64]
                mem[64] = _1439 + _1447 + _2007 + 37
                mem[_1439 + _1447 + _2007 + 37] = 32
                _2386 = mem[_2322]
                mem[_1439 + _1447 + _2007 + 69] = mem[_2322]
                idx = 0
                while idx < _2386:
                    mem[_1439 + _1447 + _2007 + idx + 101] = mem[_2322 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_2386) > _2386:
                    mem[_1439 + _1447 + _2007 + _2386 + 101] = 0
                return 32, mem[_1439 + _1447 + _2007 + 69 len ceil32(_2386) + 32]
            mem[_986 + 32 len t] = call.data[calldata.size len t]
            u = t
            s = tiers.length + -idx + 1
            while s:
                if u < 1:
                    revert with 'NH{q', 17
                if 48 > -(s % 10) - 1:
                    revert with 'NH{q', 17
                if u - 1 >= mem[_986]:
                    revert with 'NH{q', 50
                mem[u + _986 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                u = u - 1
                s = s / 10
                continue 
            _1440 = mem[64]
            _1448 = mem[(2 * ceil32(return_data.size)) + 96]
            idx = 0
            while idx < _1448:
                mem[_1440 + idx + 32] = mem[(2 * ceil32(return_data.size)) + idx + 128]
                idx = idx + 32
                continue 
            if ceil32(_1448) <= _1448:
                _1984 = mem[_986]
                idx = 0
                while idx < _1984:
                    mem[_1440 + _1448 + idx + 32] = mem[_986 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1440 + _1448 + _1984 + 32] = '.json'
                if ceil32(_1984) <= _1984:
                    _2307 = mem[64]
                    mem[64] = _1440 + _1448 + _1984 + 37
                    mem[_1440 + _1448 + _1984 + 37] = 32
                    _2371 = mem[_2307]
                    mem[_1440 + _1448 + _1984 + 69] = mem[_2307]
                    idx = 0
                    while idx < _2371:
                        mem[_1440 + _1448 + _1984 + idx + 101] = mem[_2307 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_2371) > _2371:
                        mem[_1440 + _1448 + _1984 + _2371 + 101] = 0
                    return 32, mem[_1440 + _1448 + _1984 + 69 len ceil32(_2371) + 32]
                _2323 = mem[64]
                mem[64] = _1440 + _1448 + _1984 + 37
                mem[_1440 + _1448 + _1984 + 37] = 32
                _2387 = mem[_2323]
                mem[_1440 + _1448 + _1984 + 69] = mem[_2323]
                idx = 0
                while idx < _2387:
                    mem[_1440 + _1448 + _1984 + idx + 101] = mem[_2323 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_2387) > _2387:
                    mem[_1440 + _1448 + _1984 + _2387 + 101] = 0
                return 32, mem[_1440 + _1448 + _1984 + 69 len ceil32(_2387) + 32]
            mem[_1440 + _1448 + 32] = 0
            _2008 = mem[_986]
            idx = 0
            while idx < _2008:
                mem[_1440 + _1448 + idx + 32] = mem[_986 + idx + 32]
                idx = idx + 32
                continue 
            mem[_1440 + _1448 + _2008 + 32] = '.json'
            if ceil32(_2008) <= _2008:
                _2308 = mem[64]
                mem[64] = _1440 + _1448 + _2008 + 37
                mem[_1440 + _1448 + _2008 + 37] = 32
                _2372 = mem[_2308]
                mem[_1440 + _1448 + _2008 + 69] = mem[_2308]
                idx = 0
                while idx < _2372:
                    mem[_1440 + _1448 + _2008 + idx + 101] = mem[_2308 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_2372) > _2372:
                    mem[_1440 + _1448 + _2008 + _2372 + 101] = 0
                return 32, mem[_1440 + _1448 + _2008 + 69 len ceil32(_2372) + 32]
            _2324 = mem[64]
            mem[64] = _1440 + _1448 + _2008 + 37
            mem[_1440 + _1448 + _2008 + 37] = 32
            _2388 = mem[_2324]
            mem[_1440 + _1448 + _2008 + 69] = mem[_2324]
            idx = 0
            while idx < _2388:
                mem[_1440 + _1448 + _2008 + idx + 101] = mem[_2324 + idx + 32]
                idx = idx + 32
                continue 
            if ceil32(_2388) > _2388:
                mem[_1440 + _1448 + _2008 + _2388 + 101] = 0
            return 32, mem[_1440 + _1448 + _2008 + 69 len ceil32(_2388) + 32]
        s = 0
        idx = 1
        while idx:
            if s == -1:
                revert with 'NH{q', 17
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 'NH{q', 65
        _985 = mem[64]
        mem[mem[64]] = s
        mem[64] = mem[64] + ceil32(s) + 32
        if not s:
            t = s
            idx = 1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[_985]:
                    revert with 'NH{q', 50
                mem[t + _985 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            _1437 = mem[64]
            _1445 = mem[(2 * ceil32(return_data.size)) + 96]
            mem[mem[64] + 32 len ceil32(mem[(2 * ceil32(return_data.size)) + 96])] = mem[(2 * ceil32(return_data.size)) + 128 len ceil32(mem[(2 * ceil32(return_data.size)) + 96])]
            if ceil32(_1445) <= _1445:
                _1981 = mem[_985]
                mem[mem[64] + _1445 + 32 len ceil32(mem[_985])] = mem[_985 + 32 len ceil32(mem[_985])]
                mem[mem[64] + _1445 + _1981 + 32] = '.json'
                if ceil32(_1981) <= _1981:
                    _2301 = mem[64]
                    mem[64] = mem[64] + _1445 + _1981 + 37
                    mem[_1437 + _1445 + _1981 + 37] = 32
                    _2365 = mem[_2301]
                    mem[_1437 + _1445 + _1981 + 69] = mem[_2301]
                    mem[_1437 + _1445 + _1981 + 101 len ceil32(_2365)] = mem[_2301 + 32 len ceil32(_2365)]
                    if ceil32(_2365) > _2365:
                        mem[_1437 + _1445 + _1981 + _2365 + 101] = 0
                    return 32, mem[_1437 + _1445 + _1981 + 69 len ceil32(_2365) + 32]
                _2317 = mem[64]
                mem[64] = mem[64] + _1445 + _1981 + 37
                mem[_1437 + _1445 + _1981 + 37] = 32
                _2381 = mem[_2317]
                mem[_1437 + _1445 + _1981 + 69] = mem[_2317]
                mem[_1437 + _1445 + _1981 + 101 len ceil32(_2381)] = mem[_2317 + 32 len ceil32(_2381)]
                var169001 = ceil32(_2381)
                if ceil32(_2381) > _2381:
                    mem[_1437 + _1445 + _1981 + _2381 + 101] = 0
                return 32, mem[_1437 + _1445 + _1981 + 69 len ceil32(_2381) + 32]
            mem[mem[64] + _1445 + 32] = 0
            _2005 = mem[_985]
            mem[mem[64] + _1445 + 32 len ceil32(mem[_985])] = mem[_985 + 32 len ceil32(mem[_985])]
            mem[mem[64] + _1445 + _2005 + 32] = '.json'
            if ceil32(_2005) <= _2005:
                _2302 = mem[64]
                mem[64] = mem[64] + _1445 + _2005 + 37
                mem[_1437 + _1445 + _2005 + 37] = 32
                _2366 = mem[_2302]
                mem[_1437 + _1445 + _2005 + 69] = mem[_2302]
                mem[_1437 + _1445 + _2005 + 101 len ceil32(_2366)] = mem[_2302 + 32 len ceil32(_2366)]
                var169001 = ceil32(_2366)
                if ceil32(_2366) > _2366:
                    mem[_1437 + _1445 + _2005 + _2366 + 101] = 0
                return 32, mem[_1437 + _1445 + _2005 + 69 len ceil32(_2366) + 32]
            _2318 = mem[64]
            mem[64] = mem[64] + _1445 + _2005 + 37
            mem[_1437 + _1445 + _2005 + 37] = 32
            _2382 = mem[_2318]
            mem[_1437 + _1445 + _2005 + 69] = mem[_2318]
            mem[_1437 + _1445 + _2005 + 101 len ceil32(_2382)] = mem[_2318 + 32 len ceil32(_2382)]
            var170001 = ceil32(_2382)
            if ceil32(_2382) > _2382:
                mem[_1437 + _1445 + _2005 + _2382 + 101] = 0
            return 32, mem[_1437 + _1445 + _2005 + 69 len ceil32(_2382) + 32]
        mem[_985 + 32 len s] = call.data[calldata.size len s]
        t = s
        idx = 1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[_985]:
                revert with 'NH{q', 50
            mem[t + _985 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _1438 = mem[64]
        _1446 = mem[(2 * ceil32(return_data.size)) + 96]
        mem[mem[64] + 32 len ceil32(mem[(2 * ceil32(return_data.size)) + 96])] = mem[(2 * ceil32(return_data.size)) + 128 len ceil32(mem[(2 * ceil32(return_data.size)) + 96])]
        if ceil32(_1446) <= _1446:
            _1982 = mem[_985]
            mem[mem[64] + _1446 + 32 len ceil32(mem[_985])] = mem[_985 + 32 len ceil32(mem[_985])]
            mem[mem[64] + _1446 + _1982 + 32] = '.json'
            if ceil32(_1982) <= _1982:
                _2303 = mem[64]
                mem[64] = mem[64] + _1446 + _1982 + 37
                mem[_1438 + _1446 + _1982 + 37] = 32
                _2367 = mem[_2303]
                mem[_1438 + _1446 + _1982 + 69] = mem[_2303]
                mem[_1438 + _1446 + _1982 + 101 len ceil32(_2367)] = mem[_2303 + 32 len ceil32(_2367)]
                var169001 = ceil32(_2367)
                if ceil32(_2367) > _2367:
                    mem[_1438 + _1446 + _1982 + _2367 + 101] = 0
                return 32, mem[_1438 + _1446 + _1982 + 69 len ceil32(_2367) + 32]
            _2319 = mem[64]
            mem[64] = mem[64] + _1446 + _1982 + 37
            mem[_1438 + _1446 + _1982 + 37] = 32
            _2383 = mem[_2319]
            mem[_1438 + _1446 + _1982 + 69] = mem[_2319]
            mem[_1438 + _1446 + _1982 + 101 len ceil32(_2383)] = mem[_2319 + 32 len ceil32(_2383)]
            var170001 = ceil32(_2383)
            if ceil32(_2383) > _2383:
                mem[_1438 + _1446 + _1982 + _2383 + 101] = 0
            return 32, mem[_1438 + _1446 + _1982 + 69 len ceil32(_2383) + 32]
        mem[mem[64] + _1446 + 32] = 0
        _2006 = mem[_985]
        mem[mem[64] + _1446 + 32 len ceil32(mem[_985])] = mem[_985 + 32 len ceil32(mem[_985])]
        mem[mem[64] + _1446 + _2006 + 32] = '.json'
        if ceil32(_2006) <= _2006:
            _2304 = mem[64]
            mem[64] = mem[64] + _1446 + _2006 + 37
            mem[_1438 + _1446 + _2006 + 37] = 32
            _2368 = mem[_2304]
            mem[_1438 + _1446 + _2006 + 69] = mem[_2304]
            mem[_1438 + _1446 + _2006 + 101 len ceil32(_2368)] = mem[_2304 + 32 len ceil32(_2368)]
            var170001 = ceil32(_2368)
            if ceil32(_2368) > _2368:
                mem[_1438 + _1446 + _2006 + _2368 + 101] = 0
            return 32, mem[_1438 + _1446 + _2006 + 69 len ceil32(_2368) + 32]
        _2320 = mem[64]
        mem[64] = mem[64] + _1446 + _2006 + 37
        mem[_1438 + _1446 + _2006 + 37] = 32
        _2384 = mem[_2320]
        mem[_1438 + _1446 + _2006 + 69] = mem[_2320]
        mem[_1438 + _1446 + _2006 + 101 len ceil32(_2384)] = mem[_2320 + 32 len ceil32(_2384)]
        var171001 = ceil32(_2384)
        if ceil32(_2384) > _2384:
            mem[_1438 + _1446 + _2006 + _2384 + 101] = 0
        return 32, mem[_1438 + _1446 + _2006 + 69 len ceil32(_2384) + 32]
    mem[(2 * ceil32(return_data.size)) + _10 + 128] = 0
    if _10 <= 0:
        return ''
    mem[mem[64] + 4] = arg1
    require ext_code.size(NFTAddress)
    staticcall NFTAddress.exists(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _138 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_138] == bool(mem[_138])
    if not mem[_138]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    _151 = mem[64]
    mem[64] = mem[64] + (32 * tiers.length) + 32
    mem[_151] = tiers.length
    if not tiers.length:
        mem[mem[64] + 4] = arg1
        require ext_code.size(NFTAddress)
        staticcall NFTAddress.0x3e8c379 with:
                gas gas_remaining wei
               args arg1
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _160 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_160] == mem[_160]
        idx = 0
        while idx < tiers.length:
            if idx >= tiers.length:
                revert with 'NH{q', 50
            if mem[(32 * idx) + _151 + 32] and 10^18 > -1 / mem[(32 * idx) + _151 + 32]:
                revert with 'NH{q', 17
            if mem[_160] >= 10^18 * mem[(32 * idx) + _151 + 32]:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if tiers.length < idx:
                revert with 'NH{q', 17
            if tiers.length - idx > -2:
                revert with 'NH{q', 17
            if not tiers.length + -idx + 1:
                _250 = mem[64]
                mem[64] = mem[64] + 64
                mem[_250] = 1
                mem[_250 + 32] = '0'
                _252 = mem[64]
                idx = 0
                while idx < _10:
                    mem[_252 + idx + 32] = mem[(2 * ceil32(return_data.size)) + idx + 128]
                    idx = idx + 32
                    continue 
                if ceil32(_10) <= _10:
                    _323 = mem[_250]
                    idx = 0
                    while idx < _323:
                        mem[_252 + _10 + idx + 32] = mem[_250 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_252 + _10 + _323 + 32] = '.json'
                    if ceil32(_323) <= _323:
                        _617 = mem[64]
                        mem[64] = _252 + _10 + _323 + 37
                        mem[_252 + _10 + _323 + 37] = 32
                        _641 = mem[_617]
                        mem[_252 + _10 + _323 + 69] = mem[_617]
                        idx = 0
                        while idx < _641:
                            mem[_252 + _10 + _323 + idx + 101] = mem[_617 + idx + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_641) > _641:
                            mem[_252 + _10 + _323 + _641 + 101] = 0
                        return 32, mem[_252 + _10 + _323 + 69 len ceil32(_641) + 32]
                    _629 = mem[64]
                    mem[64] = _252 + _10 + _323 + 37
                    mem[_252 + _10 + _323 + 37] = 32
                    _653 = mem[_629]
                    mem[_252 + _10 + _323 + 69] = mem[_629]
                    idx = 0
                    while idx < _653:
                        mem[_252 + _10 + _323 + idx + 101] = mem[_629 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_653) > _653:
                        mem[_252 + _10 + _323 + _653 + 101] = 0
                    return 32, mem[_252 + _10 + _323 + 69 len ceil32(_653) + 32]
                mem[_252 + _10 + 32] = 0
                _328 = mem[_250]
                idx = 0
                while idx < _328:
                    mem[_252 + _10 + idx + 32] = mem[_250 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_252 + _10 + _328 + 32] = '.json'
                if ceil32(_328) <= _328:
                    _618 = mem[64]
                    mem[64] = _252 + _10 + _328 + 37
                    mem[_252 + _10 + _328 + 37] = 32
                    _642 = mem[_618]
                    mem[_252 + _10 + _328 + 69] = mem[_618]
                    idx = 0
                    while idx < _642:
                        mem[_252 + _10 + _328 + idx + 101] = mem[_618 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_642) > _642:
                        mem[_252 + _10 + _328 + _642 + 101] = 0
                    return 32, mem[_252 + _10 + _328 + 69 len ceil32(_642) + 32]
                _630 = mem[64]
                mem[64] = _252 + _10 + _328 + 37
                mem[_252 + _10 + _328 + 37] = 32
                _654 = mem[_630]
                mem[_252 + _10 + _328 + 69] = mem[_630]
                idx = 0
                while idx < _654:
                    mem[_252 + _10 + _328 + idx + 101] = mem[_630 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_654) > _654:
                    mem[_252 + _10 + _328 + _654 + 101] = 0
                return 32, mem[_252 + _10 + _328 + 69 len ceil32(_654) + 32]
            t = 0
            s = tiers.length + -idx + 1
            while s:
                if t == -1:
                    revert with 'NH{q', 17
                t = t + 1
                s = s / 10
                continue 
            if t > test266151307():
                revert with 'NH{q', 65
            _320 = mem[64]
            mem[mem[64]] = t
            mem[64] = mem[64] + ceil32(t) + 32
            if not t:
                u = t
                s = tiers.length + -idx + 1
                while s:
                    if u < 1:
                        revert with 'NH{q', 17
                    if 48 > -(s % 10) - 1:
                        revert with 'NH{q', 17
                    if u - 1 >= mem[_320]:
                        revert with 'NH{q', 50
                    mem[u + _320 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                    u = u - 1
                    s = s / 10
                    continue 
                _603 = mem[64]
                _611 = mem[(2 * ceil32(return_data.size)) + 96]
                idx = 0
                while idx < _611:
                    mem[_603 + idx + 32] = mem[(2 * ceil32(return_data.size)) + idx + 128]
                    idx = idx + 32
                    continue 
                if ceil32(_611) <= _611:
                    _996 = mem[_320]
                    idx = 0
                    while idx < _996:
                        mem[_603 + _611 + idx + 32] = mem[_320 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_603 + _611 + _996 + 32] = '.json'
                    if ceil32(_996) <= _996:
                        _1467 = mem[64]
                        mem[64] = _603 + _611 + _996 + 37
                        mem[_603 + _611 + _996 + 37] = 32
                        _1555 = mem[_1467]
                        mem[_603 + _611 + _996 + 69] = mem[_1467]
                        idx = 0
                        while idx < _1555:
                            mem[_603 + _611 + _996 + idx + 101] = mem[_1467 + idx + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_1555) > _1555:
                            mem[_603 + _611 + _996 + _1555 + 101] = 0
                        return 32, mem[_603 + _611 + _996 + 69 len ceil32(_1555) + 32]
                    _1491 = mem[64]
                    mem[64] = _603 + _611 + _996 + 37
                    mem[_603 + _611 + _996 + 37] = 32
                    _1579 = mem[_1491]
                    mem[_603 + _611 + _996 + 69] = mem[_1491]
                    idx = 0
                    while idx < _1579:
                        mem[_603 + _611 + _996 + idx + 101] = mem[_1491 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_1579) > _1579:
                        mem[_603 + _611 + _996 + _1579 + 101] = 0
                    return 32, mem[_603 + _611 + _996 + 69 len ceil32(_1579) + 32]
                mem[_603 + _611 + 32] = 0
                _1011 = mem[_320]
                idx = 0
                while idx < _1011:
                    mem[_603 + _611 + idx + 32] = mem[_320 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_603 + _611 + _1011 + 32] = '.json'
                if ceil32(_1011) <= _1011:
                    _1468 = mem[64]
                    mem[64] = _603 + _611 + _1011 + 37
                    mem[_603 + _611 + _1011 + 37] = 32
                    _1556 = mem[_1468]
                    mem[_603 + _611 + _1011 + 69] = mem[_1468]
                    idx = 0
                    while idx < _1556:
                        mem[_603 + _611 + _1011 + idx + 101] = mem[_1468 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_1556) > _1556:
                        mem[_603 + _611 + _1011 + _1556 + 101] = 0
                    return 32, mem[_603 + _611 + _1011 + 69 len ceil32(_1556) + 32]
                _1492 = mem[64]
                mem[64] = _603 + _611 + _1011 + 37
                mem[_603 + _611 + _1011 + 37] = 32
                _1580 = mem[_1492]
                mem[_603 + _611 + _1011 + 69] = mem[_1492]
                idx = 0
                while idx < _1580:
                    mem[_603 + _611 + _1011 + idx + 101] = mem[_1492 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_1580) > _1580:
                    mem[_603 + _611 + _1011 + _1580 + 101] = 0
                return 32, mem[_603 + _611 + _1011 + 69 len ceil32(_1580) + 32]
            mem[_320 + 32 len t] = call.data[calldata.size len t]
            u = t
            s = tiers.length + -idx + 1
            while s:
                if u < 1:
                    revert with 'NH{q', 17
                if 48 > -(s % 10) - 1:
                    revert with 'NH{q', 17
                if u - 1 >= mem[_320]:
                    revert with 'NH{q', 50
                mem[u + _320 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                u = u - 1
                s = s / 10
                continue 
            _604 = mem[64]
            _612 = mem[(2 * ceil32(return_data.size)) + 96]
            idx = 0
            while idx < _612:
                mem[_604 + idx + 32] = mem[(2 * ceil32(return_data.size)) + idx + 128]
                idx = idx + 32
                continue 
            if ceil32(_612) <= _612:
                _997 = mem[_320]
                idx = 0
                while idx < _997:
                    mem[_604 + _612 + idx + 32] = mem[_320 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_604 + _612 + _997 + 32] = '.json'
                if ceil32(_997) <= _997:
                    _1469 = mem[64]
                    mem[64] = _604 + _612 + _997 + 37
                    mem[_604 + _612 + _997 + 37] = 32
                    _1557 = mem[_1469]
                    mem[_604 + _612 + _997 + 69] = mem[_1469]
                    idx = 0
                    while idx < _1557:
                        mem[_604 + _612 + _997 + idx + 101] = mem[_1469 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_1557) > _1557:
                        mem[_604 + _612 + _997 + _1557 + 101] = 0
                    return 32, mem[_604 + _612 + _997 + 69 len ceil32(_1557) + 32]
                _1493 = mem[64]
                mem[64] = _604 + _612 + _997 + 37
                mem[_604 + _612 + _997 + 37] = 32
                _1581 = mem[_1493]
                mem[_604 + _612 + _997 + 69] = mem[_1493]
                idx = 0
                while idx < _1581:
                    mem[_604 + _612 + _997 + idx + 101] = mem[_1493 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_1581) > _1581:
                    mem[_604 + _612 + _997 + _1581 + 101] = 0
                return 32, mem[_604 + _612 + _997 + 69 len ceil32(_1581) + 32]
            mem[_604 + _612 + 32] = 0
            _1012 = mem[_320]
            idx = 0
            while idx < _1012:
                mem[_604 + _612 + idx + 32] = mem[_320 + idx + 32]
                idx = idx + 32
                continue 
            mem[_604 + _612 + _1012 + 32] = '.json'
            if ceil32(_1012) <= _1012:
                _1470 = mem[64]
                mem[64] = _604 + _612 + _1012 + 37
                mem[_604 + _612 + _1012 + 37] = 32
                _1558 = mem[_1470]
                mem[_604 + _612 + _1012 + 69] = mem[_1470]
                idx = 0
                while idx < _1558:
                    mem[_604 + _612 + _1012 + idx + 101] = mem[_1470 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_1558) > _1558:
                    mem[_604 + _612 + _1012 + _1558 + 101] = 0
                return 32, mem[_604 + _612 + _1012 + 69 len ceil32(_1558) + 32]
            _1494 = mem[64]
            mem[64] = _604 + _612 + _1012 + 37
            mem[_604 + _612 + _1012 + 37] = 32
            _1582 = mem[_1494]
            mem[_604 + _612 + _1012 + 69] = mem[_1494]
            idx = 0
            while idx < _1582:
                mem[_604 + _612 + _1012 + idx + 101] = mem[_1494 + idx + 32]
                idx = idx + 32
                continue 
            if ceil32(_1582) > _1582:
                mem[_604 + _612 + _1012 + _1582 + 101] = 0
            return 32, mem[_604 + _612 + _1012 + 69 len ceil32(_1582) + 32]
        s = 0
        idx = 1
        while idx:
            if s == -1:
                revert with 'NH{q', 17
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 'NH{q', 65
        _319 = mem[64]
        mem[mem[64]] = s
        mem[64] = mem[64] + ceil32(s) + 32
        if not s:
            t = s
            idx = 1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[_319]:
                    revert with 'NH{q', 50
                mem[t + _319 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            _601 = mem[64]
            _609 = mem[(2 * ceil32(return_data.size)) + 96]
            mem[mem[64] + 32 len ceil32(mem[(2 * ceil32(return_data.size)) + 96])] = mem[(2 * ceil32(return_data.size)) + 128 len ceil32(mem[(2 * ceil32(return_data.size)) + 96])]
            if ceil32(_609) <= _609:
                _994 = mem[_319]
                mem[mem[64] + _609 + 32 len ceil32(mem[_319])] = mem[_319 + 32 len ceil32(mem[_319])]
                mem[mem[64] + _609 + _994 + 32] = '.json'
                if ceil32(_994) <= _994:
                    _1463 = mem[64]
                    mem[64] = mem[64] + _609 + _994 + 37
                    mem[_601 + _609 + _994 + 37] = 32
                    _1551 = mem[_1463]
                    mem[_601 + _609 + _994 + 69] = mem[_1463]
                    mem[_601 + _609 + _994 + 101 len ceil32(_1551)] = mem[_1463 + 32 len ceil32(_1551)]
                    if ceil32(_1551) > _1551:
                        mem[_601 + _609 + _994 + _1551 + 101] = 0
                    return 32, mem[_601 + _609 + _994 + 69 len ceil32(_1551) + 32]
                _1487 = mem[64]
                mem[64] = mem[64] + _609 + _994 + 37
                mem[_601 + _609 + _994 + 37] = 32
                _1575 = mem[_1487]
                mem[_601 + _609 + _994 + 69] = mem[_1487]
                mem[_601 + _609 + _994 + 101 len ceil32(_1575)] = mem[_1487 + 32 len ceil32(_1575)]
                if ceil32(_1575) > _1575:
                    mem[_601 + _609 + _994 + _1575 + 101] = 0
                return 32, mem[_601 + _609 + _994 + 69 len ceil32(_1575) + 32]
            mem[mem[64] + _609 + 32] = 0
            _1009 = mem[_319]
            mem[mem[64] + _609 + 32 len ceil32(mem[_319])] = mem[_319 + 32 len ceil32(mem[_319])]
            mem[mem[64] + _609 + _1009 + 32] = '.json'
            if ceil32(_1009) <= _1009:
                _1464 = mem[64]
                mem[64] = mem[64] + _609 + _1009 + 37
                mem[_601 + _609 + _1009 + 37] = 32
                _1552 = mem[_1464]
                mem[_601 + _609 + _1009 + 69] = mem[_1464]
                mem[_601 + _609 + _1009 + 101 len ceil32(_1552)] = mem[_1464 + 32 len ceil32(_1552)]
                if ceil32(_1552) > _1552:
                    mem[_601 + _609 + _1009 + _1552 + 101] = 0
                return 32, mem[_601 + _609 + _1009 + 69 len ceil32(_1552) + 32]
            _1488 = mem[64]
            mem[64] = mem[64] + _609 + _1009 + 37
            mem[_601 + _609 + _1009 + 37] = 32
            _1576 = mem[_1488]
            mem[_601 + _609 + _1009 + 69] = mem[_1488]
            mem[_601 + _609 + _1009 + 101 len ceil32(_1576)] = mem[_1488 + 32 len ceil32(_1576)]
            if ceil32(_1576) > _1576:
                mem[_601 + _609 + _1009 + _1576 + 101] = 0
            return 32, mem[_601 + _609 + _1009 + 69 len ceil32(_1576) + 32]
        mem[_319 + 32 len s] = call.data[calldata.size len s]
        t = s
        idx = 1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[_319]:
                revert with 'NH{q', 50
            mem[t + _319 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _602 = mem[64]
        _610 = mem[(2 * ceil32(return_data.size)) + 96]
        mem[mem[64] + 32 len ceil32(mem[(2 * ceil32(return_data.size)) + 96])] = mem[(2 * ceil32(return_data.size)) + 128 len ceil32(mem[(2 * ceil32(return_data.size)) + 96])]
        if ceil32(_610) <= _610:
            _995 = mem[_319]
            mem[mem[64] + _610 + 32 len ceil32(mem[_319])] = mem[_319 + 32 len ceil32(mem[_319])]
            mem[mem[64] + _610 + _995 + 32] = '.json'
            if ceil32(_995) <= _995:
                _1465 = mem[64]
                mem[64] = mem[64] + _610 + _995 + 37
                mem[_602 + _610 + _995 + 37] = 32
                _1553 = mem[_1465]
                mem[_602 + _610 + _995 + 69] = mem[_1465]
                mem[_602 + _610 + _995 + 101 len ceil32(_1553)] = mem[_1465 + 32 len ceil32(_1553)]
                if ceil32(_1553) > _1553:
                    mem[_602 + _610 + _995 + _1553 + 101] = 0
                return 32, mem[_602 + _610 + _995 + 69 len ceil32(_1553) + 32]
            _1489 = mem[64]
            mem[64] = mem[64] + _610 + _995 + 37
            mem[_602 + _610 + _995 + 37] = 32
            _1577 = mem[_1489]
            mem[_602 + _610 + _995 + 69] = mem[_1489]
            mem[_602 + _610 + _995 + 101 len ceil32(_1577)] = mem[_1489 + 32 len ceil32(_1577)]
            if ceil32(_1577) > _1577:
                mem[_602 + _610 + _995 + _1577 + 101] = 0
            return 32, mem[_602 + _610 + _995 + 69 len ceil32(_1577) + 32]
        mem[mem[64] + _610 + 32] = 0
        _1010 = mem[_319]
        mem[mem[64] + _610 + 32 len ceil32(mem[_319])] = mem[_319 + 32 len ceil32(mem[_319])]
        mem[mem[64] + _610 + _1010 + 32] = '.json'
        if ceil32(_1010) <= _1010:
            _1466 = mem[64]
            mem[64] = mem[64] + _610 + _1010 + 37
            mem[_602 + _610 + _1010 + 37] = 32
            _1554 = mem[_1466]
            mem[_602 + _610 + _1010 + 69] = mem[_1466]
            mem[_602 + _610 + _1010 + 101 len ceil32(_1554)] = mem[_1466 + 32 len ceil32(_1554)]
            if ceil32(_1554) > _1554:
                mem[_602 + _610 + _1010 + _1554 + 101] = 0
            return 32, mem[_602 + _610 + _1010 + 69 len ceil32(_1554) + 32]
        _1490 = mem[64]
        mem[64] = mem[64] + _610 + _1010 + 37
        mem[_602 + _610 + _1010 + 37] = 32
        _1578 = mem[_1490]
        mem[_602 + _610 + _1010 + 69] = mem[_1490]
        mem[_602 + _610 + _1010 + 101 len ceil32(_1578)] = mem[_1490 + 32 len ceil32(_1578)]
        if ceil32(_1578) > _1578:
            mem[_602 + _610 + _1010 + _1578 + 101] = 0
        return 32, mem[_602 + _610 + _1010 + 69 len ceil32(_1578) + 32]
    mem[0] = 8
    mem[_151 + 32] = uint256(tiers.field_0)
    idx = _151 + 32
    s = 0
    while _151 + (32 * tiers.length) > idx:
        mem[idx + 32] = tiers[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[mem[64] + 4] = arg1
    require ext_code.size(NFTAddress)
    staticcall NFTAddress.0x3e8c379 with:
            gas gas_remaining wei
           args arg1
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _332 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_332] == mem[_332]
    idx = 0
    while idx < tiers.length:
        if idx >= tiers.length:
            revert with 'NH{q', 50
        if mem[(32 * idx) + _151 + 32] and 10^18 > -1 / mem[(32 * idx) + _151 + 32]:
            revert with 'NH{q', 17
        if mem[_332] >= 10^18 * mem[(32 * idx) + _151 + 32]:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if tiers.length < idx:
            revert with 'NH{q', 17
        if tiers.length - idx > -2:
            revert with 'NH{q', 17
        if not tiers.length + -idx + 1:
            _700 = mem[64]
            mem[64] = mem[64] + 64
            mem[_700] = 1
            mem[_700 + 32] = '0'
            _714 = mem[64]
            _724 = mem[(2 * ceil32(return_data.size)) + 96]
            idx = 0
            while idx < _724:
                mem[_714 + idx + 32] = mem[(2 * ceil32(return_data.size)) + idx + 128]
                idx = idx + 32
                continue 
            if ceil32(_724) <= _724:
                _998 = mem[_700]
                idx = 0
                while idx < _998:
                    mem[_714 + _724 + idx + 32] = mem[_700 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_714 + _724 + _998 + 32] = '.json'
                if ceil32(_998) <= _998:
                    _1471 = mem[64]
                    mem[64] = _714 + _724 + _998 + 37
                    mem[_714 + _724 + _998 + 37] = 32
                    _1559 = mem[_1471]
                    mem[_714 + _724 + _998 + 69] = mem[_1471]
                    idx = 0
                    while idx < _1559:
                        mem[_714 + _724 + _998 + idx + 101] = mem[_1471 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_1559) > _1559:
                        mem[_714 + _724 + _998 + _1559 + 101] = 0
                    return 32, mem[_714 + _724 + _998 + 69 len ceil32(_1559) + 32]
                _1499 = mem[64]
                mem[64] = _714 + _724 + _998 + 37
                mem[_714 + _724 + _998 + 37] = 32
                _1587 = mem[_1499]
                mem[_714 + _724 + _998 + 69] = mem[_1499]
                idx = 0
                while idx < _1587:
                    mem[_714 + _724 + _998 + idx + 101] = mem[_1499 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_1587) > _1587:
                    mem[_714 + _724 + _998 + _1587 + 101] = 0
                return 32, mem[_714 + _724 + _998 + 69 len ceil32(_1587) + 32]
            mem[_714 + _724 + 32] = 0
            _1018 = mem[_700]
            idx = 0
            while idx < _1018:
                mem[_714 + _724 + idx + 32] = mem[_700 + idx + 32]
                idx = idx + 32
                continue 
            mem[_714 + _724 + _1018 + 32] = '.json'
            if ceil32(_1018) <= _1018:
                _1472 = mem[64]
                mem[64] = _714 + _724 + _1018 + 37
                mem[_714 + _724 + _1018 + 37] = 32
                _1560 = mem[_1472]
                mem[_714 + _724 + _1018 + 69] = mem[_1472]
                idx = 0
                while idx < _1560:
                    mem[_714 + _724 + _1018 + idx + 101] = mem[_1472 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_1560) > _1560:
                    mem[_714 + _724 + _1018 + _1560 + 101] = 0
                return 32, mem[_714 + _724 + _1018 + 69 len ceil32(_1560) + 32]
            _1500 = mem[64]
            mem[64] = _714 + _724 + _1018 + 37
            mem[_714 + _724 + _1018 + 37] = 32
            _1588 = mem[_1500]
            mem[_714 + _724 + _1018 + 69] = mem[_1500]
            idx = 0
            while idx < _1588:
                mem[_714 + _724 + _1018 + idx + 101] = mem[_1500 + idx + 32]
                idx = idx + 32
                continue 
            if ceil32(_1588) > _1588:
                mem[_714 + _724 + _1018 + _1588 + 101] = 0
            return 32, mem[_714 + _724 + _1018 + 69 len ceil32(_1588) + 32]
        t = 0
        s = tiers.length + -idx + 1
        while s:
            if t == -1:
                revert with 'NH{q', 17
            t = t + 1
            s = s / 10
            continue 
        if t > test266151307():
            revert with 'NH{q', 65
        _988 = mem[64]
        mem[mem[64]] = t
        mem[64] = mem[64] + ceil32(t) + 32
        if not t:
            u = t
            s = tiers.length + -idx + 1
            while s:
                if u < 1:
                    revert with 'NH{q', 17
                if 48 > -(s % 10) - 1:
                    revert with 'NH{q', 17
                if u - 1 >= mem[_988]:
                    revert with 'NH{q', 50
                mem[u + _988 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                u = u - 1
                s = s / 10
                continue 
            _1443 = mem[64]
            _1451 = mem[(2 * ceil32(return_data.size)) + 96]
            idx = 0
            while idx < _1451:
                mem[_1443 + idx + 32] = mem[(2 * ceil32(return_data.size)) + idx + 128]
                idx = idx + 32
                continue 
            if ceil32(_1451) <= _1451:
                _1987 = mem[_988]
                idx = 0
                while idx < _1987:
                    mem[_1443 + _1451 + idx + 32] = mem[_988 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1443 + _1451 + _1987 + 32] = '.json'
                if ceil32(_1987) <= _1987:
                    _2313 = mem[64]
                    mem[64] = _1443 + _1451 + _1987 + 37
                    mem[_1443 + _1451 + _1987 + 37] = 32
                    _2377 = mem[_2313]
                    mem[_1443 + _1451 + _1987 + 69] = mem[_2313]
                    idx = 0
                    while idx < _2377:
                        mem[_1443 + _1451 + _1987 + idx + 101] = mem[_2313 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_2377) > _2377:
                        mem[_1443 + _1451 + _1987 + _2377 + 101] = 0
                    return 32, mem[_1443 + _1451 + _1987 + 69 len ceil32(_2377) + 32]
                _2329 = mem[64]
                mem[64] = _1443 + _1451 + _1987 + 37
                mem[_1443 + _1451 + _1987 + 37] = 32
                _2393 = mem[_2329]
                mem[_1443 + _1451 + _1987 + 69] = mem[_2329]
                idx = 0
                while idx < _2393:
                    mem[_1443 + _1451 + _1987 + idx + 101] = mem[_2329 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_2393) > _2393:
                    mem[_1443 + _1451 + _1987 + _2393 + 101] = 0
                return 32, mem[_1443 + _1451 + _1987 + 69 len ceil32(_2393) + 32]
            mem[_1443 + _1451 + 32] = 0
            _2031 = mem[_988]
            idx = 0
            while idx < _2031:
                mem[_1443 + _1451 + idx + 32] = mem[_988 + idx + 32]
                idx = idx + 32
                continue 
            mem[_1443 + _1451 + _2031 + 32] = '.json'
            if ceil32(_2031) <= _2031:
                _2314 = mem[64]
                mem[64] = _1443 + _1451 + _2031 + 37
                mem[_1443 + _1451 + _2031 + 37] = 32
                _2378 = mem[_2314]
                mem[_1443 + _1451 + _2031 + 69] = mem[_2314]
                idx = 0
                while idx < _2378:
                    mem[_1443 + _1451 + _2031 + idx + 101] = mem[_2314 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_2378) > _2378:
                    mem[_1443 + _1451 + _2031 + _2378 + 101] = 0
                return 32, mem[_1443 + _1451 + _2031 + 69 len ceil32(_2378) + 32]
            _2330 = mem[64]
            mem[64] = _1443 + _1451 + _2031 + 37
            mem[_1443 + _1451 + _2031 + 37] = 32
            _2394 = mem[_2330]
            mem[_1443 + _1451 + _2031 + 69] = mem[_2330]
            idx = 0
            while idx < _2394:
                mem[_1443 + _1451 + _2031 + idx + 101] = mem[_2330 + idx + 32]
                idx = idx + 32
                continue 
            if ceil32(_2394) > _2394:
                mem[_1443 + _1451 + _2031 + _2394 + 101] = 0
            return 32, mem[_1443 + _1451 + _2031 + 69 len ceil32(_2394) + 32]
        mem[_988 + 32 len t] = call.data[calldata.size len t]
        u = t
        s = tiers.length + -idx + 1
        while s:
            if u < 1:
                revert with 'NH{q', 17
            if 48 > -(s % 10) - 1:
                revert with 'NH{q', 17
            if u - 1 >= mem[_988]:
                revert with 'NH{q', 50
            mem[u + _988 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
            u = u - 1
            s = s / 10
            continue 
        _1444 = mem[64]
        _1452 = mem[(2 * ceil32(return_data.size)) + 96]
        idx = 0
        while idx < _1452:
            mem[_1444 + idx + 32] = mem[(2 * ceil32(return_data.size)) + idx + 128]
            idx = idx + 32
            continue 
        if ceil32(_1452) <= _1452:
            _1988 = mem[_988]
            idx = 0
            while idx < _1988:
                mem[_1444 + _1452 + idx + 32] = mem[_988 + idx + 32]
                idx = idx + 32
                continue 
            mem[_1444 + _1452 + _1988 + 32] = '.json'
            if ceil32(_1988) <= _1988:
                _2315 = mem[64]
                mem[64] = _1444 + _1452 + _1988 + 37
                mem[_1444 + _1452 + _1988 + 37] = 32
                _2379 = mem[_2315]
                mem[_1444 + _1452 + _1988 + 69] = mem[_2315]
                idx = 0
                while idx < _2379:
                    mem[_1444 + _1452 + _1988 + idx + 101] = mem[_2315 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_2379) > _2379:
                    mem[_1444 + _1452 + _1988 + _2379 + 101] = 0
                return 32, mem[_1444 + _1452 + _1988 + 69 len ceil32(_2379) + 32]
            _2331 = mem[64]
            mem[64] = _1444 + _1452 + _1988 + 37
            mem[_1444 + _1452 + _1988 + 37] = 32
            _2395 = mem[_2331]
            mem[_1444 + _1452 + _1988 + 69] = mem[_2331]
            idx = 0
            while idx < _2395:
                mem[_1444 + _1452 + _1988 + idx + 101] = mem[_2331 + idx + 32]
                idx = idx + 32
                continue 
            if ceil32(_2395) > _2395:
                mem[_1444 + _1452 + _1988 + _2395 + 101] = 0
            return 32, mem[_1444 + _1452 + _1988 + 69 len ceil32(_2395) + 32]
        mem[_1444 + _1452 + 32] = 0
        _2032 = mem[_988]
        idx = 0
        while idx < _2032:
            mem[_1444 + _1452 + idx + 32] = mem[_988 + idx + 32]
            idx = idx + 32
            continue 
        mem[_1444 + _1452 + _2032 + 32] = '.json'
        if ceil32(_2032) <= _2032:
            _2316 = mem[64]
            mem[64] = _1444 + _1452 + _2032 + 37
            mem[_1444 + _1452 + _2032 + 37] = 32
            _2380 = mem[_2316]
            mem[_1444 + _1452 + _2032 + 69] = mem[_2316]
            idx = 0
            while idx < _2380:
                mem[_1444 + _1452 + _2032 + idx + 101] = mem[_2316 + idx + 32]
                idx = idx + 32
                continue 
            if ceil32(_2380) > _2380:
                mem[_1444 + _1452 + _2032 + _2380 + 101] = 0
            return 32, mem[_1444 + _1452 + _2032 + 69 len ceil32(_2380) + 32]
        _2332 = mem[64]
        mem[64] = _1444 + _1452 + _2032 + 37
        mem[_1444 + _1452 + _2032 + 37] = 32
        _2396 = mem[_2332]
        mem[_1444 + _1452 + _2032 + 69] = mem[_2332]
        idx = 0
        while idx < _2396:
            mem[_1444 + _1452 + _2032 + idx + 101] = mem[_2332 + idx + 32]
            idx = idx + 32
            continue 
        if ceil32(_2396) > _2396:
            mem[_1444 + _1452 + _2032 + _2396 + 101] = 0
        return 32, mem[_1444 + _1452 + _2032 + 69 len ceil32(_2396) + 32]
    s = 0
    idx = 1
    while idx:
        if s == -1:
            revert with 'NH{q', 17
        s = s + 1
        idx = idx / 10
        continue 
    if s > test266151307():
        revert with 'NH{q', 65
    _987 = mem[64]
    mem[mem[64]] = s
    mem[64] = mem[64] + ceil32(s) + 32
    if not s:
        t = s
        idx = 1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[_987]:
                revert with 'NH{q', 50
            mem[t + _987 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _1441 = mem[64]
        _1449 = mem[(2 * ceil32(return_data.size)) + 96]
        mem[mem[64] + 32 len ceil32(mem[(2 * ceil32(return_data.size)) + 96])] = mem[(2 * ceil32(return_data.size)) + 128 len ceil32(mem[(2 * ceil32(return_data.size)) + 96])]
        if ceil32(_1449) <= _1449:
            _1985 = mem[_987]
            mem[mem[64] + _1449 + 32 len ceil32(mem[_987])] = mem[_987 + 32 len ceil32(mem[_987])]
            mem[mem[64] + _1449 + _1985 + 32] = '.json'
            if ceil32(_1985) <= _1985:
                _2309 = mem[64]
                mem[64] = mem[64] + _1449 + _1985 + 37
                mem[_1441 + _1449 + _1985 + 37] = 32
                _2373 = mem[_2309]
                mem[_1441 + _1449 + _1985 + 69] = mem[_2309]
                mem[_1441 + _1449 + _1985 + 101 len ceil32(_2373)] = mem[_2309 + 32 len ceil32(_2373)]
                if ceil32(_2373) > _2373:
                    mem[_1441 + _1449 + _1985 + _2373 + 101] = 0
                return 32, mem[_1441 + _1449 + _1985 + 69 len ceil32(_2373) + 32]
            _2325 = mem[64]
            mem[64] = mem[64] + _1449 + _1985 + 37
            mem[_1441 + _1449 + _1985 + 37] = 32
            _2389 = mem[_2325]
            mem[_1441 + _1449 + _1985 + 69] = mem[_2325]
            mem[_1441 + _1449 + _1985 + 101 len ceil32(_2389)] = mem[_2325 + 32 len ceil32(_2389)]
            var170001 = ceil32(_2389)
            if ceil32(_2389) > _2389:
                mem[_1441 + _1449 + _1985 + _2389 + 101] = 0
            return 32, mem[_1441 + _1449 + _1985 + 69 len ceil32(_2389) + 32]
        mem[mem[64] + _1449 + 32] = 0
        _2029 = mem[_987]
        mem[mem[64] + _1449 + 32 len ceil32(mem[_987])] = mem[_987 + 32 len ceil32(mem[_987])]
        mem[mem[64] + _1449 + _2029 + 32] = '.json'
        if ceil32(_2029) <= _2029:
            _2310 = mem[64]
            mem[64] = mem[64] + _1449 + _2029 + 37
            mem[_1441 + _1449 + _2029 + 37] = 32
            _2374 = mem[_2310]
            mem[_1441 + _1449 + _2029 + 69] = mem[_2310]
            mem[_1441 + _1449 + _2029 + 101 len ceil32(_2374)] = mem[_2310 + 32 len ceil32(_2374)]
            var170001 = ceil32(_2374)
            if ceil32(_2374) > _2374:
                mem[_1441 + _1449 + _2029 + _2374 + 101] = 0
            return 32, mem[_1441 + _1449 + _2029 + 69 len ceil32(_2374) + 32]
        _2326 = mem[64]
        mem[64] = mem[64] + _1449 + _2029 + 37
        mem[_1441 + _1449 + _2029 + 37] = 32
        _2390 = mem[_2326]
        mem[_1441 + _1449 + _2029 + 69] = mem[_2326]
        mem[_1441 + _1449 + _2029 + 101 len ceil32(_2390)] = mem[_2326 + 32 len ceil32(_2390)]
        var171001 = ceil32(_2390)
        if ceil32(_2390) > _2390:
            mem[_1441 + _1449 + _2029 + _2390 + 101] = 0
        return 32, mem[_1441 + _1449 + _2029 + 69 len ceil32(_2390) + 32]
    mem[_987 + 32 len s] = call.data[calldata.size len s]
    t = s
    idx = 1
    while idx:
        if t < 1:
            revert with 'NH{q', 17
        if 48 > -(idx % 10) - 1:
            revert with 'NH{q', 17
        if t - 1 >= mem[_987]:
            revert with 'NH{q', 50
        mem[t + _987 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    _1442 = mem[64]
    _1450 = mem[(2 * ceil32(return_data.size)) + 96]
    mem[mem[64] + 32 len ceil32(mem[(2 * ceil32(return_data.size)) + 96])] = mem[(2 * ceil32(return_data.size)) + 128 len ceil32(mem[(2 * ceil32(return_data.size)) + 96])]
    if ceil32(_1450) <= _1450:
        _1986 = mem[_987]
        mem[mem[64] + _1450 + 32 len ceil32(mem[_987])] = mem[_987 + 32 len ceil32(mem[_987])]
        mem[mem[64] + _1450 + _1986 + 32] = '.json'
        if ceil32(_1986) <= _1986:
            _2311 = mem[64]
            mem[64] = mem[64] + _1450 + _1986 + 37
            mem[_1442 + _1450 + _1986 + 37] = 32
            _2375 = mem[_2311]
            mem[_1442 + _1450 + _1986 + 69] = mem[_2311]
            mem[_1442 + _1450 + _1986 + 101 len ceil32(_2375)] = mem[_2311 + 32 len ceil32(_2375)]
            var170001 = ceil32(_2375)
            if ceil32(_2375) > _2375:
                mem[_1442 + _1450 + _1986 + _2375 + 101] = 0
            return 32, mem[_1442 + _1450 + _1986 + 69 len ceil32(_2375) + 32]
        _2327 = mem[64]
        mem[64] = mem[64] + _1450 + _1986 + 37
        mem[_1442 + _1450 + _1986 + 37] = 32
        _2391 = mem[_2327]
        mem[_1442 + _1450 + _1986 + 69] = mem[_2327]
        mem[_1442 + _1450 + _1986 + 101 len ceil32(_2391)] = mem[_2327 + 32 len ceil32(_2391)]
        var171001 = ceil32(_2391)
        if ceil32(_2391) > _2391:
            mem[_1442 + _1450 + _1986 + _2391 + 101] = 0
        return 32, mem[_1442 + _1450 + _1986 + 69 len ceil32(_2391) + 32]
    mem[mem[64] + _1450 + 32] = 0
    _2030 = mem[_987]
    mem[mem[64] + _1450 + 32 len ceil32(mem[_987])] = mem[_987 + 32 len ceil32(mem[_987])]
    mem[mem[64] + _1450 + _2030 + 32] = '.json'
    if ceil32(_2030) <= _2030:
        _2312 = mem[64]
        mem[64] = mem[64] + _1450 + _2030 + 37
        mem[_1442 + _1450 + _2030 + 37] = 32
        _2376 = mem[_2312]
        mem[_1442 + _1450 + _2030 + 69] = mem[_2312]
        mem[_1442 + _1450 + _2030 + 101 len ceil32(_2376)] = mem[_2312 + 32 len ceil32(_2376)]
        var171001 = ceil32(_2376)
        if ceil32(_2376) > _2376:
            mem[_1442 + _1450 + _2030 + _2376 + 101] = 0
        return 32, mem[_1442 + _1450 + _2030 + 69 len ceil32(_2376) + 32]
    _2328 = mem[64]
    mem[64] = mem[64] + _1450 + _2030 + 37
    mem[_1442 + _1450 + _2030 + 37] = 32
    _2392 = mem[_2328]
    mem[_1442 + _1450 + _2030 + 69] = mem[_2328]
    mem[_1442 + _1450 + _2030 + 101 len ceil32(_2392)] = mem[_2328 + 32 len ceil32(_2392)]
    var172001 = ceil32(_2392)
    if ceil32(_2392) > _2392:
        mem[_1442 + _1450 + _2030 + _2392 + 101] = 0
    return 32, mem[_1442 + _1450 + _2030 + 69 len ceil32(_2392) + 32]
}



}

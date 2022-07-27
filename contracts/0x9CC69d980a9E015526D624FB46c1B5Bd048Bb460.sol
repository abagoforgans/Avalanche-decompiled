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
mapping of uint256 sub_9aa0e7b2;

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

function sub_9aa0e7b2(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_9aa0e7b2[arg1]
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

function giveaway(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor1.length == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1.length = 2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if sub_9aa0e7b2[address(arg2)] > -arg1 - 1:
        revert with 'NH{q', 17
    sub_9aa0e7b2[address(arg2)] += arg1
    stor1.length = 1
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
    call sub_6251be71Address.transfer(address arg1, uint256 arg2) with:
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
        call NFTAddress.mint(address arg1, uint256 arg2) with:
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
    staticcall NFTAddress.0x6352211e with:
            gas gas_remaining wei
           args arg1
    mem[ceil32(return_data.size) + (32 * tiers.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(NFTAddress)
    staticcall NFTAddress.0x3e8c379 with:
            gas gas_remaining wei
           args arg1
    mem[(2 * ceil32(return_data.size)) + (32 * tiers.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > -sub_9aa0e7b2[ext_call.return_data[12 len 20]] - 1:
        revert with 'NH{q', 17
    idx = 0
    while idx < tiers.length:
        if idx >= tiers.length:
            revert with 'NH{q', 50
        if mem[(32 * idx) + ceil32(return_data.size) + 128] and 10^18 > -1 / mem[(32 * idx) + ceil32(return_data.size) + 128]:
            revert with 'NH{q', 17
        if ext_call.return_data[0] + sub_9aa0e7b2[ext_call.return_data[12 len 20]] >= 10^18 * mem[(32 * idx) + ceil32(return_data.size) + 128]:
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
    staticcall NFTAddress.0x6352211e with:
            gas gas_remaining wei
           args arg1
    mem[(4 * ceil32(return_data.size)) + (32 * tiers.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(NFTAddress)
    staticcall NFTAddress.0x3e8c379 with:
            gas gas_remaining wei
           args arg1
    mem[(6 * ceil32(return_data.size)) + (32 * tiers.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > -sub_9aa0e7b2[ext_call.return_data[12 len 20]] - 1:
        revert with 'NH{q', 17
    idx = 0
    while idx < tiers.length:
        if idx >= tiers.length:
            revert with 'NH{q', 50
        if mem[(32 * idx) + (4 * ceil32(return_data.size)) + 128] and 10^18 > -1 / mem[(32 * idx) + (4 * ceil32(return_data.size)) + 128]:
            revert with 'NH{q', 17
        if ext_call.return_data[0] + sub_9aa0e7b2[ext_call.return_data[12 len 20]] >= 10^18 * mem[(32 * idx) + (4 * ceil32(return_data.size)) + 128]:
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
        call NFTAddress.mint(address arg1, uint256 arg2) with:
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
    staticcall NFTAddress.0x6352211e with:
            gas gas_remaining wei
           args arg1
    mem[(2 * ceil32(return_data.size)) + (32 * tiers.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(4 * ceil32(return_data.size)) + (32 * tiers.length) + 132] = arg1
    require ext_code.size(NFTAddress)
    staticcall NFTAddress.0x3e8c379 with:
            gas gas_remaining wei
           args arg1
    mem[(4 * ceil32(return_data.size)) + (32 * tiers.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > -sub_9aa0e7b2[ext_call.return_data[12 len 20]] - 1:
        revert with 'NH{q', 17
    idx = 0
    while idx < tiers.length:
        if idx >= tiers.length:
            revert with 'NH{q', 50
        if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128] and 10^18 > -1 / mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]:
            revert with 'NH{q', 17
        if ext_call.return_data[0] + sub_9aa0e7b2[ext_call.return_data[12 len 20]] >= 10^18 * mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]:
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
        mem[(6 * ceil32(return_data.size)) + (32 * tiers.length) + 132] = arg1
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
            mem[(7 * ceil32(return_data.size)) + (32 * tiers.length) + 160] = uint256(tiers.field_0)
            idx = (7 * ceil32(return_data.size)) + (32 * tiers.length) + 160
            s = sha3(8)
            while (7 * ceil32(return_data.size)) + (64 * tiers.length) + 128 > idx:
                mem[idx + 32] = stor1[s]
                idx = idx + 32
                s = s + 1
                continue 
        require ext_code.size(NFTAddress)
        staticcall NFTAddress.0x6352211e with:
                gas gas_remaining wei
               args arg1
        mem[(7 * ceil32(return_data.size)) + (64 * tiers.length) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(NFTAddress)
        staticcall NFTAddress.0x3e8c379 with:
                gas gas_remaining wei
               args arg1
        mem[(8 * ceil32(return_data.size)) + (64 * tiers.length) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] > -sub_9aa0e7b2[ext_call.return_data[12 len 20]] - 1:
            revert with 'NH{q', 17
        idx = 0
        while idx < tiers.length:
            if idx >= tiers.length:
                revert with 'NH{q', 50
            if mem[(32 * idx) + (7 * ceil32(return_data.size)) + (32 * tiers.length) + 160] and 10^18 > -1 / mem[(32 * idx) + (7 * ceil32(return_data.size)) + (32 * tiers.length) + 160]:
                revert with 'NH{q', 17
            if ext_call.return_data[0] + sub_9aa0e7b2[ext_call.return_data[12 len 20]] >= 10^18 * mem[(32 * idx) + (7 * ceil32(return_data.size)) + (32 * tiers.length) + 160]:
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
        _123 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_123] == bool(mem[_123])
        if not mem[_123]:
            revert with 0, 'ERC721: owner query for nonexistent token'
        _133 = mem[64]
        mem[64] = mem[64] + (32 * tiers.length) + 32
        mem[_133] = tiers.length
        if not tiers.length:
            mem[mem[64] + 4] = arg1
            require ext_code.size(NFTAddress)
            staticcall NFTAddress.0x6352211e with:
                    gas gas_remaining wei
                   args arg1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _144 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_144] == mem[_144 + 12 len 20]
            mem[0] = mem[_144 + 12 len 20]
            mem[32] = 9
            mem[mem[64] + 4] = arg1
            require ext_code.size(NFTAddress)
            staticcall NFTAddress.0x3e8c379 with:
                    gas gas_remaining wei
                   args arg1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _155 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_155] == mem[_155]
            if mem[_155] > -sub_9aa0e7b2[mem[0]] - 1:
                revert with 'NH{q', 17
            idx = 0
            while idx < tiers.length:
                if idx >= tiers.length:
                    revert with 'NH{q', 50
                if mem[(32 * idx) + _133 + 32] and 10^18 > -1 / mem[(32 * idx) + _133 + 32]:
                    revert with 'NH{q', 17
                if mem[_155] + sub_9aa0e7b2[mem[0]] >= 10^18 * mem[(32 * idx) + _133 + 32]:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if tiers.length < idx:
                    revert with 'NH{q', 17
                if tiers.length - idx > -2:
                    revert with 'NH{q', 17
                if not tiers.length + -idx + 1:
                    _245 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_245] = 1
                    mem[_245 + 32] = '0'
                    _247 = mem[64]
                    idx = 0
                    while idx < _10:
                        mem[_247 + idx + 32] = mem[(2 * ceil32(return_data.size)) + idx + 128]
                        idx = idx + 32
                        continue 
                    if ceil32(_10) <= _10:
                        _317 = mem[_245]
                        idx = 0
                        while idx < _317:
                            mem[_247 + _10 + idx + 32] = mem[_245 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_247 + _10 + _317 + 32] = '.json'
                        if ceil32(_317) <= _317:
                            _621 = mem[64]
                            mem[64] = _247 + _10 + _317 + 37
                            mem[_247 + _10 + _317 + 37] = 32
                            _645 = mem[_621]
                            mem[_247 + _10 + _317 + 69] = mem[_621]
                            idx = 0
                            while idx < _645:
                                mem[_247 + _10 + _317 + idx + 101] = mem[_621 + idx + 32]
                                idx = idx + 32
                                continue 
                            if ceil32(_645) > _645:
                                mem[_247 + _10 + _317 + _645 + 101] = 0
                            return 32, mem[_247 + _10 + _317 + 69 len ceil32(_645) + 32]
                        _629 = mem[64]
                        mem[64] = _247 + _10 + _317 + 37
                        mem[_247 + _10 + _317 + 37] = 32
                        _653 = mem[_629]
                        mem[_247 + _10 + _317 + 69] = mem[_629]
                        idx = 0
                        while idx < _653:
                            mem[_247 + _10 + _317 + idx + 101] = mem[_629 + idx + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_653) > _653:
                            mem[_247 + _10 + _317 + _653 + 101] = 0
                        return 32, mem[_247 + _10 + _317 + 69 len ceil32(_653) + 32]
                    mem[_247 + _10 + 32] = 0
                    _322 = mem[_245]
                    idx = 0
                    while idx < _322:
                        mem[_247 + _10 + idx + 32] = mem[_245 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_247 + _10 + _322 + 32] = '.json'
                    if ceil32(_322) <= _322:
                        _622 = mem[64]
                        mem[64] = _247 + _10 + _322 + 37
                        mem[_247 + _10 + _322 + 37] = 32
                        _646 = mem[_622]
                        mem[_247 + _10 + _322 + 69] = mem[_622]
                        idx = 0
                        while idx < _646:
                            mem[_247 + _10 + _322 + idx + 101] = mem[_622 + idx + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_646) > _646:
                            mem[_247 + _10 + _322 + _646 + 101] = 0
                        return 32, mem[_247 + _10 + _322 + 69 len ceil32(_646) + 32]
                    _630 = mem[64]
                    mem[64] = _247 + _10 + _322 + 37
                    mem[_247 + _10 + _322 + 37] = 32
                    _654 = mem[_630]
                    mem[_247 + _10 + _322 + 69] = mem[_630]
                    idx = 0
                    while idx < _654:
                        mem[_247 + _10 + _322 + idx + 101] = mem[_630 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_654) > _654:
                        mem[_247 + _10 + _322 + _654 + 101] = 0
                    return 32, mem[_247 + _10 + _322 + 69 len ceil32(_654) + 32]
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
                _314 = mem[64]
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
                        if u - 1 >= mem[_314]:
                            revert with 'NH{q', 50
                        mem[u + _314 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                        u = u - 1
                        s = s / 10
                        continue 
                    _605 = mem[64]
                    _613 = mem[(2 * ceil32(return_data.size)) + 96]
                    idx = 0
                    while idx < _613:
                        mem[_605 + idx + 32] = mem[(2 * ceil32(return_data.size)) + idx + 128]
                        idx = idx + 32
                        continue 
                    if ceil32(_613) <= _613:
                        _997 = mem[_314]
                        idx = 0
                        while idx < _997:
                            mem[_605 + _613 + idx + 32] = mem[_314 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_605 + _613 + _997 + 32] = '.json'
                        if ceil32(_997) <= _997:
                            _1463 = mem[64]
                            mem[64] = _605 + _613 + _997 + 37
                            mem[_605 + _613 + _997 + 37] = 32
                            _1551 = mem[_1463]
                            mem[_605 + _613 + _997 + 69] = mem[_1463]
                            idx = 0
                            while idx < _1551:
                                mem[_605 + _613 + _997 + idx + 101] = mem[_1463 + idx + 32]
                                idx = idx + 32
                                continue 
                            if ceil32(_1551) > _1551:
                                mem[_605 + _613 + _997 + _1551 + 101] = 0
                            return 32, mem[_605 + _613 + _997 + 69 len ceil32(_1551) + 32]
                        _1483 = mem[64]
                        mem[64] = _605 + _613 + _997 + 37
                        mem[_605 + _613 + _997 + 37] = 32
                        _1571 = mem[_1483]
                        mem[_605 + _613 + _997 + 69] = mem[_1483]
                        idx = 0
                        while idx < _1571:
                            mem[_605 + _613 + _997 + idx + 101] = mem[_1483 + idx + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_1571) > _1571:
                            mem[_605 + _613 + _997 + _1571 + 101] = 0
                        return 32, mem[_605 + _613 + _997 + 69 len ceil32(_1571) + 32]
                    mem[_605 + _613 + 32] = 0
                    _1007 = mem[_314]
                    idx = 0
                    while idx < _1007:
                        mem[_605 + _613 + idx + 32] = mem[_314 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_605 + _613 + _1007 + 32] = '.json'
                    if ceil32(_1007) <= _1007:
                        _1464 = mem[64]
                        mem[64] = _605 + _613 + _1007 + 37
                        mem[_605 + _613 + _1007 + 37] = 32
                        _1552 = mem[_1464]
                        mem[_605 + _613 + _1007 + 69] = mem[_1464]
                        idx = 0
                        while idx < _1552:
                            mem[_605 + _613 + _1007 + idx + 101] = mem[_1464 + idx + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_1552) > _1552:
                            mem[_605 + _613 + _1007 + _1552 + 101] = 0
                        return 32, mem[_605 + _613 + _1007 + 69 len ceil32(_1552) + 32]
                    _1484 = mem[64]
                    mem[64] = _605 + _613 + _1007 + 37
                    mem[_605 + _613 + _1007 + 37] = 32
                    _1572 = mem[_1484]
                    mem[_605 + _613 + _1007 + 69] = mem[_1484]
                    idx = 0
                    while idx < _1572:
                        mem[_605 + _613 + _1007 + idx + 101] = mem[_1484 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_1572) > _1572:
                        mem[_605 + _613 + _1007 + _1572 + 101] = 0
                    return 32, mem[_605 + _613 + _1007 + 69 len ceil32(_1572) + 32]
                mem[_314 + 32 len t] = call.data[calldata.size len t]
                u = t
                s = tiers.length + -idx + 1
                while s:
                    if u < 1:
                        revert with 'NH{q', 17
                    if 48 > -(s % 10) - 1:
                        revert with 'NH{q', 17
                    if u - 1 >= mem[_314]:
                        revert with 'NH{q', 50
                    mem[u + _314 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                    u = u - 1
                    s = s / 10
                    continue 
                _606 = mem[64]
                _614 = mem[(2 * ceil32(return_data.size)) + 96]
                idx = 0
                while idx < _614:
                    mem[_606 + idx + 32] = mem[(2 * ceil32(return_data.size)) + idx + 128]
                    idx = idx + 32
                    continue 
                if ceil32(_614) <= _614:
                    _998 = mem[_314]
                    idx = 0
                    while idx < _998:
                        mem[_606 + _614 + idx + 32] = mem[_314 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_606 + _614 + _998 + 32] = '.json'
                    if ceil32(_998) <= _998:
                        _1465 = mem[64]
                        mem[64] = _606 + _614 + _998 + 37
                        mem[_606 + _614 + _998 + 37] = 32
                        _1553 = mem[_1465]
                        mem[_606 + _614 + _998 + 69] = mem[_1465]
                        idx = 0
                        while idx < _1553:
                            mem[_606 + _614 + _998 + idx + 101] = mem[_1465 + idx + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_1553) > _1553:
                            mem[_606 + _614 + _998 + _1553 + 101] = 0
                        return 32, mem[_606 + _614 + _998 + 69 len ceil32(_1553) + 32]
                    _1485 = mem[64]
                    mem[64] = _606 + _614 + _998 + 37
                    mem[_606 + _614 + _998 + 37] = 32
                    _1573 = mem[_1485]
                    mem[_606 + _614 + _998 + 69] = mem[_1485]
                    idx = 0
                    while idx < _1573:
                        mem[_606 + _614 + _998 + idx + 101] = mem[_1485 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_1573) > _1573:
                        mem[_606 + _614 + _998 + _1573 + 101] = 0
                    return 32, mem[_606 + _614 + _998 + 69 len ceil32(_1573) + 32]
                mem[_606 + _614 + 32] = 0
                _1008 = mem[_314]
                idx = 0
                while idx < _1008:
                    mem[_606 + _614 + idx + 32] = mem[_314 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_606 + _614 + _1008 + 32] = '.json'
                if ceil32(_1008) <= _1008:
                    _1466 = mem[64]
                    mem[64] = _606 + _614 + _1008 + 37
                    mem[_606 + _614 + _1008 + 37] = 32
                    _1554 = mem[_1466]
                    mem[_606 + _614 + _1008 + 69] = mem[_1466]
                    idx = 0
                    while idx < _1554:
                        mem[_606 + _614 + _1008 + idx + 101] = mem[_1466 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_1554) > _1554:
                        mem[_606 + _614 + _1008 + _1554 + 101] = 0
                    return 32, mem[_606 + _614 + _1008 + 69 len ceil32(_1554) + 32]
                _1486 = mem[64]
                mem[64] = _606 + _614 + _1008 + 37
                mem[_606 + _614 + _1008 + 37] = 32
                _1574 = mem[_1486]
                mem[_606 + _614 + _1008 + 69] = mem[_1486]
                idx = 0
                while idx < _1574:
                    mem[_606 + _614 + _1008 + idx + 101] = mem[_1486 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_1574) > _1574:
                    mem[_606 + _614 + _1008 + _1574 + 101] = 0
                return 32, mem[_606 + _614 + _1008 + 69 len ceil32(_1574) + 32]
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
            _313 = mem[64]
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
                    if t - 1 >= mem[_313]:
                        revert with 'NH{q', 50
                    mem[t + _313 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                _603 = mem[64]
                _611 = mem[(2 * ceil32(return_data.size)) + 96]
                mem[mem[64] + 32 len ceil32(mem[(2 * ceil32(return_data.size)) + 96])] = mem[(2 * ceil32(return_data.size)) + 128 len ceil32(mem[(2 * ceil32(return_data.size)) + 96])]
                if ceil32(_611) <= _611:
                    _995 = mem[_313]
                    mem[mem[64] + _611 + 32 len ceil32(mem[_313])] = mem[_313 + 32 len ceil32(mem[_313])]
                    mem[_603 + _611 + _995 + 32] = '.json'
                    if ceil32(_995) <= _995:
                        _1459 = mem[64]
                        mem[64] = _603 + _611 + _995 + 37
                        mem[_603 + _611 + _995 + 37] = 32
                        _1547 = mem[_1459]
                        mem[_603 + _611 + _995 + 69] = mem[_1459]
                        mem[_603 + _611 + _995 + 101 len ceil32(_1547)] = mem[_1459 + 32 len ceil32(_1547)]
                        if ceil32(_1547) > _1547:
                            mem[_603 + _611 + _995 + _1547 + 101] = 0
                        return 32, mem[_603 + _611 + _995 + 69 len ceil32(_1547) + 32]
                    _1479 = mem[64]
                    mem[64] = _603 + _611 + _995 + 37
                    mem[_603 + _611 + _995 + 37] = 32
                    _1567 = mem[_1479]
                    mem[_603 + _611 + _995 + 69] = mem[_1479]
                    mem[_603 + _611 + _995 + 101 len ceil32(_1567)] = mem[_1479 + 32 len ceil32(_1567)]
                    if ceil32(_1567) > _1567:
                        mem[_603 + _611 + _995 + _1567 + 101] = 0
                    return 32, mem[_603 + _611 + _995 + 69 len ceil32(_1567) + 32]
                mem[mem[64] + _611 + 32] = 0
                _1005 = mem[_313]
                mem[_603 + _611 + 32 len ceil32(mem[_313])] = mem[_313 + 32 len ceil32(mem[_313])]
                mem[_603 + _611 + _1005 + 32] = '.json'
                if ceil32(_1005) <= _1005:
                    _1460 = mem[64]
                    mem[64] = _603 + _611 + _1005 + 37
                    mem[_603 + _611 + _1005 + 37] = 32
                    _1548 = mem[_1460]
                    mem[_603 + _611 + _1005 + 69] = mem[_1460]
                    mem[_603 + _611 + _1005 + 101 len ceil32(_1548)] = mem[_1460 + 32 len ceil32(_1548)]
                    if ceil32(_1548) > _1548:
                        mem[_603 + _611 + _1005 + _1548 + 101] = 0
                    return 32, mem[_603 + _611 + _1005 + 69 len ceil32(_1548) + 32]
                _1480 = mem[64]
                mem[64] = _603 + _611 + _1005 + 37
                mem[_603 + _611 + _1005 + 37] = 32
                _1568 = mem[_1480]
                mem[_603 + _611 + _1005 + 69] = mem[_1480]
                mem[_603 + _611 + _1005 + 101 len ceil32(_1568)] = mem[_1480 + 32 len ceil32(_1568)]
                if ceil32(_1568) > _1568:
                    mem[_603 + _611 + _1005 + _1568 + 101] = 0
                return 32, mem[_603 + _611 + _1005 + 69 len ceil32(_1568) + 32]
            mem[_313 + 32 len s] = call.data[calldata.size len s]
            t = s
            idx = 1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[_313]:
                    revert with 'NH{q', 50
                mem[t + _313 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            _604 = mem[64]
            _612 = mem[(2 * ceil32(return_data.size)) + 96]
            mem[mem[64] + 32 len ceil32(mem[(2 * ceil32(return_data.size)) + 96])] = mem[(2 * ceil32(return_data.size)) + 128 len ceil32(mem[(2 * ceil32(return_data.size)) + 96])]
            if ceil32(_612) <= _612:
                _996 = mem[_313]
                mem[mem[64] + _612 + 32 len ceil32(mem[_313])] = mem[_313 + 32 len ceil32(mem[_313])]
                mem[mem[64] + _612 + _996 + 32] = '.json'
                if ceil32(_996) <= _996:
                    _1461 = mem[64]
                    mem[64] = mem[64] + _612 + _996 + 37
                    mem[_604 + _612 + _996 + 37] = 32
                    _1549 = mem[_1461]
                    mem[_604 + _612 + _996 + 69] = mem[_1461]
                    mem[_604 + _612 + _996 + 101 len ceil32(_1549)] = mem[_1461 + 32 len ceil32(_1549)]
                    if ceil32(_1549) > _1549:
                        mem[_604 + _612 + _996 + _1549 + 101] = 0
                    return 32, mem[_604 + _612 + _996 + 69 len ceil32(_1549) + 32]
                _1481 = mem[64]
                mem[64] = mem[64] + _612 + _996 + 37
                mem[_604 + _612 + _996 + 37] = 32
                _1569 = mem[_1481]
                mem[_604 + _612 + _996 + 69] = mem[_1481]
                mem[_604 + _612 + _996 + 101 len ceil32(_1569)] = mem[_1481 + 32 len ceil32(_1569)]
                if ceil32(_1569) > _1569:
                    mem[_604 + _612 + _996 + _1569 + 101] = 0
                return 32, mem[_604 + _612 + _996 + 69 len ceil32(_1569) + 32]
            mem[mem[64] + _612 + 32] = 0
            _1006 = mem[_313]
            mem[mem[64] + _612 + 32 len ceil32(mem[_313])] = mem[_313 + 32 len ceil32(mem[_313])]
            mem[mem[64] + _612 + _1006 + 32] = '.json'
            if ceil32(_1006) <= _1006:
                _1462 = mem[64]
                mem[64] = _604 + _612 + _1006 + 37
                mem[_604 + _612 + _1006 + 37] = 32
                _1550 = mem[_1462]
                mem[_604 + _612 + _1006 + 69] = mem[_1462]
                mem[_604 + _612 + _1006 + 101 len ceil32(_1550)] = mem[_1462 + 32 len ceil32(_1550)]
                if ceil32(_1550) > _1550:
                    mem[_604 + _612 + _1006 + _1550 + 101] = 0
                return 32, mem[_604 + _612 + _1006 + 69 len ceil32(_1550) + 32]
            _1482 = mem[64]
            mem[64] = _604 + _612 + _1006 + 37
            mem[_604 + _612 + _1006 + 37] = 32
            _1570 = mem[_1482]
            mem[_604 + _612 + _1006 + 69] = mem[_1482]
            mem[_604 + _612 + _1006 + 101 len ceil32(_1570)] = mem[_1482 + 32 len ceil32(_1570)]
            if ceil32(_1570) > _1570:
                mem[_604 + _612 + _1006 + _1570 + 101] = 0
            return 32, mem[_604 + _612 + _1006 + 69 len ceil32(_1570) + 32]
        mem[0] = 8
        mem[_133 + 32] = uint256(tiers.field_0)
        idx = _133 + 32
        s = 0
        while _133 + (32 * tiers.length) > idx:
            mem[idx + 32] = tiers[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[mem[64] + 4] = arg1
        require ext_code.size(NFTAddress)
        staticcall NFTAddress.0x6352211e with:
                gas gas_remaining wei
               args arg1
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _326 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_326] == mem[_326 + 12 len 20]
        mem[0] = mem[_326 + 12 len 20]
        mem[32] = 9
        mem[mem[64] + 4] = arg1
        require ext_code.size(NFTAddress)
        staticcall NFTAddress.0x3e8c379 with:
                gas gas_remaining wei
               args arg1
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _389 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_389] == mem[_389]
        if mem[_389] > -sub_9aa0e7b2[mem[0]] - 1:
            revert with 'NH{q', 17
        idx = 0
        while idx < tiers.length:
            if idx >= tiers.length:
                revert with 'NH{q', 50
            if mem[(32 * idx) + _133 + 32] and 10^18 > -1 / mem[(32 * idx) + _133 + 32]:
                revert with 'NH{q', 17
            if mem[_389] + sub_9aa0e7b2[mem[0]] >= 10^18 * mem[(32 * idx) + _133 + 32]:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if tiers.length < idx:
                revert with 'NH{q', 17
            if tiers.length - idx > -2:
                revert with 'NH{q', 17
            if not tiers.length + -idx + 1:
                _703 = mem[64]
                mem[64] = mem[64] + 64
                mem[_703] = 1
                mem[_703 + 32] = '0'
                _717 = mem[64]
                _725 = mem[(2 * ceil32(return_data.size)) + 96]
                idx = 0
                while idx < _725:
                    mem[_717 + idx + 32] = mem[(2 * ceil32(return_data.size)) + idx + 128]
                    idx = idx + 32
                    continue 
                if ceil32(_725) <= _725:
                    _999 = mem[_703]
                    idx = 0
                    while idx < _999:
                        mem[_717 + _725 + idx + 32] = mem[_703 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_717 + _725 + _999 + 32] = '.json'
                    if ceil32(_999) <= _999:
                        _1467 = mem[64]
                        mem[64] = _717 + _725 + _999 + 37
                        mem[_717 + _725 + _999 + 37] = 32
                        _1555 = mem[_1467]
                        mem[_717 + _725 + _999 + 69] = mem[_1467]
                        idx = 0
                        while idx < _1555:
                            mem[_717 + _725 + _999 + idx + 101] = mem[_1467 + idx + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_1555) > _1555:
                            mem[_717 + _725 + _999 + _1555 + 101] = 0
                        return 32, mem[_717 + _725 + _999 + 69 len ceil32(_1555) + 32]
                    _1491 = mem[64]
                    mem[64] = _717 + _725 + _999 + 37
                    mem[_717 + _725 + _999 + 37] = 32
                    _1579 = mem[_1491]
                    mem[_717 + _725 + _999 + 69] = mem[_1491]
                    idx = 0
                    while idx < _1579:
                        mem[_717 + _725 + _999 + idx + 101] = mem[_1491 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_1579) > _1579:
                        mem[_717 + _725 + _999 + _1579 + 101] = 0
                    return 32, mem[_717 + _725 + _999 + 69 len ceil32(_1579) + 32]
                mem[_717 + _725 + 32] = 0
                _1014 = mem[_703]
                idx = 0
                while idx < _1014:
                    mem[_717 + _725 + idx + 32] = mem[_703 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_717 + _725 + _1014 + 32] = '.json'
                if ceil32(_1014) <= _1014:
                    _1468 = mem[64]
                    mem[64] = _717 + _725 + _1014 + 37
                    mem[_717 + _725 + _1014 + 37] = 32
                    _1556 = mem[_1468]
                    mem[_717 + _725 + _1014 + 69] = mem[_1468]
                    idx = 0
                    while idx < _1556:
                        mem[_717 + _725 + _1014 + idx + 101] = mem[_1468 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_1556) > _1556:
                        mem[_717 + _725 + _1014 + _1556 + 101] = 0
                    return 32, mem[_717 + _725 + _1014 + 69 len ceil32(_1556) + 32]
                _1492 = mem[64]
                mem[64] = _717 + _725 + _1014 + 37
                mem[_717 + _725 + _1014 + 37] = 32
                _1580 = mem[_1492]
                mem[_717 + _725 + _1014 + 69] = mem[_1492]
                idx = 0
                while idx < _1580:
                    mem[_717 + _725 + _1014 + idx + 101] = mem[_1492 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_1580) > _1580:
                    mem[_717 + _725 + _1014 + _1580 + 101] = 0
                return 32, mem[_717 + _725 + _1014 + 69 len ceil32(_1580) + 32]
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
            _992 = mem[64]
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
                    if u - 1 >= mem[_992]:
                        revert with 'NH{q', 50
                    mem[u + _992 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                    u = u - 1
                    s = s / 10
                    continue 
                _1445 = mem[64]
                _1453 = mem[(2 * ceil32(return_data.size)) + 96]
                idx = 0
                while idx < _1453:
                    mem[_1445 + idx + 32] = mem[(2 * ceil32(return_data.size)) + idx + 128]
                    idx = idx + 32
                    continue 
                if ceil32(_1453) <= _1453:
                    _1989 = mem[_992]
                    idx = 0
                    while idx < _1989:
                        mem[_1445 + _1453 + idx + 32] = mem[_992 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1445 + _1453 + _1989 + 32] = '.json'
                    if ceil32(_1989) <= _1989:
                        _2311 = mem[64]
                        mem[64] = _1445 + _1453 + _1989 + 37
                        mem[_1445 + _1453 + _1989 + 37] = 32
                        _2375 = mem[_2311]
                        mem[_1445 + _1453 + _1989 + 69] = mem[_2311]
                        idx = 0
                        while idx < _2375:
                            mem[_1445 + _1453 + _1989 + idx + 101] = mem[_2311 + idx + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_2375) > _2375:
                            mem[_1445 + _1453 + _1989 + _2375 + 101] = 0
                        return 32, mem[_1445 + _1453 + _1989 + 69 len ceil32(_2375) + 32]
                    _2327 = mem[64]
                    mem[64] = _1445 + _1453 + _1989 + 37
                    mem[_1445 + _1453 + _1989 + 37] = 32
                    _2391 = mem[_2327]
                    mem[_1445 + _1453 + _1989 + 69] = mem[_2327]
                    idx = 0
                    while idx < _2391:
                        mem[_1445 + _1453 + _1989 + idx + 101] = mem[_2327 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_2391) > _2391:
                        mem[_1445 + _1453 + _1989 + _2391 + 101] = 0
                    return 32, mem[_1445 + _1453 + _1989 + 69 len ceil32(_2391) + 32]
                mem[_1445 + _1453 + 32] = 0
                _2013 = mem[_992]
                idx = 0
                while idx < _2013:
                    mem[_1445 + _1453 + idx + 32] = mem[_992 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1445 + _1453 + _2013 + 32] = '.json'
                if ceil32(_2013) <= _2013:
                    _2312 = mem[64]
                    mem[64] = _1445 + _1453 + _2013 + 37
                    mem[_1445 + _1453 + _2013 + 37] = 32
                    _2376 = mem[_2312]
                    mem[_1445 + _1453 + _2013 + 69] = mem[_2312]
                    idx = 0
                    while idx < _2376:
                        mem[_1445 + _1453 + _2013 + idx + 101] = mem[_2312 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_2376) > _2376:
                        mem[_1445 + _1453 + _2013 + _2376 + 101] = 0
                    return 32, mem[_1445 + _1453 + _2013 + 69 len ceil32(_2376) + 32]
                _2328 = mem[64]
                mem[64] = _1445 + _1453 + _2013 + 37
                mem[_1445 + _1453 + _2013 + 37] = 32
                _2392 = mem[_2328]
                mem[_1445 + _1453 + _2013 + 69] = mem[_2328]
                idx = 0
                while idx < _2392:
                    mem[_1445 + _1453 + _2013 + idx + 101] = mem[_2328 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_2392) > _2392:
                    mem[_1445 + _1453 + _2013 + _2392 + 101] = 0
                return 32, mem[_1445 + _1453 + _2013 + 69 len ceil32(_2392) + 32]
            mem[_992 + 32 len t] = call.data[calldata.size len t]
            u = t
            s = tiers.length + -idx + 1
            while s:
                if u < 1:
                    revert with 'NH{q', 17
                if 48 > -(s % 10) - 1:
                    revert with 'NH{q', 17
                if u - 1 >= mem[_992]:
                    revert with 'NH{q', 50
                mem[u + _992 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                u = u - 1
                s = s / 10
                continue 
            _1446 = mem[64]
            _1454 = mem[(2 * ceil32(return_data.size)) + 96]
            idx = 0
            while idx < _1454:
                mem[_1446 + idx + 32] = mem[(2 * ceil32(return_data.size)) + idx + 128]
                idx = idx + 32
                continue 
            if ceil32(_1454) <= _1454:
                _1990 = mem[_992]
                idx = 0
                while idx < _1990:
                    mem[_1446 + _1454 + idx + 32] = mem[_992 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1446 + _1454 + _1990 + 32] = '.json'
                if ceil32(_1990) <= _1990:
                    _2313 = mem[64]
                    mem[64] = _1446 + _1454 + _1990 + 37
                    mem[_1446 + _1454 + _1990 + 37] = 32
                    _2377 = mem[_2313]
                    mem[_1446 + _1454 + _1990 + 69] = mem[_2313]
                    idx = 0
                    while idx < _2377:
                        mem[_1446 + _1454 + _1990 + idx + 101] = mem[_2313 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_2377) > _2377:
                        mem[_1446 + _1454 + _1990 + _2377 + 101] = 0
                    return 32, mem[_1446 + _1454 + _1990 + 69 len ceil32(_2377) + 32]
                _2329 = mem[64]
                mem[64] = _1446 + _1454 + _1990 + 37
                mem[_1446 + _1454 + _1990 + 37] = 32
                _2393 = mem[_2329]
                mem[_1446 + _1454 + _1990 + 69] = mem[_2329]
                idx = 0
                while idx < _2393:
                    mem[_1446 + _1454 + _1990 + idx + 101] = mem[_2329 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_2393) > _2393:
                    mem[_1446 + _1454 + _1990 + _2393 + 101] = 0
                return 32, mem[_1446 + _1454 + _1990 + 69 len ceil32(_2393) + 32]
            mem[_1446 + _1454 + 32] = 0
            _2014 = mem[_992]
            idx = 0
            while idx < _2014:
                mem[_1446 + _1454 + idx + 32] = mem[_992 + idx + 32]
                idx = idx + 32
                continue 
            mem[_1446 + _1454 + _2014 + 32] = '.json'
            if ceil32(_2014) <= _2014:
                _2314 = mem[64]
                mem[64] = _1446 + _1454 + _2014 + 37
                mem[_1446 + _1454 + _2014 + 37] = 32
                _2378 = mem[_2314]
                mem[_1446 + _1454 + _2014 + 69] = mem[_2314]
                idx = 0
                while idx < _2378:
                    mem[_1446 + _1454 + _2014 + idx + 101] = mem[_2314 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_2378) > _2378:
                    mem[_1446 + _1454 + _2014 + _2378 + 101] = 0
                return 32, mem[_1446 + _1454 + _2014 + 69 len ceil32(_2378) + 32]
            _2330 = mem[64]
            mem[64] = _1446 + _1454 + _2014 + 37
            mem[_1446 + _1454 + _2014 + 37] = 32
            _2394 = mem[_2330]
            mem[_1446 + _1454 + _2014 + 69] = mem[_2330]
            idx = 0
            while idx < _2394:
                mem[_1446 + _1454 + _2014 + idx + 101] = mem[_2330 + idx + 32]
                idx = idx + 32
                continue 
            if ceil32(_2394) > _2394:
                mem[_1446 + _1454 + _2014 + _2394 + 101] = 0
            return 32, mem[_1446 + _1454 + _2014 + 69 len ceil32(_2394) + 32]
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
        _991 = mem[64]
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
                if t - 1 >= mem[_991]:
                    revert with 'NH{q', 50
                mem[t + _991 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            _1443 = mem[64]
            _1451 = mem[(2 * ceil32(return_data.size)) + 96]
            mem[mem[64] + 32 len ceil32(mem[(2 * ceil32(return_data.size)) + 96])] = mem[(2 * ceil32(return_data.size)) + 128 len ceil32(mem[(2 * ceil32(return_data.size)) + 96])]
            if ceil32(_1451) <= _1451:
                _1987 = mem[_991]
                mem[mem[64] + _1451 + 32 len ceil32(mem[_991])] = mem[_991 + 32 len ceil32(mem[_991])]
                mem[_1443 + _1451 + _1987 + 32] = '.json'
                if ceil32(_1987) <= _1987:
                    _2307 = mem[64]
                    mem[64] = _1443 + _1451 + _1987 + 37
                    mem[_1443 + _1451 + _1987 + 37] = 32
                    _2371 = mem[_2307]
                    mem[_1443 + _1451 + _1987 + 69] = mem[_2307]
                    mem[_1443 + _1451 + _1987 + 101 len ceil32(_2371)] = mem[_2307 + 32 len ceil32(_2371)]
                    if ceil32(_2371) > _2371:
                        mem[_1443 + _1451 + _1987 + _2371 + 101] = 0
                    return 32, mem[_1443 + _1451 + _1987 + 69 len ceil32(_2371) + 32]
                _2323 = mem[64]
                mem[64] = _1443 + _1451 + _1987 + 37
                mem[_1443 + _1451 + _1987 + 37] = 32
                _2387 = mem[_2323]
                mem[_1443 + _1451 + _1987 + 69] = mem[_2323]
                mem[_1443 + _1451 + _1987 + 101 len ceil32(_2387)] = mem[_2323 + 32 len ceil32(_2387)]
                var196001 = ceil32(_2387)
                if ceil32(_2387) > _2387:
                    mem[_1443 + _1451 + _1987 + _2387 + 101] = 0
                return 32, mem[_1443 + _1451 + _1987 + 69 len ceil32(_2387) + 32]
            mem[mem[64] + _1451 + 32] = 0
            _2011 = mem[_991]
            mem[_1443 + _1451 + 32 len ceil32(mem[_991])] = mem[_991 + 32 len ceil32(mem[_991])]
            mem[_1443 + _1451 + _2011 + 32] = '.json'
            if ceil32(_2011) <= _2011:
                _2308 = mem[64]
                mem[64] = _1443 + _1451 + _2011 + 37
                mem[_1443 + _1451 + _2011 + 37] = 32
                _2372 = mem[_2308]
                mem[_1443 + _1451 + _2011 + 69] = mem[_2308]
                mem[_1443 + _1451 + _2011 + 101 len ceil32(_2372)] = mem[_2308 + 32 len ceil32(_2372)]
                var196001 = ceil32(_2372)
                if ceil32(_2372) > _2372:
                    mem[_1443 + _1451 + _2011 + _2372 + 101] = 0
                return 32, mem[_1443 + _1451 + _2011 + 69 len ceil32(_2372) + 32]
            _2324 = mem[64]
            mem[64] = _1443 + _1451 + _2011 + 37
            mem[_1443 + _1451 + _2011 + 37] = 32
            _2388 = mem[_2324]
            mem[_1443 + _1451 + _2011 + 69] = mem[_2324]
            mem[_1443 + _1451 + _2011 + 101 len ceil32(_2388)] = mem[_2324 + 32 len ceil32(_2388)]
            var197001 = ceil32(_2388)
            if ceil32(_2388) > _2388:
                mem[_1443 + _1451 + _2011 + _2388 + 101] = 0
            return 32, mem[_1443 + _1451 + _2011 + 69 len ceil32(_2388) + 32]
        mem[_991 + 32 len s] = call.data[calldata.size len s]
        t = s
        idx = 1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[_991]:
                revert with 'NH{q', 50
            mem[t + _991 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _1444 = mem[64]
        _1452 = mem[(2 * ceil32(return_data.size)) + 96]
        mem[mem[64] + 32 len ceil32(mem[(2 * ceil32(return_data.size)) + 96])] = mem[(2 * ceil32(return_data.size)) + 128 len ceil32(mem[(2 * ceil32(return_data.size)) + 96])]
        if ceil32(_1452) <= _1452:
            _1988 = mem[_991]
            mem[mem[64] + _1452 + 32 len ceil32(mem[_991])] = mem[_991 + 32 len ceil32(mem[_991])]
            mem[mem[64] + _1452 + _1988 + 32] = '.json'
            if ceil32(_1988) <= _1988:
                _2309 = mem[64]
                mem[64] = _1444 + _1452 + _1988 + 37
                mem[_1444 + _1452 + _1988 + 37] = 32
                _2373 = mem[_2309]
                mem[_1444 + _1452 + _1988 + 69] = mem[_2309]
                mem[_1444 + _1452 + _1988 + 101 len ceil32(_2373)] = mem[_2309 + 32 len ceil32(_2373)]
                var196001 = ceil32(_2373)
                if ceil32(_2373) > _2373:
                    mem[_1444 + _1452 + _1988 + _2373 + 101] = 0
                return 32, mem[_1444 + _1452 + _1988 + 69 len ceil32(_2373) + 32]
            _2325 = mem[64]
            mem[64] = _1444 + _1452 + _1988 + 37
            mem[_1444 + _1452 + _1988 + 37] = 32
            _2389 = mem[_2325]
            mem[_1444 + _1452 + _1988 + 69] = mem[_2325]
            mem[_1444 + _1452 + _1988 + 101 len ceil32(_2389)] = mem[_2325 + 32 len ceil32(_2389)]
            var197001 = ceil32(_2389)
            if ceil32(_2389) > _2389:
                mem[_1444 + _1452 + _1988 + _2389 + 101] = 0
            return 32, mem[_1444 + _1452 + _1988 + 69 len ceil32(_2389) + 32]
        mem[mem[64] + _1452 + 32] = 0
        _2012 = mem[_991]
        mem[mem[64] + _1452 + 32 len ceil32(mem[_991])] = mem[_991 + 32 len ceil32(mem[_991])]
        mem[mem[64] + _1452 + _2012 + 32] = '.json'
        if ceil32(_2012) <= _2012:
            _2310 = mem[64]
            mem[64] = mem[64] + _1452 + _2012 + 37
            mem[_1444 + _1452 + _2012 + 37] = 32
            _2374 = mem[_2310]
            mem[_1444 + _1452 + _2012 + 69] = mem[_2310]
            mem[_1444 + _1452 + _2012 + 101 len ceil32(_2374)] = mem[_2310 + 32 len ceil32(_2374)]
            var197001 = ceil32(_2374)
            if ceil32(_2374) > _2374:
                mem[_1444 + _1452 + _2012 + _2374 + 101] = 0
            return 32, mem[_1444 + _1452 + _2012 + 69 len ceil32(_2374) + 32]
        _2326 = mem[64]
        mem[64] = mem[64] + _1452 + _2012 + 37
        mem[_1444 + _1452 + _2012 + 37] = 32
        _2390 = mem[_2326]
        mem[_1444 + _1452 + _2012 + 69] = mem[_2326]
        mem[_1444 + _1452 + _2012 + 101 len ceil32(_2390)] = mem[_2326 + 32 len ceil32(_2390)]
        var198001 = ceil32(_2390)
        if ceil32(_2390) > _2390:
            mem[_1444 + _1452 + _2012 + _2390 + 101] = 0
        return 32, mem[_1444 + _1452 + _2012 + 69 len ceil32(_2390) + 32]
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
    _124 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_124] == bool(mem[_124])
    if not mem[_124]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    _137 = mem[64]
    mem[64] = mem[64] + (32 * tiers.length) + 32
    mem[_137] = tiers.length
    if not tiers.length:
        mem[mem[64] + 4] = arg1
        require ext_code.size(NFTAddress)
        staticcall NFTAddress.0x6352211e with:
                gas gas_remaining wei
               args arg1
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _146 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_146] == mem[_146 + 12 len 20]
        mem[0] = mem[_146 + 12 len 20]
        mem[32] = 9
        mem[mem[64] + 4] = arg1
        require ext_code.size(NFTAddress)
        staticcall NFTAddress.0x3e8c379 with:
                gas gas_remaining wei
               args arg1
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _156 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_156] == mem[_156]
        if mem[_156] > -sub_9aa0e7b2[mem[0]] - 1:
            revert with 'NH{q', 17
        idx = 0
        while idx < tiers.length:
            if idx >= tiers.length:
                revert with 'NH{q', 50
            if mem[(32 * idx) + _137 + 32] and 10^18 > -1 / mem[(32 * idx) + _137 + 32]:
                revert with 'NH{q', 17
            if mem[_156] + sub_9aa0e7b2[mem[0]] >= 10^18 * mem[(32 * idx) + _137 + 32]:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if tiers.length < idx:
                revert with 'NH{q', 17
            if tiers.length - idx > -2:
                revert with 'NH{q', 17
            if not tiers.length + -idx + 1:
                _246 = mem[64]
                mem[64] = mem[64] + 64
                mem[_246] = 1
                mem[_246 + 32] = '0'
                _248 = mem[64]
                idx = 0
                while idx < _10:
                    mem[_248 + idx + 32] = mem[(2 * ceil32(return_data.size)) + idx + 128]
                    idx = idx + 32
                    continue 
                if ceil32(_10) <= _10:
                    _319 = mem[_246]
                    idx = 0
                    while idx < _319:
                        mem[_248 + _10 + idx + 32] = mem[_246 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_248 + _10 + _319 + 32] = '.json'
                    if ceil32(_319) <= _319:
                        _623 = mem[64]
                        mem[64] = _248 + _10 + _319 + 37
                        mem[_248 + _10 + _319 + 37] = 32
                        _647 = mem[_623]
                        mem[_248 + _10 + _319 + 69] = mem[_623]
                        idx = 0
                        while idx < _647:
                            mem[_248 + _10 + _319 + idx + 101] = mem[_623 + idx + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_647) > _647:
                            mem[_248 + _10 + _319 + _647 + 101] = 0
                        return 32, mem[_248 + _10 + _319 + 69 len ceil32(_647) + 32]
                    _635 = mem[64]
                    mem[64] = _248 + _10 + _319 + 37
                    mem[_248 + _10 + _319 + 37] = 32
                    _659 = mem[_635]
                    mem[_248 + _10 + _319 + 69] = mem[_635]
                    idx = 0
                    while idx < _659:
                        mem[_248 + _10 + _319 + idx + 101] = mem[_635 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_659) > _659:
                        mem[_248 + _10 + _319 + _659 + 101] = 0
                    return 32, mem[_248 + _10 + _319 + 69 len ceil32(_659) + 32]
                mem[_248 + _10 + 32] = 0
                _324 = mem[_246]
                idx = 0
                while idx < _324:
                    mem[_248 + _10 + idx + 32] = mem[_246 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_248 + _10 + _324 + 32] = '.json'
                if ceil32(_324) <= _324:
                    _624 = mem[64]
                    mem[64] = _248 + _10 + _324 + 37
                    mem[_248 + _10 + _324 + 37] = 32
                    _648 = mem[_624]
                    mem[_248 + _10 + _324 + 69] = mem[_624]
                    idx = 0
                    while idx < _648:
                        mem[_248 + _10 + _324 + idx + 101] = mem[_624 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_648) > _648:
                        mem[_248 + _10 + _324 + _648 + 101] = 0
                    return 32, mem[_248 + _10 + _324 + 69 len ceil32(_648) + 32]
                _636 = mem[64]
                mem[64] = _248 + _10 + _324 + 37
                mem[_248 + _10 + _324 + 37] = 32
                _660 = mem[_636]
                mem[_248 + _10 + _324 + 69] = mem[_636]
                idx = 0
                while idx < _660:
                    mem[_248 + _10 + _324 + idx + 101] = mem[_636 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_660) > _660:
                    mem[_248 + _10 + _324 + _660 + 101] = 0
                return 32, mem[_248 + _10 + _324 + 69 len ceil32(_660) + 32]
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
            _316 = mem[64]
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
                    if u - 1 >= mem[_316]:
                        revert with 'NH{q', 50
                    mem[u + _316 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                    u = u - 1
                    s = s / 10
                    continue 
                _609 = mem[64]
                _617 = mem[(2 * ceil32(return_data.size)) + 96]
                idx = 0
                while idx < _617:
                    mem[_609 + idx + 32] = mem[(2 * ceil32(return_data.size)) + idx + 128]
                    idx = idx + 32
                    continue 
                if ceil32(_617) <= _617:
                    _1002 = mem[_316]
                    idx = 0
                    while idx < _1002:
                        mem[_609 + _617 + idx + 32] = mem[_316 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_609 + _617 + _1002 + 32] = '.json'
                    if ceil32(_1002) <= _1002:
                        _1473 = mem[64]
                        mem[64] = _609 + _617 + _1002 + 37
                        mem[_609 + _617 + _1002 + 37] = 32
                        _1561 = mem[_1473]
                        mem[_609 + _617 + _1002 + 69] = mem[_1473]
                        idx = 0
                        while idx < _1561:
                            mem[_609 + _617 + _1002 + idx + 101] = mem[_1473 + idx + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_1561) > _1561:
                            mem[_609 + _617 + _1002 + _1561 + 101] = 0
                        return 32, mem[_609 + _617 + _1002 + 69 len ceil32(_1561) + 32]
                    _1497 = mem[64]
                    mem[64] = _609 + _617 + _1002 + 37
                    mem[_609 + _617 + _1002 + 37] = 32
                    _1585 = mem[_1497]
                    mem[_609 + _617 + _1002 + 69] = mem[_1497]
                    idx = 0
                    while idx < _1585:
                        mem[_609 + _617 + _1002 + idx + 101] = mem[_1497 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_1585) > _1585:
                        mem[_609 + _617 + _1002 + _1585 + 101] = 0
                    return 32, mem[_609 + _617 + _1002 + 69 len ceil32(_1585) + 32]
                mem[_609 + _617 + 32] = 0
                _1017 = mem[_316]
                idx = 0
                while idx < _1017:
                    mem[_609 + _617 + idx + 32] = mem[_316 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_609 + _617 + _1017 + 32] = '.json'
                if ceil32(_1017) <= _1017:
                    _1474 = mem[64]
                    mem[64] = _609 + _617 + _1017 + 37
                    mem[_609 + _617 + _1017 + 37] = 32
                    _1562 = mem[_1474]
                    mem[_609 + _617 + _1017 + 69] = mem[_1474]
                    idx = 0
                    while idx < _1562:
                        mem[_609 + _617 + _1017 + idx + 101] = mem[_1474 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_1562) > _1562:
                        mem[_609 + _617 + _1017 + _1562 + 101] = 0
                    return 32, mem[_609 + _617 + _1017 + 69 len ceil32(_1562) + 32]
                _1498 = mem[64]
                mem[64] = _609 + _617 + _1017 + 37
                mem[_609 + _617 + _1017 + 37] = 32
                _1586 = mem[_1498]
                mem[_609 + _617 + _1017 + 69] = mem[_1498]
                idx = 0
                while idx < _1586:
                    mem[_609 + _617 + _1017 + idx + 101] = mem[_1498 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_1586) > _1586:
                    mem[_609 + _617 + _1017 + _1586 + 101] = 0
                return 32, mem[_609 + _617 + _1017 + 69 len ceil32(_1586) + 32]
            mem[_316 + 32 len t] = call.data[calldata.size len t]
            u = t
            s = tiers.length + -idx + 1
            while s:
                if u < 1:
                    revert with 'NH{q', 17
                if 48 > -(s % 10) - 1:
                    revert with 'NH{q', 17
                if u - 1 >= mem[_316]:
                    revert with 'NH{q', 50
                mem[u + _316 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                u = u - 1
                s = s / 10
                continue 
            _610 = mem[64]
            _618 = mem[(2 * ceil32(return_data.size)) + 96]
            idx = 0
            while idx < _618:
                mem[_610 + idx + 32] = mem[(2 * ceil32(return_data.size)) + idx + 128]
                idx = idx + 32
                continue 
            if ceil32(_618) <= _618:
                _1003 = mem[_316]
                idx = 0
                while idx < _1003:
                    mem[_610 + _618 + idx + 32] = mem[_316 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_610 + _618 + _1003 + 32] = '.json'
                if ceil32(_1003) <= _1003:
                    _1475 = mem[64]
                    mem[64] = _610 + _618 + _1003 + 37
                    mem[_610 + _618 + _1003 + 37] = 32
                    _1563 = mem[_1475]
                    mem[_610 + _618 + _1003 + 69] = mem[_1475]
                    idx = 0
                    while idx < _1563:
                        mem[_610 + _618 + _1003 + idx + 101] = mem[_1475 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_1563) > _1563:
                        mem[_610 + _618 + _1003 + _1563 + 101] = 0
                    return 32, mem[_610 + _618 + _1003 + 69 len ceil32(_1563) + 32]
                _1499 = mem[64]
                mem[64] = _610 + _618 + _1003 + 37
                mem[_610 + _618 + _1003 + 37] = 32
                _1587 = mem[_1499]
                mem[_610 + _618 + _1003 + 69] = mem[_1499]
                idx = 0
                while idx < _1587:
                    mem[_610 + _618 + _1003 + idx + 101] = mem[_1499 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_1587) > _1587:
                    mem[_610 + _618 + _1003 + _1587 + 101] = 0
                return 32, mem[_610 + _618 + _1003 + 69 len ceil32(_1587) + 32]
            mem[_610 + _618 + 32] = 0
            _1018 = mem[_316]
            idx = 0
            while idx < _1018:
                mem[_610 + _618 + idx + 32] = mem[_316 + idx + 32]
                idx = idx + 32
                continue 
            mem[_610 + _618 + _1018 + 32] = '.json'
            if ceil32(_1018) <= _1018:
                _1476 = mem[64]
                mem[64] = _610 + _618 + _1018 + 37
                mem[_610 + _618 + _1018 + 37] = 32
                _1564 = mem[_1476]
                mem[_610 + _618 + _1018 + 69] = mem[_1476]
                idx = 0
                while idx < _1564:
                    mem[_610 + _618 + _1018 + idx + 101] = mem[_1476 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_1564) > _1564:
                    mem[_610 + _618 + _1018 + _1564 + 101] = 0
                return 32, mem[_610 + _618 + _1018 + 69 len ceil32(_1564) + 32]
            _1500 = mem[64]
            mem[64] = _610 + _618 + _1018 + 37
            mem[_610 + _618 + _1018 + 37] = 32
            _1588 = mem[_1500]
            mem[_610 + _618 + _1018 + 69] = mem[_1500]
            idx = 0
            while idx < _1588:
                mem[_610 + _618 + _1018 + idx + 101] = mem[_1500 + idx + 32]
                idx = idx + 32
                continue 
            if ceil32(_1588) > _1588:
                mem[_610 + _618 + _1018 + _1588 + 101] = 0
            return 32, mem[_610 + _618 + _1018 + 69 len ceil32(_1588) + 32]
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
        _315 = mem[64]
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
                if t - 1 >= mem[_315]:
                    revert with 'NH{q', 50
                mem[t + _315 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            _607 = mem[64]
            _615 = mem[(2 * ceil32(return_data.size)) + 96]
            mem[mem[64] + 32 len ceil32(mem[(2 * ceil32(return_data.size)) + 96])] = mem[(2 * ceil32(return_data.size)) + 128 len ceil32(mem[(2 * ceil32(return_data.size)) + 96])]
            if ceil32(_615) <= _615:
                _1000 = mem[_315]
                mem[mem[64] + _615 + 32 len ceil32(mem[_315])] = mem[_315 + 32 len ceil32(mem[_315])]
                mem[mem[64] + _615 + _1000 + 32] = '.json'
                if ceil32(_1000) <= _1000:
                    _1469 = mem[64]
                    mem[64] = mem[64] + _615 + _1000 + 37
                    mem[_607 + _615 + _1000 + 37] = 32
                    _1557 = mem[_1469]
                    mem[_607 + _615 + _1000 + 69] = mem[_1469]
                    mem[_607 + _615 + _1000 + 101 len ceil32(_1557)] = mem[_1469 + 32 len ceil32(_1557)]
                    if ceil32(_1557) > _1557:
                        mem[_607 + _615 + _1000 + _1557 + 101] = 0
                    return 32, mem[_607 + _615 + _1000 + 69 len ceil32(_1557) + 32]
                _1493 = mem[64]
                mem[64] = mem[64] + _615 + _1000 + 37
                mem[_607 + _615 + _1000 + 37] = 32
                _1581 = mem[_1493]
                mem[_607 + _615 + _1000 + 69] = mem[_1493]
                mem[_607 + _615 + _1000 + 101 len ceil32(_1581)] = mem[_1493 + 32 len ceil32(_1581)]
                if ceil32(_1581) > _1581:
                    mem[_607 + _615 + _1000 + _1581 + 101] = 0
                return 32, mem[_607 + _615 + _1000 + 69 len ceil32(_1581) + 32]
            mem[mem[64] + _615 + 32] = 0
            _1015 = mem[_315]
            mem[mem[64] + _615 + 32 len ceil32(mem[_315])] = mem[_315 + 32 len ceil32(mem[_315])]
            mem[mem[64] + _615 + _1015 + 32] = '.json'
            if ceil32(_1015) <= _1015:
                _1470 = mem[64]
                mem[64] = _607 + _615 + _1015 + 37
                mem[_607 + _615 + _1015 + 37] = 32
                _1558 = mem[_1470]
                mem[_607 + _615 + _1015 + 69] = mem[_1470]
                mem[_607 + _615 + _1015 + 101 len ceil32(_1558)] = mem[_1470 + 32 len ceil32(_1558)]
                if ceil32(_1558) > _1558:
                    mem[_607 + _615 + _1015 + _1558 + 101] = 0
                return 32, mem[_607 + _615 + _1015 + 69 len ceil32(_1558) + 32]
            _1494 = mem[64]
            mem[64] = _607 + _615 + _1015 + 37
            mem[_607 + _615 + _1015 + 37] = 32
            _1582 = mem[_1494]
            mem[_607 + _615 + _1015 + 69] = mem[_1494]
            mem[_607 + _615 + _1015 + 101 len ceil32(_1582)] = mem[_1494 + 32 len ceil32(_1582)]
            if ceil32(_1582) > _1582:
                mem[_607 + _615 + _1015 + _1582 + 101] = 0
            return 32, mem[_607 + _615 + _1015 + 69 len ceil32(_1582) + 32]
        mem[_315 + 32 len s] = call.data[calldata.size len s]
        t = s
        idx = 1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[_315]:
                revert with 'NH{q', 50
            mem[t + _315 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _608 = mem[64]
        _616 = mem[(2 * ceil32(return_data.size)) + 96]
        mem[mem[64] + 32 len ceil32(mem[(2 * ceil32(return_data.size)) + 96])] = mem[(2 * ceil32(return_data.size)) + 128 len ceil32(mem[(2 * ceil32(return_data.size)) + 96])]
        if ceil32(_616) <= _616:
            _1001 = mem[_315]
            mem[mem[64] + _616 + 32 len ceil32(mem[_315])] = mem[_315 + 32 len ceil32(mem[_315])]
            mem[_608 + _616 + _1001 + 32] = '.json'
            if ceil32(_1001) <= _1001:
                _1471 = mem[64]
                mem[64] = _608 + _616 + _1001 + 37
                mem[_608 + _616 + _1001 + 37] = 32
                _1559 = mem[_1471]
                mem[_608 + _616 + _1001 + 69] = mem[_1471]
                mem[_608 + _616 + _1001 + 101 len ceil32(_1559)] = mem[_1471 + 32 len ceil32(_1559)]
                if ceil32(_1559) > _1559:
                    mem[_608 + _616 + _1001 + _1559 + 101] = 0
                return 32, mem[_608 + _616 + _1001 + 69 len ceil32(_1559) + 32]
            _1495 = mem[64]
            mem[64] = _608 + _616 + _1001 + 37
            mem[_608 + _616 + _1001 + 37] = 32
            _1583 = mem[_1495]
            mem[_608 + _616 + _1001 + 69] = mem[_1495]
            mem[_608 + _616 + _1001 + 101 len ceil32(_1583)] = mem[_1495 + 32 len ceil32(_1583)]
            if ceil32(_1583) > _1583:
                mem[_608 + _616 + _1001 + _1583 + 101] = 0
            return 32, mem[_608 + _616 + _1001 + 69 len ceil32(_1583) + 32]
        mem[mem[64] + _616 + 32] = 0
        _1016 = mem[_315]
        mem[_608 + _616 + 32 len ceil32(mem[_315])] = mem[_315 + 32 len ceil32(mem[_315])]
        mem[_608 + _616 + _1016 + 32] = '.json'
        if ceil32(_1016) <= _1016:
            _1472 = mem[64]
            mem[64] = _608 + _616 + _1016 + 37
            mem[_608 + _616 + _1016 + 37] = 32
            _1560 = mem[_1472]
            mem[_608 + _616 + _1016 + 69] = mem[_1472]
            mem[_608 + _616 + _1016 + 101 len ceil32(_1560)] = mem[_1472 + 32 len ceil32(_1560)]
            if ceil32(_1560) > _1560:
                mem[_608 + _616 + _1016 + _1560 + 101] = 0
            return 32, mem[_608 + _616 + _1016 + 69 len ceil32(_1560) + 32]
        _1496 = mem[64]
        mem[64] = _608 + _616 + _1016 + 37
        mem[_608 + _616 + _1016 + 37] = 32
        _1584 = mem[_1496]
        mem[_608 + _616 + _1016 + 69] = mem[_1496]
        mem[_608 + _616 + _1016 + 101 len ceil32(_1584)] = mem[_1496 + 32 len ceil32(_1584)]
        if ceil32(_1584) > _1584:
            mem[_608 + _616 + _1016 + _1584 + 101] = 0
        return 32, mem[_608 + _616 + _1016 + 69 len ceil32(_1584) + 32]
    mem[0] = 8
    mem[_137 + 32] = uint256(tiers.field_0)
    idx = _137 + 32
    s = 0
    while _137 + (32 * tiers.length) > idx:
        mem[idx + 32] = tiers[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[mem[64] + 4] = arg1
    require ext_code.size(NFTAddress)
    staticcall NFTAddress.0x6352211e with:
            gas gas_remaining wei
           args arg1
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _328 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_328] == mem[_328 + 12 len 20]
    mem[0] = mem[_328 + 12 len 20]
    mem[32] = 9
    mem[mem[64] + 4] = arg1
    require ext_code.size(NFTAddress)
    staticcall NFTAddress.0x3e8c379 with:
            gas gas_remaining wei
           args arg1
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _394 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_394] == mem[_394]
    if mem[_394] > -sub_9aa0e7b2[mem[0]] - 1:
        revert with 'NH{q', 17
    idx = 0
    while idx < tiers.length:
        if idx >= tiers.length:
            revert with 'NH{q', 50
        if mem[(32 * idx) + _137 + 32] and 10^18 > -1 / mem[(32 * idx) + _137 + 32]:
            revert with 'NH{q', 17
        if mem[_394] + sub_9aa0e7b2[mem[0]] >= 10^18 * mem[(32 * idx) + _137 + 32]:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if tiers.length < idx:
            revert with 'NH{q', 17
        if tiers.length - idx > -2:
            revert with 'NH{q', 17
        if not tiers.length + -idx + 1:
            _706 = mem[64]
            mem[64] = mem[64] + 64
            mem[_706] = 1
            mem[_706 + 32] = '0'
            _720 = mem[64]
            _730 = mem[(2 * ceil32(return_data.size)) + 96]
            idx = 0
            while idx < _730:
                mem[_720 + idx + 32] = mem[(2 * ceil32(return_data.size)) + idx + 128]
                idx = idx + 32
                continue 
            if ceil32(_730) <= _730:
                _1004 = mem[_706]
                idx = 0
                while idx < _1004:
                    mem[_720 + _730 + idx + 32] = mem[_706 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_720 + _730 + _1004 + 32] = '.json'
                if ceil32(_1004) <= _1004:
                    _1477 = mem[64]
                    mem[64] = _720 + _730 + _1004 + 37
                    mem[_720 + _730 + _1004 + 37] = 32
                    _1565 = mem[_1477]
                    mem[_720 + _730 + _1004 + 69] = mem[_1477]
                    idx = 0
                    while idx < _1565:
                        mem[_720 + _730 + _1004 + idx + 101] = mem[_1477 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_1565) > _1565:
                        mem[_720 + _730 + _1004 + _1565 + 101] = 0
                    return 32, mem[_720 + _730 + _1004 + 69 len ceil32(_1565) + 32]
                _1505 = mem[64]
                mem[64] = _720 + _730 + _1004 + 37
                mem[_720 + _730 + _1004 + 37] = 32
                _1593 = mem[_1505]
                mem[_720 + _730 + _1004 + 69] = mem[_1505]
                idx = 0
                while idx < _1593:
                    mem[_720 + _730 + _1004 + idx + 101] = mem[_1505 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_1593) > _1593:
                    mem[_720 + _730 + _1004 + _1593 + 101] = 0
                return 32, mem[_720 + _730 + _1004 + 69 len ceil32(_1593) + 32]
            mem[_720 + _730 + 32] = 0
            _1024 = mem[_706]
            idx = 0
            while idx < _1024:
                mem[_720 + _730 + idx + 32] = mem[_706 + idx + 32]
                idx = idx + 32
                continue 
            mem[_720 + _730 + _1024 + 32] = '.json'
            if ceil32(_1024) <= _1024:
                _1478 = mem[64]
                mem[64] = _720 + _730 + _1024 + 37
                mem[_720 + _730 + _1024 + 37] = 32
                _1566 = mem[_1478]
                mem[_720 + _730 + _1024 + 69] = mem[_1478]
                idx = 0
                while idx < _1566:
                    mem[_720 + _730 + _1024 + idx + 101] = mem[_1478 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_1566) > _1566:
                    mem[_720 + _730 + _1024 + _1566 + 101] = 0
                return 32, mem[_720 + _730 + _1024 + 69 len ceil32(_1566) + 32]
            _1506 = mem[64]
            mem[64] = _720 + _730 + _1024 + 37
            mem[_720 + _730 + _1024 + 37] = 32
            _1594 = mem[_1506]
            mem[_720 + _730 + _1024 + 69] = mem[_1506]
            idx = 0
            while idx < _1594:
                mem[_720 + _730 + _1024 + idx + 101] = mem[_1506 + idx + 32]
                idx = idx + 32
                continue 
            if ceil32(_1594) > _1594:
                mem[_720 + _730 + _1024 + _1594 + 101] = 0
            return 32, mem[_720 + _730 + _1024 + 69 len ceil32(_1594) + 32]
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
        _994 = mem[64]
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
                if u - 1 >= mem[_994]:
                    revert with 'NH{q', 50
                mem[u + _994 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                u = u - 1
                s = s / 10
                continue 
            _1449 = mem[64]
            _1457 = mem[(2 * ceil32(return_data.size)) + 96]
            idx = 0
            while idx < _1457:
                mem[_1449 + idx + 32] = mem[(2 * ceil32(return_data.size)) + idx + 128]
                idx = idx + 32
                continue 
            if ceil32(_1457) <= _1457:
                _1993 = mem[_994]
                idx = 0
                while idx < _1993:
                    mem[_1449 + _1457 + idx + 32] = mem[_994 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1449 + _1457 + _1993 + 32] = '.json'
                if ceil32(_1993) <= _1993:
                    _2319 = mem[64]
                    mem[64] = _1449 + _1457 + _1993 + 37
                    mem[_1449 + _1457 + _1993 + 37] = 32
                    _2383 = mem[_2319]
                    mem[_1449 + _1457 + _1993 + 69] = mem[_2319]
                    idx = 0
                    while idx < _2383:
                        mem[_1449 + _1457 + _1993 + idx + 101] = mem[_2319 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_2383) > _2383:
                        mem[_1449 + _1457 + _1993 + _2383 + 101] = 0
                    return 32, mem[_1449 + _1457 + _1993 + 69 len ceil32(_2383) + 32]
                _2335 = mem[64]
                mem[64] = _1449 + _1457 + _1993 + 37
                mem[_1449 + _1457 + _1993 + 37] = 32
                _2399 = mem[_2335]
                mem[_1449 + _1457 + _1993 + 69] = mem[_2335]
                idx = 0
                while idx < _2399:
                    mem[_1449 + _1457 + _1993 + idx + 101] = mem[_2335 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_2399) > _2399:
                    mem[_1449 + _1457 + _1993 + _2399 + 101] = 0
                return 32, mem[_1449 + _1457 + _1993 + 69 len ceil32(_2399) + 32]
            mem[_1449 + _1457 + 32] = 0
            _2037 = mem[_994]
            idx = 0
            while idx < _2037:
                mem[_1449 + _1457 + idx + 32] = mem[_994 + idx + 32]
                idx = idx + 32
                continue 
            mem[_1449 + _1457 + _2037 + 32] = '.json'
            if ceil32(_2037) <= _2037:
                _2320 = mem[64]
                mem[64] = _1449 + _1457 + _2037 + 37
                mem[_1449 + _1457 + _2037 + 37] = 32
                _2384 = mem[_2320]
                mem[_1449 + _1457 + _2037 + 69] = mem[_2320]
                idx = 0
                while idx < _2384:
                    mem[_1449 + _1457 + _2037 + idx + 101] = mem[_2320 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_2384) > _2384:
                    mem[_1449 + _1457 + _2037 + _2384 + 101] = 0
                return 32, mem[_1449 + _1457 + _2037 + 69 len ceil32(_2384) + 32]
            _2336 = mem[64]
            mem[64] = _1449 + _1457 + _2037 + 37
            mem[_1449 + _1457 + _2037 + 37] = 32
            _2400 = mem[_2336]
            mem[_1449 + _1457 + _2037 + 69] = mem[_2336]
            idx = 0
            while idx < _2400:
                mem[_1449 + _1457 + _2037 + idx + 101] = mem[_2336 + idx + 32]
                idx = idx + 32
                continue 
            if ceil32(_2400) > _2400:
                mem[_1449 + _1457 + _2037 + _2400 + 101] = 0
            return 32, mem[_1449 + _1457 + _2037 + 69 len ceil32(_2400) + 32]
        mem[_994 + 32 len t] = call.data[calldata.size len t]
        u = t
        s = tiers.length + -idx + 1
        while s:
            if u < 1:
                revert with 'NH{q', 17
            if 48 > -(s % 10) - 1:
                revert with 'NH{q', 17
            if u - 1 >= mem[_994]:
                revert with 'NH{q', 50
            mem[u + _994 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
            u = u - 1
            s = s / 10
            continue 
        _1450 = mem[64]
        _1458 = mem[(2 * ceil32(return_data.size)) + 96]
        idx = 0
        while idx < _1458:
            mem[_1450 + idx + 32] = mem[(2 * ceil32(return_data.size)) + idx + 128]
            idx = idx + 32
            continue 
        if ceil32(_1458) <= _1458:
            _1994 = mem[_994]
            idx = 0
            while idx < _1994:
                mem[_1450 + _1458 + idx + 32] = mem[_994 + idx + 32]
                idx = idx + 32
                continue 
            mem[_1450 + _1458 + _1994 + 32] = '.json'
            if ceil32(_1994) <= _1994:
                _2321 = mem[64]
                mem[64] = _1450 + _1458 + _1994 + 37
                mem[_1450 + _1458 + _1994 + 37] = 32
                _2385 = mem[_2321]
                mem[_1450 + _1458 + _1994 + 69] = mem[_2321]
                idx = 0
                while idx < _2385:
                    mem[_1450 + _1458 + _1994 + idx + 101] = mem[_2321 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_2385) > _2385:
                    mem[_1450 + _1458 + _1994 + _2385 + 101] = 0
                return 32, mem[_1450 + _1458 + _1994 + 69 len ceil32(_2385) + 32]
            _2337 = mem[64]
            mem[64] = _1450 + _1458 + _1994 + 37
            mem[_1450 + _1458 + _1994 + 37] = 32
            _2401 = mem[_2337]
            mem[_1450 + _1458 + _1994 + 69] = mem[_2337]
            idx = 0
            while idx < _2401:
                mem[_1450 + _1458 + _1994 + idx + 101] = mem[_2337 + idx + 32]
                idx = idx + 32
                continue 
            if ceil32(_2401) > _2401:
                mem[_1450 + _1458 + _1994 + _2401 + 101] = 0
            return 32, mem[_1450 + _1458 + _1994 + 69 len ceil32(_2401) + 32]
        mem[_1450 + _1458 + 32] = 0
        _2038 = mem[_994]
        idx = 0
        while idx < _2038:
            mem[_1450 + _1458 + idx + 32] = mem[_994 + idx + 32]
            idx = idx + 32
            continue 
        mem[_1450 + _1458 + _2038 + 32] = '.json'
        if ceil32(_2038) <= _2038:
            _2322 = mem[64]
            mem[64] = _1450 + _1458 + _2038 + 37
            mem[_1450 + _1458 + _2038 + 37] = 32
            _2386 = mem[_2322]
            mem[_1450 + _1458 + _2038 + 69] = mem[_2322]
            idx = 0
            while idx < _2386:
                mem[_1450 + _1458 + _2038 + idx + 101] = mem[_2322 + idx + 32]
                idx = idx + 32
                continue 
            if ceil32(_2386) > _2386:
                mem[_1450 + _1458 + _2038 + _2386 + 101] = 0
            return 32, mem[_1450 + _1458 + _2038 + 69 len ceil32(_2386) + 32]
        _2338 = mem[64]
        mem[64] = _1450 + _1458 + _2038 + 37
        mem[_1450 + _1458 + _2038 + 37] = 32
        _2402 = mem[_2338]
        mem[_1450 + _1458 + _2038 + 69] = mem[_2338]
        idx = 0
        while idx < _2402:
            mem[_1450 + _1458 + _2038 + idx + 101] = mem[_2338 + idx + 32]
            idx = idx + 32
            continue 
        if ceil32(_2402) > _2402:
            mem[_1450 + _1458 + _2038 + _2402 + 101] = 0
        return 32, mem[_1450 + _1458 + _2038 + 69 len ceil32(_2402) + 32]
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
    _993 = mem[64]
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
            if t - 1 >= mem[_993]:
                revert with 'NH{q', 50
            mem[t + _993 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _1447 = mem[64]
        _1455 = mem[(2 * ceil32(return_data.size)) + 96]
        mem[mem[64] + 32 len ceil32(mem[(2 * ceil32(return_data.size)) + 96])] = mem[(2 * ceil32(return_data.size)) + 128 len ceil32(mem[(2 * ceil32(return_data.size)) + 96])]
        if ceil32(_1455) <= _1455:
            _1991 = mem[_993]
            mem[mem[64] + _1455 + 32 len ceil32(mem[_993])] = mem[_993 + 32 len ceil32(mem[_993])]
            mem[_1447 + _1455 + _1991 + 32] = '.json'
            if ceil32(_1991) <= _1991:
                _2315 = mem[64]
                mem[64] = _1447 + _1455 + _1991 + 37
                mem[_1447 + _1455 + _1991 + 37] = 32
                _2379 = mem[_2315]
                mem[_1447 + _1455 + _1991 + 69] = mem[_2315]
                mem[_1447 + _1455 + _1991 + 101 len ceil32(_2379)] = mem[_2315 + 32 len ceil32(_2379)]
                if ceil32(_2379) > _2379:
                    mem[_1447 + _1455 + _1991 + _2379 + 101] = 0
                return 32, mem[_1447 + _1455 + _1991 + 69 len ceil32(_2379) + 32]
            _2331 = mem[64]
            mem[64] = _1447 + _1455 + _1991 + 37
            mem[_1447 + _1455 + _1991 + 37] = 32
            _2395 = mem[_2331]
            mem[_1447 + _1455 + _1991 + 69] = mem[_2331]
            mem[_1447 + _1455 + _1991 + 101 len ceil32(_2395)] = mem[_2331 + 32 len ceil32(_2395)]
            var197001 = ceil32(_2395)
            if ceil32(_2395) > _2395:
                mem[_1447 + _1455 + _1991 + _2395 + 101] = 0
            return 32, mem[_1447 + _1455 + _1991 + 69 len ceil32(_2395) + 32]
        mem[mem[64] + _1455 + 32] = 0
        _2035 = mem[_993]
        mem[_1447 + _1455 + 32 len ceil32(mem[_993])] = mem[_993 + 32 len ceil32(mem[_993])]
        mem[_1447 + _1455 + _2035 + 32] = '.json'
        if ceil32(_2035) <= _2035:
            _2316 = mem[64]
            mem[64] = _1447 + _1455 + _2035 + 37
            mem[_1447 + _1455 + _2035 + 37] = 32
            _2380 = mem[_2316]
            mem[_1447 + _1455 + _2035 + 69] = mem[_2316]
            mem[_1447 + _1455 + _2035 + 101 len ceil32(_2380)] = mem[_2316 + 32 len ceil32(_2380)]
            var197001 = ceil32(_2380)
            if ceil32(_2380) > _2380:
                mem[_1447 + _1455 + _2035 + _2380 + 101] = 0
            return 32, mem[_1447 + _1455 + _2035 + 69 len ceil32(_2380) + 32]
        _2332 = mem[64]
        mem[64] = _1447 + _1455 + _2035 + 37
        mem[_1447 + _1455 + _2035 + 37] = 32
        _2396 = mem[_2332]
        mem[_1447 + _1455 + _2035 + 69] = mem[_2332]
        mem[_1447 + _1455 + _2035 + 101 len ceil32(_2396)] = mem[_2332 + 32 len ceil32(_2396)]
        var198001 = ceil32(_2396)
        if ceil32(_2396) > _2396:
            mem[_1447 + _1455 + _2035 + _2396 + 101] = 0
        return 32, mem[_1447 + _1455 + _2035 + 69 len ceil32(_2396) + 32]
    mem[_993 + 32 len s] = call.data[calldata.size len s]
    t = s
    idx = 1
    while idx:
        if t < 1:
            revert with 'NH{q', 17
        if 48 > -(idx % 10) - 1:
            revert with 'NH{q', 17
        if t - 1 >= mem[_993]:
            revert with 'NH{q', 50
        mem[t + _993 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    _1448 = mem[64]
    _1456 = mem[(2 * ceil32(return_data.size)) + 96]
    mem[mem[64] + 32 len ceil32(mem[(2 * ceil32(return_data.size)) + 96])] = mem[(2 * ceil32(return_data.size)) + 128 len ceil32(mem[(2 * ceil32(return_data.size)) + 96])]
    if ceil32(_1456) <= _1456:
        _1992 = mem[_993]
        mem[mem[64] + _1456 + 32 len ceil32(mem[_993])] = mem[_993 + 32 len ceil32(mem[_993])]
        mem[_1448 + _1456 + _1992 + 32] = '.json'
        if ceil32(_1992) <= _1992:
            _2317 = mem[64]
            mem[64] = _1448 + _1456 + _1992 + 37
            mem[_1448 + _1456 + _1992 + 37] = 32
            _2381 = mem[_2317]
            mem[_1448 + _1456 + _1992 + 69] = mem[_2317]
            mem[_1448 + _1456 + _1992 + 101 len ceil32(_2381)] = mem[_2317 + 32 len ceil32(_2381)]
            var197001 = ceil32(_2381)
            if ceil32(_2381) > _2381:
                mem[_1448 + _1456 + _1992 + _2381 + 101] = 0
            return 32, mem[_1448 + _1456 + _1992 + 69 len ceil32(_2381) + 32]
        _2333 = mem[64]
        mem[64] = _1448 + _1456 + _1992 + 37
        mem[_1448 + _1456 + _1992 + 37] = 32
        _2397 = mem[_2333]
        mem[_1448 + _1456 + _1992 + 69] = mem[_2333]
        mem[_1448 + _1456 + _1992 + 101 len ceil32(_2397)] = mem[_2333 + 32 len ceil32(_2397)]
        var198001 = ceil32(_2397)
        if ceil32(_2397) > _2397:
            mem[_1448 + _1456 + _1992 + _2397 + 101] = 0
        return 32, mem[_1448 + _1456 + _1992 + 69 len ceil32(_2397) + 32]
    mem[mem[64] + _1456 + 32] = 0
    _2036 = mem[_993]
    mem[_1448 + _1456 + 32 len ceil32(mem[_993])] = mem[_993 + 32 len ceil32(mem[_993])]
    mem[_1448 + _1456 + _2036 + 32] = '.json'
    if ceil32(_2036) <= _2036:
        _2318 = mem[64]
        mem[64] = _1448 + _1456 + _2036 + 37
        mem[_1448 + _1456 + _2036 + 37] = 32
        _2382 = mem[_2318]
        mem[_1448 + _1456 + _2036 + 69] = mem[_2318]
        mem[_1448 + _1456 + _2036 + 101 len ceil32(_2382)] = mem[_2318 + 32 len ceil32(_2382)]
        var198001 = ceil32(_2382)
        if ceil32(_2382) > _2382:
            mem[_1448 + _1456 + _2036 + _2382 + 101] = 0
        return 32, mem[_1448 + _1456 + _2036 + 69 len ceil32(_2382) + 32]
    _2334 = mem[64]
    mem[64] = _1448 + _1456 + _2036 + 37
    mem[_1448 + _1456 + _2036 + 37] = 32
    _2398 = mem[_2334]
    mem[_1448 + _1456 + _2036 + 69] = mem[_2334]
    mem[_1448 + _1456 + _2036 + 101 len ceil32(_2398)] = mem[_2334 + 32 len ceil32(_2398)]
    var199001 = ceil32(_2398)
    if ceil32(_2398) > _2398:
        mem[_1448 + _1456 + _2036 + _2398 + 101] = 0
    return 32, mem[_1448 + _1456 + _2036 + 69 len ceil32(_2398) + 32]
}



}

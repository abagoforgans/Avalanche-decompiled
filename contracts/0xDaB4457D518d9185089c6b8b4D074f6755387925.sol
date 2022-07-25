contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor1;
address sub_6251be71Address;
address NFTAddress;
address sub_2d5e99b7Address;
address sub_312b8b74Address;
address sub_cec24836Address;

function sub_2d5e99b7(?) payable {
    return sub_2d5e99b7Address
}

function sub_312b8b74(?) payable {
    return sub_312b8b74Address
}

function sub_6251be71(?) payable {
    return sub_6251be71Address
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

function stake(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
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
        staticcall NFTAddress.0x2f745c59 with:
                gas gas_remaining wei
               args msg.sender, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(NFTAddress)
        call NFTAddress.0x5b500826 with:
             gas gas_remaining wei
            args ext_call.return_data[0], arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor1 = 1
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
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
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
    mem[64] = floor32(('cd', 4).length) + (2 * ceil32(return_data.size)) + 97
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
    t = mem[64] + 196
    while idx < ('cd', 4).length:
        mem[t] = mem[s + 24 len 8]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(('cd', 4).length) + (2 * ceil32(return_data.size)) + 133] = this.address
    mem[floor32(('cd', 4).length) + (2 * ceil32(return_data.size)) + 165] = cd[36]
    mem[floor32(('cd', 4).length) + (2 * ceil32(return_data.size)) + 197] = sub_cec24836Address
    mem[floor32(('cd', 4).length) + (2 * ceil32(return_data.size)) + 229] = msg.sender
    require ext_code.size(sub_2d5e99b7Address)
    call sub_2d5e99b7Address.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len floor32(('cd', 4).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 4).length) + -mem[64] + 289]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 1000) < cd[36]:
        revert with 'NH{q', 17
    mem[mem[64] + 36] = msg.sender
    require ext_code.size(sub_cec24836Address)
    call sub_cec24836Address.execute(uint256 arg1, address arg2) with:
         gas gas_remaining wei
        args ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 1000) - cd[36], msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[mem[64] + 4] = msg.sender
    require ext_code.size(NFTAddress)
    staticcall NFTAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _63 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_63] == mem[_63]
    if not mem[_63]:
        require ext_code.size(NFTAddress)
        call NFTAddress.0x40c10f19 with:
             gas gas_remaining wei
            args msg.sender, cd[36]
    else:
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = 0
        require ext_code.size(NFTAddress)
        staticcall NFTAddress.0x2f745c59 with:
                gas gas_remaining wei
               args msg.sender, 0
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _69 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_69] == mem[_69]
        mem[mem[64] + 4] = mem[_69]
        require ext_code.size(NFTAddress)
        call NFTAddress.0x5b500826 with:
             gas gas_remaining wei
            args mem[mem[64] + 4], cd[36]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor1 = 1
}



}

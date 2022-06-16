contract main {




// =====================  Runtime code  =====================


address owner;
uint256 cost;
uint256 maxMintAmount;
uint8 stor3; offset 176
uint16 reserve; offset 160
uint128 stor3; offset 176
address devAddress;
address sub_2619e2d0Address;
address nftAddress;
address sub_9c191ee5Address;
mapping of uint8 stor7;
uint256 maxId;
uint256 nextId;
mapping of uint256 minterBalances;
uint16 stor11;

function minterBalances(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return minterBalances[arg1]
}

function cost() payable {
    return cost
}

function maxMintAmount() payable {
    return maxMintAmount
}

function sub_2619e2d0(?) payable {
    return sub_2619e2d0Address
}

function devAddress() payable {
    return devAddress
}

function nft() payable {
    return nftAddress
}

function nextId() payable {
    return nextId
}

function owner() payable {
    return owner
}

function sub_9c191ee5(?) payable {
    return sub_9c191ee5Address
}

function isPaused() payable {
    return bool(uint8(stor3.field_176))
}

function maxId() payable {
    return maxId
}

function reserve() payable {
    return reserve
}

function sub_d83476d9(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor7[arg1])
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

function setCost(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    cost = arg1
}

function flipPauseStatus() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(80, 0, stor3.field_176) = Mask(80, 0, not bool(uint8(stor3.field_176)))
}

function setDevAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    devAddress = arg1
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

function sub_66d0b090(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == uint16(arg1)
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint16(arg1) > reserve:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The quantity exceeds the reserve.'
    if reserve < uint16(arg1):
        revert with 'NH{q', 17
    reserve = uint16(reserve - uint16(arg1))
    idx = 0
    while idx < uint16(arg1):
        mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
        mem[100] = address(arg2)
        mem[132] = nextId
        require ext_code.size(nftAddress)
        call nftAddress.0x40c10f19 with:
             gas gas_remaining wei
            args address(arg2), nextId
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if nextId == -1:
            revert with 'NH{q', 17
        nextId++
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function claim() payable {
    mem[0] = msg.sender
    mem[32] = 7
    if stor7[address(msg.sender)]:
        revert with 0, 'Already claimed'
    if maxId < reserve:
        revert with 'NH{q', 17
    if nextId > maxId - reserve:
        revert with 0, 'Drop is sold out.'
    mem[100] = msg.sender
    require ext_code.size(sub_9c191ee5Address)
    staticcall sub_9c191ee5Address.0xe37ef631 with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    idx = 0
    while idx < ext_call.return_data[0]:
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = idx
        require ext_code.size(sub_9c191ee5Address)
        staticcall sub_9c191ee5Address.0xd6a90179 with:
                gas gas_remaining wei
               args msg.sender, idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _29 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_29] == mem[_29]
        if mem[_29] > 2500:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _31 = mem[64]
        mem[mem[64]] = 1
        mem[mem[64] + 64] = 0
        mem[mem[64] + 96] = 0
        mem[64] = _31 + 192
        mem[_31 + 128] = nextId
        mem[_31 + 160] = stor11
        if 0 >= mem[_31]:
            revert with 'NH{q', 50
        mem[_31 + 32] = _31 + 128
        mem[_31 + 192] = 0xe4455d5d00000000000000000000000000000000000000000000000000000000
        mem[_31 + 196] = 32
        _36 = mem[_31]
        mem[_31 + 228] = mem[_31]
        idx = 0
        s = _31 + 32
        t = _31 + 260
        while idx < mem[_31]:
            _44 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_44 + 62 len 2]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        require ext_code.size(nftAddress)
        call nftAddress.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _31 + (64 * _36) + -mem[64] + 256]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(nftAddress)
        call nftAddress.0x40c10f19 with:
             gas gas_remaining wei
            args msg.sender, nextId
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if nextId == -1:
            revert with 'NH{q', 17
        nextId++
        stor7[address(msg.sender)] = 1
}

function mint(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if uint8(stor3.field_176):
        revert with 0, 'Drop is not active.'
    if arg1 <= 0:
        revert with 0, 'Mint amount cannot be 0.'
    mem[0] = msg.sender
    mem[32] = 10
    if arg1 > -minterBalances[address(msg.sender)] - 1:
        revert with 'NH{q', 17
    if arg1 + minterBalances[address(msg.sender)] > maxMintAmount:
        revert with 0, 'Exceeds max mint amount'
    if maxId < reserve:
        revert with 'NH{q', 17
    if nextId > maxId - reserve:
        revert with 0, 'Drop is sold out.'
    if cost and arg1 > -1 / cost:
        revert with 'NH{q', 17
    mem[100] = msg.sender
    mem[132] = devAddress
    mem[164] = cost * arg1
    require ext_code.size(sub_2619e2d0Address)
    call sub_2619e2d0Address.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, devAddress, cost * arg1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Transfer failed'
    idx = 0
    while idx < arg1:
        _31 = mem[64]
        mem[mem[64]] = 1
        mem[mem[64] + 64] = 0
        mem[mem[64] + 96] = 0
        mem[64] = _31 + 192
        mem[_31 + 128] = nextId
        mem[_31 + 160] = stor11
        if 0 >= mem[_31]:
            revert with 'NH{q', 50
        mem[_31 + 32] = _31 + 128
        mem[_31 + 192] = 0xe4455d5d00000000000000000000000000000000000000000000000000000000
        mem[_31 + 196] = 32
        _37 = mem[_31]
        mem[_31 + 228] = mem[_31]
        s = 0
        t = _31 + 32
        u = _31 + 260
        while s < mem[_31]:
            _44 = mem[t]
            mem[u] = mem[mem[t]]
            mem[u + 32] = mem[_44 + 62 len 2]
            s = s + 1
            t = t + 32
            u = u + 64
            continue 
        require ext_code.size(nftAddress)
        call nftAddress.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _31 + (64 * _37) + -mem[64] + 256]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = nextId
        require ext_code.size(nftAddress)
        call nftAddress.0x40c10f19 with:
             gas gas_remaining wei
            args msg.sender, nextId
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if nextId == -1:
            revert with 'NH{q', 17
        nextId++
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if minterBalances[address(msg.sender)] > -arg1 - 1:
        revert with 'NH{q', 17
    minterBalances[address(msg.sender)] += arg1
}



}

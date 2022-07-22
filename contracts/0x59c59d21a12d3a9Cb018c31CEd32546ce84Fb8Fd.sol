contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint256 sub_d3a5e62f;
uint256 sub_cc03a96f;
array of address entrants;
address sub_6a78a216Address;
uint8 stor5; offset 160
uint128 stor5; offset 160
address sub_a930e5b6Address;

function getTotalEntrants() payable {
    return entrants.length
}

function sub_6a78a216(?) payable {
    return sub_6a78a216Address
}

function owner() payable {
    return owner
}

function sub_a930e5b6(?) payable {
    return sub_a930e5b6Address
}

function sub_cc03a96f(?) payable {
    return sub_cc03a96f
}

function sub_d3a5e62f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_d3a5e62f[arg1]
}

function entrants(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < entrants.length
    return entrants[arg1]
}

function IS_OPEN() payable {
    return bool(uint8(stor5.field_160))
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

function sub_af71f9ac(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(96, 0, stor5.field_160) = Mask(96, 0, bool(arg1))
    emit 0x29cfa591: block.timestamp, bool(arg1)
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

function sub_ab5fce53(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(uint8(stor5.field_160)) != 1:
        revert with 0, 'RACE NOT OPEN'
    require ext_code.size(sub_a930e5b6Address)
    call sub_a930e5b6Address.0xda9425e2 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if bool(ext_call.return_data[0]) != 1:
        revert with 0, 'ROOSTR NOT YET RESERVED'
    require ext_code.size(sub_6a78a216Address)
    call sub_6a78a216Address.0x1e54ad00 with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not sub_d3a5e62f[address(msg.sender)]:
        entrants.length++
        entrants[entrants.length] = msg.sender
    if sub_d3a5e62f[address(msg.sender)] > -arg1 - 1:
        revert with 'NH{q', 17
    if sub_cc03a96f > -arg1 - 1:
        revert with 'NH{q', 17
    sub_cc03a96f += arg1
    sub_d3a5e62f[address(msg.sender)] += arg1
    emit 0xb32c5a2c: block.timestamp, msg.sender, arg1, sub_d3a5e62f[address(msg.sender)] + arg1
}

function sub_478e8dad(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 >= entrants.length:
        revert with 0, 'TOINDEX EXCEEDS ENTRANTS LENGTH'
    if arg2 < arg1:
        revert with 'NH{q', 17
    if arg2 - arg1 > -2:
        revert with 'NH{q', 17
    if arg2 + -arg1 + 1 > test266151307():
        revert with 'NH{q', 65
    mem[96] = arg2 + -arg1 + 1
    mem[64] = (32 * arg2 + -arg1 + 1) + 128
    if not arg2 + -arg1 + 1:
        idx = arg1
        while idx <= arg2:
            if idx >= entrants.length:
                revert with 'NH{q', 50
            mem[0] = entrants[idx]
            mem[32] = 1
            _29 = mem[64]
            mem[64] = mem[64] + 64
            mem[_29] = entrants[idx]
            mem[_29 + 32] = sub_d3a5e62f[stor3[idx]]
            if idx < arg1:
                revert with 'NH{q', 17
            if idx - arg1 >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx - arg1) + 128] = _29
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _26 = mem[64]
        mem[mem[64]] = 32
        _30 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _30:
            _47 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_47 + 32]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        return memory
          from mem[64]
           len _26 + (64 * _30) + -mem[64] + 64
    mem[64] = (32 * arg2 + -arg1 + 1) + 192
    mem[(32 * arg2 + -arg1 + 1) + 128] = 0
    mem[(32 * arg2 + -arg1 + 1) + 160] = 0
    mem[var40001] = (32 * arg2 + -arg1 + 1) + 128
    s = var40001
    idx = var40002
    while idx - 1:
        mem[64] = mem[64] + 64
        mem[(32 * arg2 + -arg1 + 1) + 128] = 0
        mem[(32 * arg2 + -arg1 + 1) + 160] = 0
        mem[s + 32] = (32 * arg2 + -arg1 + 1) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = arg1
    while idx <= arg2:
        if idx >= entrants.length:
            revert with 'NH{q', 50
        mem[0] = entrants[idx]
        mem[32] = 1
        _64 = mem[64]
        mem[64] = mem[64] + 64
        mem[_64] = entrants[idx]
        mem[_64 + 32] = sub_d3a5e62f[stor3[idx]]
        if idx < arg1:
            revert with 'NH{q', 17
        if idx - arg1 >= mem[96]:
            revert with 'NH{q', 50
        mem[(32 * idx - arg1) + 128] = _64
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    _61 = mem[64]
    mem[mem[64]] = 32
    _65 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _65:
        _71 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_71 + 32]
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    return memory
      from mem[64]
       len _61 + (64 * _65) + -mem[64] + 64
}



}

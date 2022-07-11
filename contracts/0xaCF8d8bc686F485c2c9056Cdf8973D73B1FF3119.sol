contract main {




// =====================  Runtime code  =====================


address owner;
address chefAddress;
address upgradeAddress;
address sub_c92a661aAddress;
address pizzaAddress;
address sub_3efca237Address;
uint256 sub_58d347d4;
mapping of uint8 stor7;

function chef() payable {
    return chefAddress
}

function sub_3efca237(?) payable {
    return sub_3efca237Address
}

function sub_58d347d4(?) payable {
    return sub_58d347d4
}

function pizza() payable {
    return pizzaAddress
}

function owner() payable {
    return owner
}

function sub_c92a661a(?) payable {
    return sub_c92a661aAddress
}

function upgrade() payable {
    return upgradeAddress
}

function sub_eea2d26a(?) payable {
    require calldata.size - 4 >= 32
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

function sub_47ed4997(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = arg1
    while idx <= arg2:
        staticcall sub_c92a661aAddress.0x1d142b6b with:
                gas gas_remaining wei
               args idx
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _15 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _16 = mem[_15]
        require mem[_15] == mem[_15 + 12 len 20]
        require mem[_15 + 64] == bool(mem[_15 + 64])
        if mem[_15 + 64]:
            mem[mem[64] + 4] = mem[_15 + 12 len 20]
            require ext_code.size(pizzaAddress)
            call pizzaAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], sub_58d347d4
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = sub_3efca237Address
            mem[mem[64] + 36] = address(_16)
            mem[mem[64] + 68] = idx
            require ext_code.size(upgradeAddress)
            call upgradeAddress.0x23b872dd with:
                 gas gas_remaining wei
                args sub_3efca237Address, address(_16), idx
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if not idx + 1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_fc999b1f(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = arg1
    while idx <= arg2:
        staticcall sub_c92a661aAddress.0x8bdc141a with:
                gas gas_remaining wei
               args idx
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _44 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _45 = mem[_44]
        require mem[_44] == mem[_44 + 12 len 20]
        require mem[_44 + 96] == bool(mem[_44 + 96])
        if not mem[_44 + 96]:
            staticcall sub_c92a661aAddress.0xaace2f99 with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _52 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _59 = mem[_52]
            require mem[_52] == mem[_52 + 12 len 20]
            require mem[_52 + 96] == bool(mem[_52 + 96])
            if mem[_52 + 96]:
                mem[mem[64] + 4] = mem[_52 + 12 len 20]
                require ext_code.size(pizzaAddress)
                call pizzaAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], sub_58d347d4
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = sub_3efca237Address
                mem[mem[64] + 36] = address(_59)
                mem[mem[64] + 68] = idx
                require ext_code.size(chefAddress)
                call chefAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args sub_3efca237Address, address(_59), idx
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            if stor7[idx]:
                revert with 0, 'pizza already claimed'
            mem[0] = idx
            mem[32] = 7
            stor7[idx] = 1
            _54 = mem[64]
            mem[mem[64]] = 1
            mem[64] = mem[64] + 64
            if 0 >= mem[_54]:
                revert with 0, 50
            mem[_54 + 32] = idx
            mem[_54 + 64] = 0x44188b4e00000000000000000000000000000000000000000000000000000000
            mem[_54 + 68] = 32
            mem[_54 + 100] = mem[_54]
            s = 0
            t = _54 + 132
            u = _54 + 32
            while s < mem[_54]:
                mem[t] = mem[u]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            staticcall sub_c92a661aAddress.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _54 + (32 * mem[_54]) + -mem[64] + 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _83 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _84 = mem[_83]
            require mem[_83] <= test266151307()
            require _83 + mem[_83] + 31 < _83 + return_data.size
            _85 = mem[_83 + mem[_83]]
            if mem[_83 + mem[_83]] > test266151307():
                revert with 0, 65
            if _83 + ceil32(return_data.size) + ceil32(32 * mem[_83 + mem[_83]]) + 1 > test266151307() or ceil32(32 * mem[_83 + mem[_83]]) + 1 < 0:
                revert with 0, 65
            mem[64] = _83 + ceil32(return_data.size) + ceil32(32 * mem[_83 + mem[_83]]) + 1
            mem[_83 + ceil32(return_data.size)] = _85
            require (32 * _85) + _84 + 32 <= return_data.size
            t = _83 + ceil32(return_data.size) + 32
            s = _83 + _84 + 32
            while s < (32 * _85) + _83 + _84 + 32:
                mem[t] = mem[s]
                t = t + 32
                s = s + 32
                continue 
            if 0 >= _85:
                revert with 0, 50
            if mem[_83 + ceil32(return_data.size) + 32] > 0x333333333333333333333333333333333333333333333333333333333333333:
                revert with 0, 17
            if 80 * mem[_83 + ceil32(return_data.size) + 32] / 100 > !sub_58d347d4:
                revert with 0, 17
            require ext_code.size(pizzaAddress)
            call pizzaAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args address(_45), (80 * mem[_83 + ceil32(return_data.size) + 32] / 100) + sub_58d347d4
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = sub_3efca237Address
            mem[mem[64] + 36] = address(_45)
            mem[mem[64] + 68] = idx
            require ext_code.size(chefAddress)
            call chefAddress.0x23b872dd with:
                 gas gas_remaining wei
                args sub_3efca237Address, address(_45), idx
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if not idx + 1:
            revert with 0, 17
        idx = idx + 1
        continue 
}



}

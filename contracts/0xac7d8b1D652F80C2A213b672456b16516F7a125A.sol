contract main {




// =====================  Runtime code  =====================


address owner;
address WAVAXAddress;
mapping of uint32 sub_40c3e5db;
mapping of uint8 stor3;
mapping of uint8 stor4;

function sub_40c3e5db(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return Mask(32, 224, uint32(sub_40c3e5db[arg1]))
}

function WAVAX() payable {
    return WAVAXAddress
}

function sub_743c998e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor3[arg1])
}

function owner() payable {
    return owner
}

function whitelist(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor4[arg1])
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

function sub_8d222e0d(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == bool(arg1)
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor3[address(arg2)] = uint8(bool(arg1))
}

function setWhitelist(bool arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor4[address(arg2)] = uint8(arg1)
}

function sub_1d28214d(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == Mask(32, 224, arg1)
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint256(sub_40c3e5db[address(arg2)]) = uint32(arg1) >> 224 or Mask(224, 32, uint256(sub_40c3e5db[address(arg2)]))
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

function sub_c2a9c7aa(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(WAVAXAddress)
    call WAVAXAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_be9b6ab7(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(WAVAXAddress)
    call WAVAXAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_2170d251(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if (32 * ('cd', 4).length) + 128 > test266151307() or (32 * ('cd', 4).length) + 128 < 96:
        revert with 'NH{q', 65
    mem[64] = (32 * ('cd', 4).length) + 128
    mem[96] = ('cd', 4).length
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require calldata.size + -cd[4] + -cd[s] - 36 >= 192
        _39 = mem[64]
        if mem[64] + 192 > test266151307() or mem[64] + 192 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 192
        require cd[(cd[4] + cd[s] + 36)] == address(cd[(cd[4] + cd[s] + 36)])
        mem[_39] = cd[(cd[4] + cd[s] + 36)]
        require cd[(cd[4] + cd[s] + 68)] == address(cd[(cd[4] + cd[s] + 68)])
        mem[_39 + 32] = cd[(cd[4] + cd[s] + 68)]
        require cd[(cd[4] + cd[s] + 100)] == address(cd[(cd[4] + cd[s] + 100)])
        mem[_39 + 64] = cd[(cd[4] + cd[s] + 100)]
        require cd[(cd[4] + cd[s] + 132)] <= test266151307()
        require cd[4] + cd[s] + cd[(cd[4] + cd[s] + 132)] + 67 < calldata.size
        if cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 132)] + 36)] > test266151307():
            revert with 'NH{q', 65
        _54 = mem[64]
        if mem[64] + (32 * cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 132)] + 36)]) + 32 > test266151307() or mem[64] + (32 * cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 132)] + 36)]) + 32 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + (32 * cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 132)] + 36)]) + 32
        mem[_54] = cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 132)] + 36)]
        require cd[4] + cd[s] + cd[(cd[4] + cd[s] + 132)] + (32 * cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 132)] + 36)]) + 68 <= calldata.size
        u = 0
        v = cd[4] + cd[s] + cd[(cd[4] + cd[s] + 132)] + 68
        w = _54 + 32
        while u < cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 132)] + 36)]:
            require cd[v] == address(cd[v])
            mem[w] = cd[v]
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        mem[_39 + 96] = _54
        require cd[(cd[4] + cd[s] + 164)] == cd[(cd[4] + cd[s] + 164)]
        mem[_39 + 128] = cd[(cd[4] + cd[s] + 164)]
        require cd[(cd[4] + cd[s] + 196)] == cd[(cd[4] + cd[s] + 196)]
        mem[_39 + 160] = cd[(cd[4] + cd[s] + 196)]
        mem[t] = _39
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] == cd[36]
    mem[0] = msg.sender
    mem[32] = 4
    require stor4[address(msg.sender)]
    mem[mem[64] + 4] = this.address
    require ext_code.size(WAVAXAddress)
    staticcall WAVAXAddress.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _43 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_43] == mem[_43]
    require cd[36] <= mem[_43]
    _76 = mem[96]
    idx = 0
    while idx < _76:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _78 = mem[(32 * idx) + 128]
        mem[0] = mem[mem[(32 * idx) + 128] + 76 len 20]
        mem[32] = 3
        require stor3[mem[mem[(32 * idx) + 128] + 76 len 20]]
        _81 = mem[mem[(32 * idx) + 128]]
        _83 = mem[mem[(32 * idx) + 128] + 128]
        mem[mem[64] + 4] = mem[mem[(32 * idx) + 128] + 76 len 20]
        mem[mem[64] + 36] = _83
        require ext_code.size(address(_81))
        call address(_81).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args mem[mem[64] + 4], _83
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _86 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_86] == bool(mem[_86])
        _88 = mem[_78 + 64]
        mem[0] = mem[_78 + 76 len 20]
        mem[32] = 2
        _92 = mem[_78 + 160]
        _93 = mem[_78 + 96]
        _94 = mem[64]
        mem[mem[64] + 36] = mem[_78 + 128]
        mem[mem[64] + 68] = _92
        mem[mem[64] + 100] = 160
        _95 = mem[_93]
        mem[mem[64] + 196] = mem[_93]
        s = 0
        t = _93 + 32
        u = mem[64] + 228
        while s < _95:
            mem[u] = mem[t + 12 len 20]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        mem[mem[64] + 132] = this.address
        mem[mem[64] + 164] = block.timestamp
        _107 = mem[64]
        mem[mem[64]] = (32 * _95) + 196
        mem[64] = mem[64] + (32 * _95) + 228
        mem[_107 + 32] = mem[_107 + 36 len 28] or Mask(32, 224, uint32(sub_40c3e5db[mem[0]]))
        _110 = mem[_107]
        s = 0
        while s < _110:
            mem[_94 + (32 * _95) + s + 228] = mem[_107 + s + 32]
            s = s + 32
            continue 
        if ceil32(_110) <= _110:
            call address(_88).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _94 + (32 * _95) + _110 + -mem[64] + 224]
            if return_data.size:
                _118 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_118] = return_data.size
                mem[_118 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        else:
            mem[_94 + (32 * _95) + _110 + 228] = 0
            call address(_88).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _94 + (32 * _95) + _110 + -mem[64] + 224]
            if return_data.size:
                _120 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_120] = return_data.size
                mem[_120 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        require ext_call.success
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}



}

contract main {




// =====================  Runtime code  =====================


address owner;
address sub_30f3d750Address;
address sub_aef9fa69Address;
address sub_0984a010Address;
address sub_985a64beAddress;
address sub_9c8b4066Address;
address sub_1abec10dAddress;
address sub_ae3beb48Address;

function sub_0984a010(?) payable {
    return sub_0984a010Address
}

function sub_1abec10d(?) payable {
    return sub_1abec10dAddress
}

function sub_30f3d750(?) payable {
    return sub_30f3d750Address
}

function owner() payable {
    return owner
}

function sub_985a64be(?) payable {
    return sub_985a64beAddress
}

function sub_9c8b4066(?) payable {
    return sub_9c8b4066Address
}

function sub_ae3beb48(?) payable {
    return sub_ae3beb48Address
}

function sub_aef9fa69(?) payable {
    return sub_aef9fa69Address
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

function sub_8450a313(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_985a64beAddress = address(arg1)
    sub_9c8b4066Address = address(arg2)
    sub_1abec10dAddress = address(arg3)
}

function sub_afb02d9c(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_30f3d750Address = address(arg1)
    sub_aef9fa69Address = address(arg2)
    sub_0984a010Address = address(arg3)
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

function sub_ca3c17d0(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[96] = 0xea85b1e500000000000000000000000000000000000000000000000000000000
    mem[100] = address(arg1)
    staticcall sub_ae3beb48Address.0xea85b1e5 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], address(arg1) << 64
    require mem[96 len 4], address(arg1) << 64 <= test266151307()
    require mem[96 len 4], address(arg1) << 64 + 127 < return_data.size + 96
    _5 = mem[mem[96 len 4], address(arg1) << 64 + 96]
    if mem[mem[96 len 4], address(arg1) << 64 + 96] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[mem[96 len 4], address(arg1) << 64 + 96]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], address(arg1) << 64 + 96]) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], address(arg1) << 64 + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + (32 * _5) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(32 * _5)] = mem[_4 + 128 len ceil32(32 * _5)]
    idx = 0
    s = 0
    while uint64(idx) < _5:
        if uint64(idx) >= mem[ceil32(return_data.size) + 96]:
            revert with 0, 50
        _30 = mem[(32 * uint64(idx)) + ceil32(return_data.size) + 128]
        mem[mem[64] + 4] = mem[(32 * uint64(idx)) + ceil32(return_data.size) + 128]
        staticcall sub_ae3beb48Address.0x8db7a464 with:
                gas gas_remaining wei
               args _30
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _34 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_34] == mem[_34 + 24 len 8]
        if block.timestamp < mem[_34 + 24 len 8]:
            revert with 0, 17
        if s:
            if s <= block.timestamp - mem[_34 + 24 len 8]:
                if uint64(idx) == test266151307():
                    revert with 0, 17
                idx = uint64(idx) + 1
                s = s
                continue 
        if uint64(idx) == test266151307():
            revert with 0, 17
        idx = uint64(idx) + 1
        s = block.timestamp - mem[_34 + 24 len 8]
        continue 
    return s
}

function sub_3a01309a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[96] = 0x19593c2b00000000000000000000000000000000000000000000000000000000
    mem[100] = address(arg1)
    staticcall sub_9c8b4066Address.0x19593c2b with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], address(arg1) << 64
    require mem[96 len 4], address(arg1) << 64 <= test266151307()
    require mem[96 len 4], address(arg1) << 64 + 127 < return_data.size + 96
    _5 = mem[mem[96 len 4], address(arg1) << 64 + 96]
    if mem[mem[96 len 4], address(arg1) << 64 + 96] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[mem[96 len 4], address(arg1) << 64 + 96]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], address(arg1) << 64 + 96]) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], address(arg1) << 64 + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + (32 * _5) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(32 * _5)] = mem[_4 + 128 len ceil32(32 * _5)]
    idx = 0
    s = 0
    while uint64(idx) < _5:
        if uint64(idx) >= mem[ceil32(return_data.size) + 96]:
            revert with 0, 50
        _128 = mem[(32 * uint64(idx)) + ceil32(return_data.size) + 128]
        mem[mem[64]] = 0xde5fa9ce00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _128
        staticcall sub_9c8b4066Address.0xde5fa9ce with:
                gas gas_remaining wei
               args _128
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _132 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _133 = mem[_132]
        require mem[_132] <= test266151307()
        require return_data.size - mem[_132] >= 160
        if not bool(_132 + ceil32(return_data.size) + 160 <= test266151307()):
            revert with 0, 65
        mem[64] = _132 + ceil32(return_data.size) + 160
        _135 = mem[_132 + _133]
        require mem[_132 + _133] <= test266151307()
        require _132 + _133 + mem[_132 + _133] + 31 < _132 + return_data.size
        _136 = mem[_132 + _133 + mem[_132 + _133]]
        if mem[_132 + _133 + mem[_132 + _133]] > test266151307():
            revert with 0, 65
        if ceil32(ceil32(mem[_132 + _133 + mem[_132 + _133]])) + 161 < 160 or _132 + ceil32(return_data.size) + ceil32(ceil32(mem[_132 + _133 + mem[_132 + _133]])) + 161 > test266151307():
            revert with 0, 65
        mem[64] = _132 + ceil32(return_data.size) + ceil32(ceil32(mem[_132 + _133 + mem[_132 + _133]])) + 161
        mem[_132 + ceil32(return_data.size) + 160] = _136
        require _133 + _135 + _136 + 32 <= return_data.size
        t = 0
        while t < _136:
            mem[t + _132 + ceil32(return_data.size) + 192] = mem[t + _132 + _133 + _135 + 32]
            t = t + 32
            continue 
        if ceil32(_136) <= _136:
            mem[_132 + ceil32(return_data.size)] = _132 + ceil32(return_data.size) + 160
            _184 = mem[_132 + _133 + 32]
            require mem[_132 + _133 + 32] <= test266151307()
            require _132 + _133 + mem[_132 + _133 + 32] + 31 < _132 + return_data.size
            _186 = mem[_132 + _133 + mem[_132 + _133 + 32]]
            if mem[_132 + _133 + mem[_132 + _133 + 32]] > test266151307():
                revert with 0, 65
            _188 = mem[64]
            if mem[64] + ceil32(ceil32(mem[_132 + _133 + mem[_132 + _133 + 32]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_132 + _133 + mem[_132 + _133 + 32]])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(ceil32(mem[_132 + _133 + mem[_132 + _133 + 32]])) + 1
            mem[_188] = _186
            require _133 + _184 + _186 + 32 <= return_data.size
            t = 0
            while t < _186:
                mem[t + _188 + 32] = mem[t + _132 + _133 + _184 + 32]
                t = t + 32
                continue 
            if ceil32(_186) <= _186:
                mem[_132 + ceil32(return_data.size) + 32] = _188
                mem[_132 + ceil32(return_data.size) + 64] = mem[_132 + _133 + 64]
                require mem[_132 + _133 + 96] == mem[_132 + _133 + 120 len 8]
                mem[_132 + ceil32(return_data.size) + 96] = mem[_132 + _133 + 96]
                require mem[_132 + _133 + 128] == mem[_132 + _133 + 152 len 8]
                mem[_132 + ceil32(return_data.size) + 128] = mem[_132 + _133 + 128]
                _242 = mem[_132 + ceil32(return_data.size) + 64]
                mem[mem[64] + 4] = mem[_132 + ceil32(return_data.size) + 64]
                staticcall sub_aef9fa69Address.0x1ee20504 with:
                        gas gas_remaining wei
                       args _242
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _252 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_252]:
                    if block.timestamp < mem[_252]:
                        revert with 0, 17
                    if s:
                        if s <= block.timestamp - mem[_252]:
                            if uint64(idx) == test266151307():
                                revert with 0, 17
                            idx = uint64(idx) + 1
                            s = s
                            continue 
                    if uint64(idx) == test266151307():
                        revert with 0, 17
                    idx = uint64(idx) + 1
                    s = block.timestamp - mem[_252]
                    continue 
            else:
                mem[_188 + _186 + 32] = 0
                mem[_132 + ceil32(return_data.size) + 32] = _188
                mem[_132 + ceil32(return_data.size) + 64] = mem[_132 + _133 + 64]
                require mem[_132 + _133 + 96] == mem[_132 + _133 + 120 len 8]
                mem[_132 + ceil32(return_data.size) + 96] = mem[_132 + _133 + 96]
                require mem[_132 + _133 + 128] == mem[_132 + _133 + 152 len 8]
                mem[_132 + ceil32(return_data.size) + 128] = mem[_132 + _133 + 128]
                _247 = mem[_132 + ceil32(return_data.size) + 64]
                mem[mem[64] + 4] = mem[_132 + ceil32(return_data.size) + 64]
                staticcall sub_aef9fa69Address.0x1ee20504 with:
                        gas gas_remaining wei
                       args _247
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _256 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_256]:
                    if block.timestamp < mem[_256]:
                        revert with 0, 17
                    if s:
                        if s <= block.timestamp - mem[_256]:
                            if uint64(idx) == test266151307():
                                revert with 0, 17
                            idx = uint64(idx) + 1
                            s = s
                            continue 
                    if uint64(idx) == test266151307():
                        revert with 0, 17
                    idx = uint64(idx) + 1
                    s = block.timestamp - mem[_256]
                    continue 
        else:
            mem[_132 + ceil32(return_data.size) + _136 + 192] = 0
            mem[_132 + ceil32(return_data.size)] = _132 + ceil32(return_data.size) + 160
            _185 = mem[_132 + _133 + 32]
            require mem[_132 + _133 + 32] <= test266151307()
            require _132 + _133 + mem[_132 + _133 + 32] + 31 < _132 + return_data.size
            _187 = mem[_132 + _133 + mem[_132 + _133 + 32]]
            if mem[_132 + _133 + mem[_132 + _133 + 32]] > test266151307():
                revert with 0, 65
            _189 = mem[64]
            if mem[64] + ceil32(ceil32(mem[_132 + _133 + mem[_132 + _133 + 32]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_132 + _133 + mem[_132 + _133 + 32]])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(ceil32(mem[_132 + _133 + mem[_132 + _133 + 32]])) + 1
            mem[_189] = _187
            require _133 + _185 + _187 + 32 <= return_data.size
            t = 0
            while t < _187:
                mem[t + _189 + 32] = mem[t + _132 + _133 + _185 + 32]
                t = t + 32
                continue 
            if ceil32(_187) <= _187:
                mem[_132 + ceil32(return_data.size) + 32] = _189
                mem[_132 + ceil32(return_data.size) + 64] = mem[_132 + _133 + 64]
                require mem[_132 + _133 + 96] == mem[_132 + _133 + 120 len 8]
                mem[_132 + ceil32(return_data.size) + 96] = mem[_132 + _133 + 96]
                require mem[_132 + _133 + 128] == mem[_132 + _133 + 152 len 8]
                mem[_132 + ceil32(return_data.size) + 128] = mem[_132 + _133 + 128]
                _244 = mem[_132 + ceil32(return_data.size) + 64]
                mem[mem[64] + 4] = mem[_132 + ceil32(return_data.size) + 64]
                staticcall sub_aef9fa69Address.0x1ee20504 with:
                        gas gas_remaining wei
                       args _244
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _254 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_254]:
                    if block.timestamp < mem[_254]:
                        revert with 0, 17
                    if s:
                        if s <= block.timestamp - mem[_254]:
                            if uint64(idx) == test266151307():
                                revert with 0, 17
                            idx = uint64(idx) + 1
                            s = s
                            continue 
                    if uint64(idx) == test266151307():
                        revert with 0, 17
                    idx = uint64(idx) + 1
                    s = block.timestamp - mem[_254]
                    continue 
            else:
                mem[_189 + _187 + 32] = 0
                mem[_132 + ceil32(return_data.size) + 32] = _189
                mem[_132 + ceil32(return_data.size) + 64] = mem[_132 + _133 + 64]
                require mem[_132 + _133 + 96] == mem[_132 + _133 + 120 len 8]
                mem[_132 + ceil32(return_data.size) + 96] = mem[_132 + _133 + 96]
                require mem[_132 + _133 + 128] == mem[_132 + _133 + 152 len 8]
                mem[_132 + ceil32(return_data.size) + 128] = mem[_132 + _133 + 128]
                _250 = mem[_132 + ceil32(return_data.size) + 64]
                mem[mem[64] + 4] = mem[_132 + ceil32(return_data.size) + 64]
                staticcall sub_aef9fa69Address.0x1ee20504 with:
                        gas gas_remaining wei
                       args _250
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _257 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_257]:
                    if block.timestamp < mem[_257]:
                        revert with 0, 17
                    if s:
                        if s <= block.timestamp - mem[_257]:
                            if uint64(idx) == test266151307():
                                revert with 0, 17
                            idx = uint64(idx) + 1
                            s = s
                            continue 
                    if uint64(idx) == test266151307():
                        revert with 0, 17
                    idx = uint64(idx) + 1
                    s = block.timestamp - mem[_257]
                    continue 
        if block.timestamp < mem[_132 + ceil32(return_data.size) + 120 len 8]:
            revert with 0, 17
        if s:
            if s <= block.timestamp - mem[_132 + ceil32(return_data.size) + 120 len 8]:
                if uint64(idx) == test266151307():
                    revert with 0, 17
                idx = uint64(idx) + 1
                s = s
                continue 
        if uint64(idx) == test266151307():
            revert with 0, 17
        idx = uint64(idx) + 1
        s = block.timestamp - mem[_132 + ceil32(return_data.size) + 120 len 8]
        continue 
    return s
}

function sub_79c948d1(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[96] = 0xa085fa9600000000000000000000000000000000000000000000000000000000
    mem[100] = address(arg1)
    staticcall sub_1abec10dAddress.0xa085fa96 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], address(arg1) << 64
    require mem[96 len 4], address(arg1) << 64 <= test266151307()
    require mem[96 len 4], address(arg1) << 64 + 127 < return_data.size + 96
    _5 = mem[mem[96 len 4], address(arg1) << 64 + 96]
    if mem[mem[96 len 4], address(arg1) << 64 + 96] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[mem[96 len 4], address(arg1) << 64 + 96]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], address(arg1) << 64 + 96]) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], address(arg1) << 64 + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + (32 * _5) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(32 * _5)] = mem[_4 + 128 len ceil32(32 * _5)]
    idx = 0
    s = 0
    while uint64(idx) < _5:
        if uint64(idx) >= mem[ceil32(return_data.size) + 96]:
            revert with 0, 50
        _128 = mem[(32 * uint64(idx)) + ceil32(return_data.size) + 128]
        mem[mem[64]] = 0xaa5c1f9a00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _128
        staticcall sub_1abec10dAddress.0xaa5c1f9a with:
                gas gas_remaining wei
               args _128
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _132 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _133 = mem[_132]
        require mem[_132] <= test266151307()
        require return_data.size - mem[_132] >= 160
        if not bool(_132 + ceil32(return_data.size) + 160 <= test266151307()):
            revert with 0, 65
        mem[64] = _132 + ceil32(return_data.size) + 160
        _135 = mem[_132 + _133]
        require mem[_132 + _133] <= test266151307()
        require _132 + _133 + mem[_132 + _133] + 31 < _132 + return_data.size
        _136 = mem[_132 + _133 + mem[_132 + _133]]
        if mem[_132 + _133 + mem[_132 + _133]] > test266151307():
            revert with 0, 65
        if ceil32(ceil32(mem[_132 + _133 + mem[_132 + _133]])) + 161 < 160 or _132 + ceil32(return_data.size) + ceil32(ceil32(mem[_132 + _133 + mem[_132 + _133]])) + 161 > test266151307():
            revert with 0, 65
        mem[64] = _132 + ceil32(return_data.size) + ceil32(ceil32(mem[_132 + _133 + mem[_132 + _133]])) + 161
        mem[_132 + ceil32(return_data.size) + 160] = _136
        require _133 + _135 + _136 + 32 <= return_data.size
        t = 0
        while t < _136:
            mem[t + _132 + ceil32(return_data.size) + 192] = mem[t + _132 + _133 + _135 + 32]
            t = t + 32
            continue 
        if ceil32(_136) <= _136:
            mem[_132 + ceil32(return_data.size)] = _132 + ceil32(return_data.size) + 160
            _184 = mem[_132 + _133 + 32]
            require mem[_132 + _133 + 32] <= test266151307()
            require _132 + _133 + mem[_132 + _133 + 32] + 31 < _132 + return_data.size
            _186 = mem[_132 + _133 + mem[_132 + _133 + 32]]
            if mem[_132 + _133 + mem[_132 + _133 + 32]] > test266151307():
                revert with 0, 65
            _188 = mem[64]
            if mem[64] + ceil32(ceil32(mem[_132 + _133 + mem[_132 + _133 + 32]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_132 + _133 + mem[_132 + _133 + 32]])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(ceil32(mem[_132 + _133 + mem[_132 + _133 + 32]])) + 1
            mem[_188] = _186
            require _133 + _184 + _186 + 32 <= return_data.size
            t = 0
            while t < _186:
                mem[t + _188 + 32] = mem[t + _132 + _133 + _184 + 32]
                t = t + 32
                continue 
            if ceil32(_186) <= _186:
                mem[_132 + ceil32(return_data.size) + 32] = _188
                mem[_132 + ceil32(return_data.size) + 64] = mem[_132 + _133 + 64]
                require mem[_132 + _133 + 96] == mem[_132 + _133 + 120 len 8]
                mem[_132 + ceil32(return_data.size) + 96] = mem[_132 + _133 + 96]
                require mem[_132 + _133 + 128] == mem[_132 + _133 + 152 len 8]
                mem[_132 + ceil32(return_data.size) + 128] = mem[_132 + _133 + 128]
                _242 = mem[_132 + ceil32(return_data.size) + 64]
                mem[mem[64] + 4] = mem[_132 + ceil32(return_data.size) + 64]
                staticcall sub_0984a010Address.0x1ee20504 with:
                        gas gas_remaining wei
                       args _242
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _252 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_252]:
                    if block.timestamp < mem[_252]:
                        revert with 0, 17
                    if s:
                        if s <= block.timestamp - mem[_252]:
                            if uint64(idx) == test266151307():
                                revert with 0, 17
                            idx = uint64(idx) + 1
                            s = s
                            continue 
                    if uint64(idx) == test266151307():
                        revert with 0, 17
                    idx = uint64(idx) + 1
                    s = block.timestamp - mem[_252]
                    continue 
            else:
                mem[_188 + _186 + 32] = 0
                mem[_132 + ceil32(return_data.size) + 32] = _188
                mem[_132 + ceil32(return_data.size) + 64] = mem[_132 + _133 + 64]
                require mem[_132 + _133 + 96] == mem[_132 + _133 + 120 len 8]
                mem[_132 + ceil32(return_data.size) + 96] = mem[_132 + _133 + 96]
                require mem[_132 + _133 + 128] == mem[_132 + _133 + 152 len 8]
                mem[_132 + ceil32(return_data.size) + 128] = mem[_132 + _133 + 128]
                _247 = mem[_132 + ceil32(return_data.size) + 64]
                mem[mem[64] + 4] = mem[_132 + ceil32(return_data.size) + 64]
                staticcall sub_0984a010Address.0x1ee20504 with:
                        gas gas_remaining wei
                       args _247
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _256 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_256]:
                    if block.timestamp < mem[_256]:
                        revert with 0, 17
                    if s:
                        if s <= block.timestamp - mem[_256]:
                            if uint64(idx) == test266151307():
                                revert with 0, 17
                            idx = uint64(idx) + 1
                            s = s
                            continue 
                    if uint64(idx) == test266151307():
                        revert with 0, 17
                    idx = uint64(idx) + 1
                    s = block.timestamp - mem[_256]
                    continue 
        else:
            mem[_132 + ceil32(return_data.size) + _136 + 192] = 0
            mem[_132 + ceil32(return_data.size)] = _132 + ceil32(return_data.size) + 160
            _185 = mem[_132 + _133 + 32]
            require mem[_132 + _133 + 32] <= test266151307()
            require _132 + _133 + mem[_132 + _133 + 32] + 31 < _132 + return_data.size
            _187 = mem[_132 + _133 + mem[_132 + _133 + 32]]
            if mem[_132 + _133 + mem[_132 + _133 + 32]] > test266151307():
                revert with 0, 65
            _189 = mem[64]
            if mem[64] + ceil32(ceil32(mem[_132 + _133 + mem[_132 + _133 + 32]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_132 + _133 + mem[_132 + _133 + 32]])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(ceil32(mem[_132 + _133 + mem[_132 + _133 + 32]])) + 1
            mem[_189] = _187
            require _133 + _185 + _187 + 32 <= return_data.size
            t = 0
            while t < _187:
                mem[t + _189 + 32] = mem[t + _132 + _133 + _185 + 32]
                t = t + 32
                continue 
            if ceil32(_187) <= _187:
                mem[_132 + ceil32(return_data.size) + 32] = _189
                mem[_132 + ceil32(return_data.size) + 64] = mem[_132 + _133 + 64]
                require mem[_132 + _133 + 96] == mem[_132 + _133 + 120 len 8]
                mem[_132 + ceil32(return_data.size) + 96] = mem[_132 + _133 + 96]
                require mem[_132 + _133 + 128] == mem[_132 + _133 + 152 len 8]
                mem[_132 + ceil32(return_data.size) + 128] = mem[_132 + _133 + 128]
                _244 = mem[_132 + ceil32(return_data.size) + 64]
                mem[mem[64] + 4] = mem[_132 + ceil32(return_data.size) + 64]
                staticcall sub_0984a010Address.0x1ee20504 with:
                        gas gas_remaining wei
                       args _244
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _254 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_254]:
                    if block.timestamp < mem[_254]:
                        revert with 0, 17
                    if s:
                        if s <= block.timestamp - mem[_254]:
                            if uint64(idx) == test266151307():
                                revert with 0, 17
                            idx = uint64(idx) + 1
                            s = s
                            continue 
                    if uint64(idx) == test266151307():
                        revert with 0, 17
                    idx = uint64(idx) + 1
                    s = block.timestamp - mem[_254]
                    continue 
            else:
                mem[_189 + _187 + 32] = 0
                mem[_132 + ceil32(return_data.size) + 32] = _189
                mem[_132 + ceil32(return_data.size) + 64] = mem[_132 + _133 + 64]
                require mem[_132 + _133 + 96] == mem[_132 + _133 + 120 len 8]
                mem[_132 + ceil32(return_data.size) + 96] = mem[_132 + _133 + 96]
                require mem[_132 + _133 + 128] == mem[_132 + _133 + 152 len 8]
                mem[_132 + ceil32(return_data.size) + 128] = mem[_132 + _133 + 128]
                _250 = mem[_132 + ceil32(return_data.size) + 64]
                mem[mem[64] + 4] = mem[_132 + ceil32(return_data.size) + 64]
                staticcall sub_0984a010Address.0x1ee20504 with:
                        gas gas_remaining wei
                       args _250
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _257 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_257]:
                    if block.timestamp < mem[_257]:
                        revert with 0, 17
                    if s:
                        if s <= block.timestamp - mem[_257]:
                            if uint64(idx) == test266151307():
                                revert with 0, 17
                            idx = uint64(idx) + 1
                            s = s
                            continue 
                    if uint64(idx) == test266151307():
                        revert with 0, 17
                    idx = uint64(idx) + 1
                    s = block.timestamp - mem[_257]
                    continue 
        if block.timestamp < mem[_132 + ceil32(return_data.size) + 120 len 8]:
            revert with 0, 17
        if s:
            if s <= block.timestamp - mem[_132 + ceil32(return_data.size) + 120 len 8]:
                if uint64(idx) == test266151307():
                    revert with 0, 17
                idx = uint64(idx) + 1
                s = s
                continue 
        if uint64(idx) == test266151307():
            revert with 0, 17
        idx = uint64(idx) + 1
        s = block.timestamp - mem[_132 + ceil32(return_data.size) + 120 len 8]
        continue 
    return s
}

function sub_cf12b027(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[96] = 0x7a8f2f7d00000000000000000000000000000000000000000000000000000000
    mem[100] = address(arg1)
    staticcall sub_985a64beAddress.0x7a8f2f7d with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], address(arg1) << 64
    require mem[96 len 4], address(arg1) << 64 <= test266151307()
    require mem[96 len 4], address(arg1) << 64 + 127 < return_data.size + 96
    _5 = mem[mem[96 len 4], address(arg1) << 64 + 96]
    if mem[mem[96 len 4], address(arg1) << 64 + 96] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[mem[96 len 4], address(arg1) << 64 + 96]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], address(arg1) << 64 + 96]) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], address(arg1) << 64 + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + (32 * _5) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(32 * _5)] = mem[_4 + 128 len ceil32(32 * _5)]
    idx = 0
    s = 0
    while uint64(idx) < _5:
        if uint64(idx) >= mem[ceil32(return_data.size) + 96]:
            revert with 0, 50
        _128 = mem[(32 * uint64(idx)) + ceil32(return_data.size) + 128]
        mem[mem[64]] = 0xcd23806a00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _128
        staticcall sub_985a64beAddress.0xcd23806a with:
                gas gas_remaining wei
               args _128
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _132 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _133 = mem[_132]
        require mem[_132] <= test266151307()
        require return_data.size - mem[_132] >= 160
        if not bool(_132 + ceil32(return_data.size) + 160 <= test266151307()):
            revert with 0, 65
        mem[64] = _132 + ceil32(return_data.size) + 160
        _135 = mem[_132 + _133]
        require mem[_132 + _133] <= test266151307()
        require _132 + _133 + mem[_132 + _133] + 31 < _132 + return_data.size
        _136 = mem[_132 + _133 + mem[_132 + _133]]
        if mem[_132 + _133 + mem[_132 + _133]] > test266151307():
            revert with 0, 65
        if ceil32(ceil32(mem[_132 + _133 + mem[_132 + _133]])) + 161 < 160 or _132 + ceil32(return_data.size) + ceil32(ceil32(mem[_132 + _133 + mem[_132 + _133]])) + 161 > test266151307():
            revert with 0, 65
        mem[64] = _132 + ceil32(return_data.size) + ceil32(ceil32(mem[_132 + _133 + mem[_132 + _133]])) + 161
        mem[_132 + ceil32(return_data.size) + 160] = _136
        require _133 + _135 + _136 + 32 <= return_data.size
        t = 0
        while t < _136:
            mem[t + _132 + ceil32(return_data.size) + 192] = mem[t + _132 + _133 + _135 + 32]
            t = t + 32
            continue 
        if ceil32(_136) <= _136:
            mem[_132 + ceil32(return_data.size)] = _132 + ceil32(return_data.size) + 160
            _184 = mem[_132 + _133 + 32]
            require mem[_132 + _133 + 32] <= test266151307()
            require _132 + _133 + mem[_132 + _133 + 32] + 31 < _132 + return_data.size
            _186 = mem[_132 + _133 + mem[_132 + _133 + 32]]
            if mem[_132 + _133 + mem[_132 + _133 + 32]] > test266151307():
                revert with 0, 65
            _188 = mem[64]
            if mem[64] + ceil32(ceil32(mem[_132 + _133 + mem[_132 + _133 + 32]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_132 + _133 + mem[_132 + _133 + 32]])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(ceil32(mem[_132 + _133 + mem[_132 + _133 + 32]])) + 1
            mem[_188] = _186
            require _133 + _184 + _186 + 32 <= return_data.size
            t = 0
            while t < _186:
                mem[t + _188 + 32] = mem[t + _132 + _133 + _184 + 32]
                t = t + 32
                continue 
            if ceil32(_186) <= _186:
                mem[_132 + ceil32(return_data.size) + 32] = _188
                mem[_132 + ceil32(return_data.size) + 64] = mem[_132 + _133 + 64]
                require mem[_132 + _133 + 96] == mem[_132 + _133 + 120 len 8]
                mem[_132 + ceil32(return_data.size) + 96] = mem[_132 + _133 + 96]
                require mem[_132 + _133 + 128] == mem[_132 + _133 + 152 len 8]
                mem[_132 + ceil32(return_data.size) + 128] = mem[_132 + _133 + 128]
                _242 = mem[_132 + ceil32(return_data.size) + 64]
                mem[mem[64] + 4] = mem[_132 + ceil32(return_data.size) + 64]
                staticcall sub_30f3d750Address.0x1ee20504 with:
                        gas gas_remaining wei
                       args _242
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _252 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_252]:
                    if block.timestamp < mem[_252]:
                        revert with 0, 17
                    if s:
                        if s <= block.timestamp - mem[_252]:
                            if uint64(idx) == test266151307():
                                revert with 0, 17
                            idx = uint64(idx) + 1
                            s = s
                            continue 
                    if uint64(idx) == test266151307():
                        revert with 0, 17
                    idx = uint64(idx) + 1
                    s = block.timestamp - mem[_252]
                    continue 
            else:
                mem[_188 + _186 + 32] = 0
                mem[_132 + ceil32(return_data.size) + 32] = _188
                mem[_132 + ceil32(return_data.size) + 64] = mem[_132 + _133 + 64]
                require mem[_132 + _133 + 96] == mem[_132 + _133 + 120 len 8]
                mem[_132 + ceil32(return_data.size) + 96] = mem[_132 + _133 + 96]
                require mem[_132 + _133 + 128] == mem[_132 + _133 + 152 len 8]
                mem[_132 + ceil32(return_data.size) + 128] = mem[_132 + _133 + 128]
                _247 = mem[_132 + ceil32(return_data.size) + 64]
                mem[mem[64] + 4] = mem[_132 + ceil32(return_data.size) + 64]
                staticcall sub_30f3d750Address.0x1ee20504 with:
                        gas gas_remaining wei
                       args _247
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _256 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_256]:
                    if block.timestamp < mem[_256]:
                        revert with 0, 17
                    if s:
                        if s <= block.timestamp - mem[_256]:
                            if uint64(idx) == test266151307():
                                revert with 0, 17
                            idx = uint64(idx) + 1
                            s = s
                            continue 
                    if uint64(idx) == test266151307():
                        revert with 0, 17
                    idx = uint64(idx) + 1
                    s = block.timestamp - mem[_256]
                    continue 
        else:
            mem[_132 + ceil32(return_data.size) + _136 + 192] = 0
            mem[_132 + ceil32(return_data.size)] = _132 + ceil32(return_data.size) + 160
            _185 = mem[_132 + _133 + 32]
            require mem[_132 + _133 + 32] <= test266151307()
            require _132 + _133 + mem[_132 + _133 + 32] + 31 < _132 + return_data.size
            _187 = mem[_132 + _133 + mem[_132 + _133 + 32]]
            if mem[_132 + _133 + mem[_132 + _133 + 32]] > test266151307():
                revert with 0, 65
            _189 = mem[64]
            if mem[64] + ceil32(ceil32(mem[_132 + _133 + mem[_132 + _133 + 32]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_132 + _133 + mem[_132 + _133 + 32]])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(ceil32(mem[_132 + _133 + mem[_132 + _133 + 32]])) + 1
            mem[_189] = _187
            require _133 + _185 + _187 + 32 <= return_data.size
            t = 0
            while t < _187:
                mem[t + _189 + 32] = mem[t + _132 + _133 + _185 + 32]
                t = t + 32
                continue 
            if ceil32(_187) <= _187:
                mem[_132 + ceil32(return_data.size) + 32] = _189
                mem[_132 + ceil32(return_data.size) + 64] = mem[_132 + _133 + 64]
                require mem[_132 + _133 + 96] == mem[_132 + _133 + 120 len 8]
                mem[_132 + ceil32(return_data.size) + 96] = mem[_132 + _133 + 96]
                require mem[_132 + _133 + 128] == mem[_132 + _133 + 152 len 8]
                mem[_132 + ceil32(return_data.size) + 128] = mem[_132 + _133 + 128]
                _244 = mem[_132 + ceil32(return_data.size) + 64]
                mem[mem[64] + 4] = mem[_132 + ceil32(return_data.size) + 64]
                staticcall sub_30f3d750Address.0x1ee20504 with:
                        gas gas_remaining wei
                       args _244
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _254 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_254]:
                    if block.timestamp < mem[_254]:
                        revert with 0, 17
                    if s:
                        if s <= block.timestamp - mem[_254]:
                            if uint64(idx) == test266151307():
                                revert with 0, 17
                            idx = uint64(idx) + 1
                            s = s
                            continue 
                    if uint64(idx) == test266151307():
                        revert with 0, 17
                    idx = uint64(idx) + 1
                    s = block.timestamp - mem[_254]
                    continue 
            else:
                mem[_189 + _187 + 32] = 0
                mem[_132 + ceil32(return_data.size) + 32] = _189
                mem[_132 + ceil32(return_data.size) + 64] = mem[_132 + _133 + 64]
                require mem[_132 + _133 + 96] == mem[_132 + _133 + 120 len 8]
                mem[_132 + ceil32(return_data.size) + 96] = mem[_132 + _133 + 96]
                require mem[_132 + _133 + 128] == mem[_132 + _133 + 152 len 8]
                mem[_132 + ceil32(return_data.size) + 128] = mem[_132 + _133 + 128]
                _250 = mem[_132 + ceil32(return_data.size) + 64]
                mem[mem[64] + 4] = mem[_132 + ceil32(return_data.size) + 64]
                staticcall sub_30f3d750Address.0x1ee20504 with:
                        gas gas_remaining wei
                       args _250
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _257 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_257]:
                    if block.timestamp < mem[_257]:
                        revert with 0, 17
                    if s:
                        if s <= block.timestamp - mem[_257]:
                            if uint64(idx) == test266151307():
                                revert with 0, 17
                            idx = uint64(idx) + 1
                            s = s
                            continue 
                    if uint64(idx) == test266151307():
                        revert with 0, 17
                    idx = uint64(idx) + 1
                    s = block.timestamp - mem[_257]
                    continue 
        if block.timestamp < mem[_132 + ceil32(return_data.size) + 120 len 8]:
            revert with 0, 17
        if s:
            if s <= block.timestamp - mem[_132 + ceil32(return_data.size) + 120 len 8]:
                if uint64(idx) == test266151307():
                    revert with 0, 17
                idx = uint64(idx) + 1
                s = s
                continue 
        if uint64(idx) == test266151307():
            revert with 0, 17
        idx = uint64(idx) + 1
        s = block.timestamp - mem[_132 + ceil32(return_data.size) + 120 len 8]
        continue 
    return s
}

function sub_7b965823(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[96] = 0xa085fa9600000000000000000000000000000000000000000000000000000000
    mem[100] = address(arg1)
    staticcall sub_1abec10dAddress.0xa085fa96 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], address(arg1) << 64
    require mem[96 len 4], address(arg1) << 64 <= test266151307()
    require mem[96 len 4], address(arg1) << 64 + 127 < return_data.size + 96
    _5 = mem[mem[96 len 4], address(arg1) << 64 + 96]
    if mem[mem[96 len 4], address(arg1) << 64 + 96] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[mem[96 len 4], address(arg1) << 64 + 96]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], address(arg1) << 64 + 96]) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], address(arg1) << 64 + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + (32 * _5) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(32 * _5)] = mem[_4 + 128 len ceil32(32 * _5)]
    idx = 0
    s = 0
    while uint64(idx) < _5:
        if uint64(idx) >= mem[ceil32(return_data.size) + 96]:
            revert with 0, 50
        _320 = mem[(32 * uint64(idx)) + ceil32(return_data.size) + 128]
        mem[mem[64]] = 0xaa5c1f9a00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _320
        staticcall sub_1abec10dAddress.0xaa5c1f9a with:
                gas gas_remaining wei
               args _320
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _324 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _325 = mem[_324]
        require mem[_324] <= test266151307()
        require return_data.size - mem[_324] >= 160
        if not bool(_324 + ceil32(return_data.size) + 160 <= test266151307()):
            revert with 0, 65
        mem[64] = _324 + ceil32(return_data.size) + 160
        _327 = mem[_324 + _325]
        require mem[_324 + _325] <= test266151307()
        require _324 + _325 + mem[_324 + _325] + 31 < _324 + return_data.size
        _328 = mem[_324 + _325 + mem[_324 + _325]]
        if mem[_324 + _325 + mem[_324 + _325]] > test266151307():
            revert with 0, 65
        if ceil32(ceil32(mem[_324 + _325 + mem[_324 + _325]])) + 161 < 160 or _324 + ceil32(return_data.size) + ceil32(ceil32(mem[_324 + _325 + mem[_324 + _325]])) + 161 > test266151307():
            revert with 0, 65
        mem[64] = _324 + ceil32(return_data.size) + ceil32(ceil32(mem[_324 + _325 + mem[_324 + _325]])) + 161
        mem[_324 + ceil32(return_data.size) + 160] = _328
        require _325 + _327 + _328 + 32 <= return_data.size
        t = 0
        while t < _328:
            mem[t + _324 + ceil32(return_data.size) + 192] = mem[t + _324 + _325 + _327 + 32]
            t = t + 32
            continue 
        if ceil32(_328) <= _328:
            mem[_324 + ceil32(return_data.size)] = _324 + ceil32(return_data.size) + 160
            _472 = mem[_324 + _325 + 32]
            require mem[_324 + _325 + 32] <= test266151307()
            require _324 + _325 + mem[_324 + _325 + 32] + 31 < _324 + return_data.size
            _474 = mem[_324 + _325 + mem[_324 + _325 + 32]]
            if mem[_324 + _325 + mem[_324 + _325 + 32]] > test266151307():
                revert with 0, 65
            _476 = mem[64]
            if mem[64] + ceil32(ceil32(mem[_324 + _325 + mem[_324 + _325 + 32]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_324 + _325 + mem[_324 + _325 + 32]])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(ceil32(mem[_324 + _325 + mem[_324 + _325 + 32]])) + 1
            mem[_476] = _474
            require _325 + _472 + _474 + 32 <= return_data.size
            t = 0
            while t < _474:
                mem[t + _476 + 32] = mem[t + _324 + _325 + _472 + 32]
                t = t + 32
                continue 
            if ceil32(_474) <= _474:
                mem[_324 + ceil32(return_data.size) + 32] = _476
                mem[_324 + ceil32(return_data.size) + 64] = mem[_324 + _325 + 64]
                require mem[_324 + _325 + 96] == mem[_324 + _325 + 120 len 8]
                mem[_324 + ceil32(return_data.size) + 96] = mem[_324 + _325 + 96]
                require mem[_324 + _325 + 128] == mem[_324 + _325 + 152 len 8]
                mem[_324 + ceil32(return_data.size) + 128] = mem[_324 + _325 + 128]
                _626 = mem[_324 + ceil32(return_data.size) + 64]
                mem[mem[64] + 4] = mem[_324 + ceil32(return_data.size) + 64]
                staticcall sub_0984a010Address.0x1ee20504 with:
                        gas gas_remaining wei
                       args _626
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _636 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _642 = mem[_636]
                staticcall sub_0984a010Address.claimTime() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if mem[_636]:
                    _654 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _670 = mem[_654]
                    if block.timestamp < _642:
                        revert with 0, 17
                    if not mem[_654]:
                        revert with 0, 18
                    if not block.timestamp - _642 / mem[_654]:
                        if uint64(idx) == test266151307():
                            revert with 0, 17
                        idx = uint64(idx) + 1
                        s = s
                        continue 
                    staticcall sub_0984a010Address.precision() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _690 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _706 = mem[_690]
                    mem[mem[64] + 4] = address(arg1)
                    staticcall sub_0984a010Address.getReward(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _722 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if block.timestamp - _642 / _670 and mem[_722] > -1 / block.timestamp - _642 / _670:
                        revert with 0, 17
                    if not _706:
                        revert with 0, 18
                    if s > !(block.timestamp - _642 / _670 * mem[_722] / _706):
                        revert with 0, 17
                    if uint64(idx) == test266151307():
                        revert with 0, 17
                    idx = uint64(idx) + 1
                    s = s + (block.timestamp - _642 / _670 * mem[_722] / _706)
                    continue 
                _655 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _671 = mem[_655]
                _674 = mem[_324 + ceil32(return_data.size) + 96]
                if block.timestamp < mem[_324 + ceil32(return_data.size) + 120 len 8]:
                    revert with 0, 17
                if not mem[_655]:
                    revert with 0, 18
                if not block.timestamp - mem[_324 + ceil32(return_data.size) + 120 len 8] / mem[_655]:
                    if uint64(idx) == test266151307():
                        revert with 0, 17
                    idx = uint64(idx) + 1
                    s = s
                    continue 
                staticcall sub_0984a010Address.precision() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _691 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _707 = mem[_691]
                mem[mem[64] + 4] = address(arg1)
                staticcall sub_0984a010Address.getReward(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _723 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if block.timestamp - uint64(_674) / _671 and mem[_723] > -1 / block.timestamp - uint64(_674) / _671:
                    revert with 0, 17
                if not _707:
                    revert with 0, 18
                if s > !(block.timestamp - uint64(_674) / _671 * mem[_723] / _707):
                    revert with 0, 17
                if uint64(idx) == test266151307():
                    revert with 0, 17
                idx = uint64(idx) + 1
                s = s + (block.timestamp - uint64(_674) / _671 * mem[_723] / _707)
                continue 
            mem[_476 + _474 + 32] = 0
            mem[_324 + ceil32(return_data.size) + 32] = _476
            mem[_324 + ceil32(return_data.size) + 64] = mem[_324 + _325 + 64]
            require mem[_324 + _325 + 96] == mem[_324 + _325 + 120 len 8]
            mem[_324 + ceil32(return_data.size) + 96] = mem[_324 + _325 + 96]
            require mem[_324 + _325 + 128] == mem[_324 + _325 + 152 len 8]
            mem[_324 + ceil32(return_data.size) + 128] = mem[_324 + _325 + 128]
            _631 = mem[_324 + ceil32(return_data.size) + 64]
            mem[mem[64] + 4] = mem[_324 + ceil32(return_data.size) + 64]
            staticcall sub_0984a010Address.0x1ee20504 with:
                    gas gas_remaining wei
                   args _631
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _640 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _644 = mem[_640]
            staticcall sub_0984a010Address.claimTime() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if mem[_640]:
                _666 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _675 = mem[_666]
                if block.timestamp < _644:
                    revert with 0, 17
                if not mem[_666]:
                    revert with 0, 18
                if not block.timestamp - _644 / mem[_666]:
                    if uint64(idx) == test266151307():
                        revert with 0, 17
                    idx = uint64(idx) + 1
                    s = s
                    continue 
                staticcall sub_0984a010Address.precision() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _702 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _714 = mem[_702]
                mem[mem[64] + 4] = address(arg1)
                staticcall sub_0984a010Address.getReward(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _734 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if block.timestamp - _644 / _675 and mem[_734] > -1 / block.timestamp - _644 / _675:
                    revert with 0, 17
                if not _714:
                    revert with 0, 18
                if s > !(block.timestamp - _644 / _675 * mem[_734] / _714):
                    revert with 0, 17
                if uint64(idx) == test266151307():
                    revert with 0, 17
                idx = uint64(idx) + 1
                s = s + (block.timestamp - _644 / _675 * mem[_734] / _714)
                continue 
            _667 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _676 = mem[_667]
            _680 = mem[_324 + ceil32(return_data.size) + 96]
            if block.timestamp < mem[_324 + ceil32(return_data.size) + 120 len 8]:
                revert with 0, 17
            if not mem[_667]:
                revert with 0, 18
            if not block.timestamp - mem[_324 + ceil32(return_data.size) + 120 len 8] / mem[_667]:
                if uint64(idx) == test266151307():
                    revert with 0, 17
                idx = uint64(idx) + 1
                s = s
                continue 
            staticcall sub_0984a010Address.precision() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _703 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _715 = mem[_703]
            mem[mem[64] + 4] = address(arg1)
            staticcall sub_0984a010Address.getReward(address arg1) with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _735 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if block.timestamp - uint64(_680) / _676 and mem[_735] > -1 / block.timestamp - uint64(_680) / _676:
                revert with 0, 17
            if not _715:
                revert with 0, 18
            if s > !(block.timestamp - uint64(_680) / _676 * mem[_735] / _715):
                revert with 0, 17
            if uint64(idx) == test266151307():
                revert with 0, 17
            idx = uint64(idx) + 1
            s = s + (block.timestamp - uint64(_680) / _676 * mem[_735] / _715)
            continue 
        mem[_324 + ceil32(return_data.size) + _328 + 192] = 0
        mem[_324 + ceil32(return_data.size)] = _324 + ceil32(return_data.size) + 160
        _473 = mem[_324 + _325 + 32]
        require mem[_324 + _325 + 32] <= test266151307()
        require _324 + _325 + mem[_324 + _325 + 32] + 31 < _324 + return_data.size
        _475 = mem[_324 + _325 + mem[_324 + _325 + 32]]
        if mem[_324 + _325 + mem[_324 + _325 + 32]] > test266151307():
            revert with 0, 65
        _477 = mem[64]
        if mem[64] + ceil32(ceil32(mem[_324 + _325 + mem[_324 + _325 + 32]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_324 + _325 + mem[_324 + _325 + 32]])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(ceil32(mem[_324 + _325 + mem[_324 + _325 + 32]])) + 1
        mem[_477] = _475
        require _325 + _473 + _475 + 32 <= return_data.size
        t = 0
        while t < _475:
            mem[t + _477 + 32] = mem[t + _324 + _325 + _473 + 32]
            t = t + 32
            continue 
        if ceil32(_475) <= _475:
            mem[_324 + ceil32(return_data.size) + 32] = _477
            mem[_324 + ceil32(return_data.size) + 64] = mem[_324 + _325 + 64]
            require mem[_324 + _325 + 96] == mem[_324 + _325 + 120 len 8]
            mem[_324 + ceil32(return_data.size) + 96] = mem[_324 + _325 + 96]
            require mem[_324 + _325 + 128] == mem[_324 + _325 + 152 len 8]
            mem[_324 + ceil32(return_data.size) + 128] = mem[_324 + _325 + 128]
            _628 = mem[_324 + ceil32(return_data.size) + 64]
            mem[mem[64] + 4] = mem[_324 + ceil32(return_data.size) + 64]
            staticcall sub_0984a010Address.0x1ee20504 with:
                    gas gas_remaining wei
                   args _628
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _638 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _643 = mem[_638]
            staticcall sub_0984a010Address.claimTime() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if mem[_638]:
                _660 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _672 = mem[_660]
                if block.timestamp < _643:
                    revert with 0, 17
                if not mem[_660]:
                    revert with 0, 18
                if not block.timestamp - _643 / mem[_660]:
                    if uint64(idx) == test266151307():
                        revert with 0, 17
                    idx = uint64(idx) + 1
                    s = s
                    continue 
                staticcall sub_0984a010Address.precision() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _696 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _708 = mem[_696]
                mem[mem[64] + 4] = address(arg1)
                staticcall sub_0984a010Address.getReward(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _728 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if block.timestamp - _643 / _672 and mem[_728] > -1 / block.timestamp - _643 / _672:
                    revert with 0, 17
                if not _708:
                    revert with 0, 18
                if s > !(block.timestamp - _643 / _672 * mem[_728] / _708):
                    revert with 0, 17
                if uint64(idx) == test266151307():
                    revert with 0, 17
                idx = uint64(idx) + 1
                s = s + (block.timestamp - _643 / _672 * mem[_728] / _708)
                continue 
            _661 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _673 = mem[_661]
            _677 = mem[_324 + ceil32(return_data.size) + 96]
            if block.timestamp < mem[_324 + ceil32(return_data.size) + 120 len 8]:
                revert with 0, 17
            if not mem[_661]:
                revert with 0, 18
            if not block.timestamp - mem[_324 + ceil32(return_data.size) + 120 len 8] / mem[_661]:
                if uint64(idx) == test266151307():
                    revert with 0, 17
                idx = uint64(idx) + 1
                s = s
                continue 
            staticcall sub_0984a010Address.precision() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _697 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _709 = mem[_697]
            mem[mem[64] + 4] = address(arg1)
            staticcall sub_0984a010Address.getReward(address arg1) with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _729 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if block.timestamp - uint64(_677) / _673 and mem[_729] > -1 / block.timestamp - uint64(_677) / _673:
                revert with 0, 17
            if not _709:
                revert with 0, 18
            if s > !(block.timestamp - uint64(_677) / _673 * mem[_729] / _709):
                revert with 0, 17
            if uint64(idx) == test266151307():
                revert with 0, 17
            idx = uint64(idx) + 1
            s = s + (block.timestamp - uint64(_677) / _673 * mem[_729] / _709)
            continue 
        mem[_477 + _475 + 32] = 0
        mem[_324 + ceil32(return_data.size) + 32] = _477
        mem[_324 + ceil32(return_data.size) + 64] = mem[_324 + _325 + 64]
        require mem[_324 + _325 + 96] == mem[_324 + _325 + 120 len 8]
        mem[_324 + ceil32(return_data.size) + 96] = mem[_324 + _325 + 96]
        require mem[_324 + _325 + 128] == mem[_324 + _325 + 152 len 8]
        mem[_324 + ceil32(return_data.size) + 128] = mem[_324 + _325 + 128]
        _634 = mem[_324 + ceil32(return_data.size) + 64]
        mem[mem[64] + 4] = mem[_324 + ceil32(return_data.size) + 64]
        staticcall sub_0984a010Address.0x1ee20504 with:
                gas gas_remaining wei
               args _634
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _641 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _645 = mem[_641]
        staticcall sub_0984a010Address.claimTime() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if mem[_641]:
            _668 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _678 = mem[_668]
            if block.timestamp < _645:
                revert with 0, 17
            if not mem[_668]:
                revert with 0, 18
            if not block.timestamp - _645 / mem[_668]:
                if uint64(idx) == test266151307():
                    revert with 0, 17
                idx = uint64(idx) + 1
                s = s
                continue 
            staticcall sub_0984a010Address.precision() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _704 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _720 = mem[_704]
            mem[mem[64] + 4] = address(arg1)
            staticcall sub_0984a010Address.getReward(address arg1) with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _736 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if block.timestamp - _645 / _678 and mem[_736] > -1 / block.timestamp - _645 / _678:
                revert with 0, 17
            if not _720:
                revert with 0, 18
            if s > !(block.timestamp - _645 / _678 * mem[_736] / _720):
                revert with 0, 17
            if uint64(idx) == test266151307():
                revert with 0, 17
            idx = uint64(idx) + 1
            s = s + (block.timestamp - _645 / _678 * mem[_736] / _720)
            continue 
        _669 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _679 = mem[_669]
        _681 = mem[_324 + ceil32(return_data.size) + 96]
        if block.timestamp < mem[_324 + ceil32(return_data.size) + 120 len 8]:
            revert with 0, 17
        if not mem[_669]:
            revert with 0, 18
        if not block.timestamp - mem[_324 + ceil32(return_data.size) + 120 len 8] / mem[_669]:
            if uint64(idx) == test266151307():
                revert with 0, 17
            idx = uint64(idx) + 1
            s = s
            continue 
        staticcall sub_0984a010Address.precision() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _705 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _721 = mem[_705]
        mem[mem[64] + 4] = address(arg1)
        staticcall sub_0984a010Address.getReward(address arg1) with:
                gas gas_remaining wei
               args address(arg1)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _737 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if block.timestamp - uint64(_681) / _679 and mem[_737] > -1 / block.timestamp - uint64(_681) / _679:
            revert with 0, 17
        if not _721:
            revert with 0, 18
        if s > !(block.timestamp - uint64(_681) / _679 * mem[_737] / _721):
            revert with 0, 17
        if uint64(idx) == test266151307():
            revert with 0, 17
        idx = uint64(idx) + 1
        s = s + (block.timestamp - uint64(_681) / _679 * mem[_737] / _721)
        continue 
    return s
}

function sub_9c3ce39c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[96] = 0x7a8f2f7d00000000000000000000000000000000000000000000000000000000
    mem[100] = address(arg1)
    staticcall sub_985a64beAddress.0x7a8f2f7d with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], address(arg1) << 64
    require mem[96 len 4], address(arg1) << 64 <= test266151307()
    require mem[96 len 4], address(arg1) << 64 + 127 < return_data.size + 96
    _5 = mem[mem[96 len 4], address(arg1) << 64 + 96]
    if mem[mem[96 len 4], address(arg1) << 64 + 96] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[mem[96 len 4], address(arg1) << 64 + 96]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], address(arg1) << 64 + 96]) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], address(arg1) << 64 + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + (32 * _5) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(32 * _5)] = mem[_4 + 128 len ceil32(32 * _5)]
    idx = 0
    s = 0
    while uint64(idx) < _5:
        if uint64(idx) >= mem[ceil32(return_data.size) + 96]:
            revert with 0, 50
        _320 = mem[(32 * uint64(idx)) + ceil32(return_data.size) + 128]
        mem[mem[64]] = 0xcd23806a00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _320
        staticcall sub_985a64beAddress.0xcd23806a with:
                gas gas_remaining wei
               args _320
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _324 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _325 = mem[_324]
        require mem[_324] <= test266151307()
        require return_data.size - mem[_324] >= 160
        if not bool(_324 + ceil32(return_data.size) + 160 <= test266151307()):
            revert with 0, 65
        mem[64] = _324 + ceil32(return_data.size) + 160
        _327 = mem[_324 + _325]
        require mem[_324 + _325] <= test266151307()
        require _324 + _325 + mem[_324 + _325] + 31 < _324 + return_data.size
        _328 = mem[_324 + _325 + mem[_324 + _325]]
        if mem[_324 + _325 + mem[_324 + _325]] > test266151307():
            revert with 0, 65
        if ceil32(ceil32(mem[_324 + _325 + mem[_324 + _325]])) + 161 < 160 or _324 + ceil32(return_data.size) + ceil32(ceil32(mem[_324 + _325 + mem[_324 + _325]])) + 161 > test266151307():
            revert with 0, 65
        mem[64] = _324 + ceil32(return_data.size) + ceil32(ceil32(mem[_324 + _325 + mem[_324 + _325]])) + 161
        mem[_324 + ceil32(return_data.size) + 160] = _328
        require _325 + _327 + _328 + 32 <= return_data.size
        t = 0
        while t < _328:
            mem[t + _324 + ceil32(return_data.size) + 192] = mem[t + _324 + _325 + _327 + 32]
            t = t + 32
            continue 
        if ceil32(_328) <= _328:
            mem[_324 + ceil32(return_data.size)] = _324 + ceil32(return_data.size) + 160
            _472 = mem[_324 + _325 + 32]
            require mem[_324 + _325 + 32] <= test266151307()
            require _324 + _325 + mem[_324 + _325 + 32] + 31 < _324 + return_data.size
            _474 = mem[_324 + _325 + mem[_324 + _325 + 32]]
            if mem[_324 + _325 + mem[_324 + _325 + 32]] > test266151307():
                revert with 0, 65
            _476 = mem[64]
            if mem[64] + ceil32(ceil32(mem[_324 + _325 + mem[_324 + _325 + 32]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_324 + _325 + mem[_324 + _325 + 32]])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(ceil32(mem[_324 + _325 + mem[_324 + _325 + 32]])) + 1
            mem[_476] = _474
            require _325 + _472 + _474 + 32 <= return_data.size
            t = 0
            while t < _474:
                mem[t + _476 + 32] = mem[t + _324 + _325 + _472 + 32]
                t = t + 32
                continue 
            if ceil32(_474) <= _474:
                mem[_324 + ceil32(return_data.size) + 32] = _476
                mem[_324 + ceil32(return_data.size) + 64] = mem[_324 + _325 + 64]
                require mem[_324 + _325 + 96] == mem[_324 + _325 + 120 len 8]
                mem[_324 + ceil32(return_data.size) + 96] = mem[_324 + _325 + 96]
                require mem[_324 + _325 + 128] == mem[_324 + _325 + 152 len 8]
                mem[_324 + ceil32(return_data.size) + 128] = mem[_324 + _325 + 128]
                _626 = mem[_324 + ceil32(return_data.size) + 64]
                mem[mem[64] + 4] = mem[_324 + ceil32(return_data.size) + 64]
                staticcall sub_30f3d750Address.0x1ee20504 with:
                        gas gas_remaining wei
                       args _626
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _636 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _642 = mem[_636]
                staticcall sub_30f3d750Address.claimTime() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if mem[_636]:
                    _654 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _670 = mem[_654]
                    if block.timestamp < _642:
                        revert with 0, 17
                    if not mem[_654]:
                        revert with 0, 18
                    if not block.timestamp - _642 / mem[_654]:
                        if uint64(idx) == test266151307():
                            revert with 0, 17
                        idx = uint64(idx) + 1
                        s = s
                        continue 
                    staticcall sub_30f3d750Address.precision() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _690 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _706 = mem[_690]
                    mem[mem[64] + 4] = address(arg1)
                    staticcall sub_30f3d750Address.getReward(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _722 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if block.timestamp - _642 / _670 and mem[_722] > -1 / block.timestamp - _642 / _670:
                        revert with 0, 17
                    if not _706:
                        revert with 0, 18
                    if s > !(block.timestamp - _642 / _670 * mem[_722] / _706):
                        revert with 0, 17
                    if uint64(idx) == test266151307():
                        revert with 0, 17
                    idx = uint64(idx) + 1
                    s = s + (block.timestamp - _642 / _670 * mem[_722] / _706)
                    continue 
                _655 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _671 = mem[_655]
                _674 = mem[_324 + ceil32(return_data.size) + 96]
                if block.timestamp < mem[_324 + ceil32(return_data.size) + 120 len 8]:
                    revert with 0, 17
                if not mem[_655]:
                    revert with 0, 18
                if not block.timestamp - mem[_324 + ceil32(return_data.size) + 120 len 8] / mem[_655]:
                    if uint64(idx) == test266151307():
                        revert with 0, 17
                    idx = uint64(idx) + 1
                    s = s
                    continue 
                staticcall sub_30f3d750Address.precision() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _691 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _707 = mem[_691]
                mem[mem[64] + 4] = address(arg1)
                staticcall sub_30f3d750Address.getReward(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _723 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if block.timestamp - uint64(_674) / _671 and mem[_723] > -1 / block.timestamp - uint64(_674) / _671:
                    revert with 0, 17
                if not _707:
                    revert with 0, 18
                if s > !(block.timestamp - uint64(_674) / _671 * mem[_723] / _707):
                    revert with 0, 17
                if uint64(idx) == test266151307():
                    revert with 0, 17
                idx = uint64(idx) + 1
                s = s + (block.timestamp - uint64(_674) / _671 * mem[_723] / _707)
                continue 
            mem[_476 + _474 + 32] = 0
            mem[_324 + ceil32(return_data.size) + 32] = _476
            mem[_324 + ceil32(return_data.size) + 64] = mem[_324 + _325 + 64]
            require mem[_324 + _325 + 96] == mem[_324 + _325 + 120 len 8]
            mem[_324 + ceil32(return_data.size) + 96] = mem[_324 + _325 + 96]
            require mem[_324 + _325 + 128] == mem[_324 + _325 + 152 len 8]
            mem[_324 + ceil32(return_data.size) + 128] = mem[_324 + _325 + 128]
            _631 = mem[_324 + ceil32(return_data.size) + 64]
            mem[mem[64] + 4] = mem[_324 + ceil32(return_data.size) + 64]
            staticcall sub_30f3d750Address.0x1ee20504 with:
                    gas gas_remaining wei
                   args _631
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _640 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _644 = mem[_640]
            staticcall sub_30f3d750Address.claimTime() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if mem[_640]:
                _666 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _675 = mem[_666]
                if block.timestamp < _644:
                    revert with 0, 17
                if not mem[_666]:
                    revert with 0, 18
                if not block.timestamp - _644 / mem[_666]:
                    if uint64(idx) == test266151307():
                        revert with 0, 17
                    idx = uint64(idx) + 1
                    s = s
                    continue 
                staticcall sub_30f3d750Address.precision() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _702 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _714 = mem[_702]
                mem[mem[64] + 4] = address(arg1)
                staticcall sub_30f3d750Address.getReward(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _734 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if block.timestamp - _644 / _675 and mem[_734] > -1 / block.timestamp - _644 / _675:
                    revert with 0, 17
                if not _714:
                    revert with 0, 18
                if s > !(block.timestamp - _644 / _675 * mem[_734] / _714):
                    revert with 0, 17
                if uint64(idx) == test266151307():
                    revert with 0, 17
                idx = uint64(idx) + 1
                s = s + (block.timestamp - _644 / _675 * mem[_734] / _714)
                continue 
            _667 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _676 = mem[_667]
            _680 = mem[_324 + ceil32(return_data.size) + 96]
            if block.timestamp < mem[_324 + ceil32(return_data.size) + 120 len 8]:
                revert with 0, 17
            if not mem[_667]:
                revert with 0, 18
            if not block.timestamp - mem[_324 + ceil32(return_data.size) + 120 len 8] / mem[_667]:
                if uint64(idx) == test266151307():
                    revert with 0, 17
                idx = uint64(idx) + 1
                s = s
                continue 
            staticcall sub_30f3d750Address.precision() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _703 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _715 = mem[_703]
            mem[mem[64] + 4] = address(arg1)
            staticcall sub_30f3d750Address.getReward(address arg1) with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _735 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if block.timestamp - uint64(_680) / _676 and mem[_735] > -1 / block.timestamp - uint64(_680) / _676:
                revert with 0, 17
            if not _715:
                revert with 0, 18
            if s > !(block.timestamp - uint64(_680) / _676 * mem[_735] / _715):
                revert with 0, 17
            if uint64(idx) == test266151307():
                revert with 0, 17
            idx = uint64(idx) + 1
            s = s + (block.timestamp - uint64(_680) / _676 * mem[_735] / _715)
            continue 
        mem[_324 + ceil32(return_data.size) + _328 + 192] = 0
        mem[_324 + ceil32(return_data.size)] = _324 + ceil32(return_data.size) + 160
        _473 = mem[_324 + _325 + 32]
        require mem[_324 + _325 + 32] <= test266151307()
        require _324 + _325 + mem[_324 + _325 + 32] + 31 < _324 + return_data.size
        _475 = mem[_324 + _325 + mem[_324 + _325 + 32]]
        if mem[_324 + _325 + mem[_324 + _325 + 32]] > test266151307():
            revert with 0, 65
        _477 = mem[64]
        if mem[64] + ceil32(ceil32(mem[_324 + _325 + mem[_324 + _325 + 32]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_324 + _325 + mem[_324 + _325 + 32]])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(ceil32(mem[_324 + _325 + mem[_324 + _325 + 32]])) + 1
        mem[_477] = _475
        require _325 + _473 + _475 + 32 <= return_data.size
        t = 0
        while t < _475:
            mem[t + _477 + 32] = mem[t + _324 + _325 + _473 + 32]
            t = t + 32
            continue 
        if ceil32(_475) <= _475:
            mem[_324 + ceil32(return_data.size) + 32] = _477
            mem[_324 + ceil32(return_data.size) + 64] = mem[_324 + _325 + 64]
            require mem[_324 + _325 + 96] == mem[_324 + _325 + 120 len 8]
            mem[_324 + ceil32(return_data.size) + 96] = mem[_324 + _325 + 96]
            require mem[_324 + _325 + 128] == mem[_324 + _325 + 152 len 8]
            mem[_324 + ceil32(return_data.size) + 128] = mem[_324 + _325 + 128]
            _628 = mem[_324 + ceil32(return_data.size) + 64]
            mem[mem[64] + 4] = mem[_324 + ceil32(return_data.size) + 64]
            staticcall sub_30f3d750Address.0x1ee20504 with:
                    gas gas_remaining wei
                   args _628
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _638 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _643 = mem[_638]
            staticcall sub_30f3d750Address.claimTime() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if mem[_638]:
                _660 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _672 = mem[_660]
                if block.timestamp < _643:
                    revert with 0, 17
                if not mem[_660]:
                    revert with 0, 18
                if not block.timestamp - _643 / mem[_660]:
                    if uint64(idx) == test266151307():
                        revert with 0, 17
                    idx = uint64(idx) + 1
                    s = s
                    continue 
                staticcall sub_30f3d750Address.precision() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _696 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _708 = mem[_696]
                mem[mem[64] + 4] = address(arg1)
                staticcall sub_30f3d750Address.getReward(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _728 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if block.timestamp - _643 / _672 and mem[_728] > -1 / block.timestamp - _643 / _672:
                    revert with 0, 17
                if not _708:
                    revert with 0, 18
                if s > !(block.timestamp - _643 / _672 * mem[_728] / _708):
                    revert with 0, 17
                if uint64(idx) == test266151307():
                    revert with 0, 17
                idx = uint64(idx) + 1
                s = s + (block.timestamp - _643 / _672 * mem[_728] / _708)
                continue 
            _661 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _673 = mem[_661]
            _677 = mem[_324 + ceil32(return_data.size) + 96]
            if block.timestamp < mem[_324 + ceil32(return_data.size) + 120 len 8]:
                revert with 0, 17
            if not mem[_661]:
                revert with 0, 18
            if not block.timestamp - mem[_324 + ceil32(return_data.size) + 120 len 8] / mem[_661]:
                if uint64(idx) == test266151307():
                    revert with 0, 17
                idx = uint64(idx) + 1
                s = s
                continue 
            staticcall sub_30f3d750Address.precision() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _697 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _709 = mem[_697]
            mem[mem[64] + 4] = address(arg1)
            staticcall sub_30f3d750Address.getReward(address arg1) with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _729 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if block.timestamp - uint64(_677) / _673 and mem[_729] > -1 / block.timestamp - uint64(_677) / _673:
                revert with 0, 17
            if not _709:
                revert with 0, 18
            if s > !(block.timestamp - uint64(_677) / _673 * mem[_729] / _709):
                revert with 0, 17
            if uint64(idx) == test266151307():
                revert with 0, 17
            idx = uint64(idx) + 1
            s = s + (block.timestamp - uint64(_677) / _673 * mem[_729] / _709)
            continue 
        mem[_477 + _475 + 32] = 0
        mem[_324 + ceil32(return_data.size) + 32] = _477
        mem[_324 + ceil32(return_data.size) + 64] = mem[_324 + _325 + 64]
        require mem[_324 + _325 + 96] == mem[_324 + _325 + 120 len 8]
        mem[_324 + ceil32(return_data.size) + 96] = mem[_324 + _325 + 96]
        require mem[_324 + _325 + 128] == mem[_324 + _325 + 152 len 8]
        mem[_324 + ceil32(return_data.size) + 128] = mem[_324 + _325 + 128]
        _634 = mem[_324 + ceil32(return_data.size) + 64]
        mem[mem[64] + 4] = mem[_324 + ceil32(return_data.size) + 64]
        staticcall sub_30f3d750Address.0x1ee20504 with:
                gas gas_remaining wei
               args _634
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _641 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _645 = mem[_641]
        staticcall sub_30f3d750Address.claimTime() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if mem[_641]:
            _668 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _678 = mem[_668]
            if block.timestamp < _645:
                revert with 0, 17
            if not mem[_668]:
                revert with 0, 18
            if not block.timestamp - _645 / mem[_668]:
                if uint64(idx) == test266151307():
                    revert with 0, 17
                idx = uint64(idx) + 1
                s = s
                continue 
            staticcall sub_30f3d750Address.precision() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _704 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _720 = mem[_704]
            mem[mem[64] + 4] = address(arg1)
            staticcall sub_30f3d750Address.getReward(address arg1) with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _736 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if block.timestamp - _645 / _678 and mem[_736] > -1 / block.timestamp - _645 / _678:
                revert with 0, 17
            if not _720:
                revert with 0, 18
            if s > !(block.timestamp - _645 / _678 * mem[_736] / _720):
                revert with 0, 17
            if uint64(idx) == test266151307():
                revert with 0, 17
            idx = uint64(idx) + 1
            s = s + (block.timestamp - _645 / _678 * mem[_736] / _720)
            continue 
        _669 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _679 = mem[_669]
        _681 = mem[_324 + ceil32(return_data.size) + 96]
        if block.timestamp < mem[_324 + ceil32(return_data.size) + 120 len 8]:
            revert with 0, 17
        if not mem[_669]:
            revert with 0, 18
        if not block.timestamp - mem[_324 + ceil32(return_data.size) + 120 len 8] / mem[_669]:
            if uint64(idx) == test266151307():
                revert with 0, 17
            idx = uint64(idx) + 1
            s = s
            continue 
        staticcall sub_30f3d750Address.precision() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _705 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _721 = mem[_705]
        mem[mem[64] + 4] = address(arg1)
        staticcall sub_30f3d750Address.getReward(address arg1) with:
                gas gas_remaining wei
               args address(arg1)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _737 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if block.timestamp - uint64(_681) / _679 and mem[_737] > -1 / block.timestamp - uint64(_681) / _679:
            revert with 0, 17
        if not _721:
            revert with 0, 18
        if s > !(block.timestamp - uint64(_681) / _679 * mem[_737] / _721):
            revert with 0, 17
        if uint64(idx) == test266151307():
            revert with 0, 17
        idx = uint64(idx) + 1
        s = s + (block.timestamp - uint64(_681) / _679 * mem[_737] / _721)
        continue 
    return s
}

function sub_ba0a39fd(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[96] = 0x19593c2b00000000000000000000000000000000000000000000000000000000
    mem[100] = address(arg1)
    staticcall sub_9c8b4066Address.0x19593c2b with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], address(arg1) << 64
    require mem[96 len 4], address(arg1) << 64 <= test266151307()
    require mem[96 len 4], address(arg1) << 64 + 127 < return_data.size + 96
    _5 = mem[mem[96 len 4], address(arg1) << 64 + 96]
    if mem[mem[96 len 4], address(arg1) << 64 + 96] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[mem[96 len 4], address(arg1) << 64 + 96]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], address(arg1) << 64 + 96]) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], address(arg1) << 64 + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + (32 * _5) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(32 * _5)] = mem[_4 + 128 len ceil32(32 * _5)]
    idx = 0
    s = 0
    while uint64(idx) < _5:
        if uint64(idx) >= mem[ceil32(return_data.size) + 96]:
            revert with 0, 50
        _320 = mem[(32 * uint64(idx)) + ceil32(return_data.size) + 128]
        mem[mem[64]] = 0xde5fa9ce00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _320
        staticcall sub_9c8b4066Address.0xde5fa9ce with:
                gas gas_remaining wei
               args _320
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _324 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _325 = mem[_324]
        require mem[_324] <= test266151307()
        require return_data.size - mem[_324] >= 160
        if not bool(_324 + ceil32(return_data.size) + 160 <= test266151307()):
            revert with 0, 65
        mem[64] = _324 + ceil32(return_data.size) + 160
        _327 = mem[_324 + _325]
        require mem[_324 + _325] <= test266151307()
        require _324 + _325 + mem[_324 + _325] + 31 < _324 + return_data.size
        _328 = mem[_324 + _325 + mem[_324 + _325]]
        if mem[_324 + _325 + mem[_324 + _325]] > test266151307():
            revert with 0, 65
        if ceil32(ceil32(mem[_324 + _325 + mem[_324 + _325]])) + 161 < 160 or _324 + ceil32(return_data.size) + ceil32(ceil32(mem[_324 + _325 + mem[_324 + _325]])) + 161 > test266151307():
            revert with 0, 65
        mem[64] = _324 + ceil32(return_data.size) + ceil32(ceil32(mem[_324 + _325 + mem[_324 + _325]])) + 161
        mem[_324 + ceil32(return_data.size) + 160] = _328
        require _325 + _327 + _328 + 32 <= return_data.size
        t = 0
        while t < _328:
            mem[t + _324 + ceil32(return_data.size) + 192] = mem[t + _324 + _325 + _327 + 32]
            t = t + 32
            continue 
        if ceil32(_328) <= _328:
            mem[_324 + ceil32(return_data.size)] = _324 + ceil32(return_data.size) + 160
            _472 = mem[_324 + _325 + 32]
            require mem[_324 + _325 + 32] <= test266151307()
            require _324 + _325 + mem[_324 + _325 + 32] + 31 < _324 + return_data.size
            _474 = mem[_324 + _325 + mem[_324 + _325 + 32]]
            if mem[_324 + _325 + mem[_324 + _325 + 32]] > test266151307():
                revert with 0, 65
            _476 = mem[64]
            if mem[64] + ceil32(ceil32(mem[_324 + _325 + mem[_324 + _325 + 32]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_324 + _325 + mem[_324 + _325 + 32]])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(ceil32(mem[_324 + _325 + mem[_324 + _325 + 32]])) + 1
            mem[_476] = _474
            require _325 + _472 + _474 + 32 <= return_data.size
            t = 0
            while t < _474:
                mem[t + _476 + 32] = mem[t + _324 + _325 + _472 + 32]
                t = t + 32
                continue 
            if ceil32(_474) <= _474:
                mem[_324 + ceil32(return_data.size) + 32] = _476
                mem[_324 + ceil32(return_data.size) + 64] = mem[_324 + _325 + 64]
                require mem[_324 + _325 + 96] == mem[_324 + _325 + 120 len 8]
                mem[_324 + ceil32(return_data.size) + 96] = mem[_324 + _325 + 96]
                require mem[_324 + _325 + 128] == mem[_324 + _325 + 152 len 8]
                mem[_324 + ceil32(return_data.size) + 128] = mem[_324 + _325 + 128]
                _626 = mem[_324 + ceil32(return_data.size) + 64]
                mem[mem[64] + 4] = mem[_324 + ceil32(return_data.size) + 64]
                staticcall sub_aef9fa69Address.0x1ee20504 with:
                        gas gas_remaining wei
                       args _626
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _636 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _642 = mem[_636]
                staticcall sub_aef9fa69Address.claimTime() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if mem[_636]:
                    _654 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _670 = mem[_654]
                    if block.timestamp < _642:
                        revert with 0, 17
                    if not mem[_654]:
                        revert with 0, 18
                    if not block.timestamp - _642 / mem[_654]:
                        if uint64(idx) == test266151307():
                            revert with 0, 17
                        idx = uint64(idx) + 1
                        s = s
                        continue 
                    staticcall sub_aef9fa69Address.precision() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _690 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _706 = mem[_690]
                    mem[mem[64] + 4] = address(arg1)
                    staticcall sub_aef9fa69Address.getReward(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _722 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if block.timestamp - _642 / _670 and mem[_722] > -1 / block.timestamp - _642 / _670:
                        revert with 0, 17
                    if not _706:
                        revert with 0, 18
                    if s > !(block.timestamp - _642 / _670 * mem[_722] / _706):
                        revert with 0, 17
                    if uint64(idx) == test266151307():
                        revert with 0, 17
                    idx = uint64(idx) + 1
                    s = s + (block.timestamp - _642 / _670 * mem[_722] / _706)
                    continue 
                _655 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _671 = mem[_655]
                _674 = mem[_324 + ceil32(return_data.size) + 96]
                if block.timestamp < mem[_324 + ceil32(return_data.size) + 120 len 8]:
                    revert with 0, 17
                if not mem[_655]:
                    revert with 0, 18
                if not block.timestamp - mem[_324 + ceil32(return_data.size) + 120 len 8] / mem[_655]:
                    if uint64(idx) == test266151307():
                        revert with 0, 17
                    idx = uint64(idx) + 1
                    s = s
                    continue 
                staticcall sub_aef9fa69Address.precision() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _691 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _707 = mem[_691]
                mem[mem[64] + 4] = address(arg1)
                staticcall sub_aef9fa69Address.getReward(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _723 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if block.timestamp - uint64(_674) / _671 and mem[_723] > -1 / block.timestamp - uint64(_674) / _671:
                    revert with 0, 17
                if not _707:
                    revert with 0, 18
                if s > !(block.timestamp - uint64(_674) / _671 * mem[_723] / _707):
                    revert with 0, 17
                if uint64(idx) == test266151307():
                    revert with 0, 17
                idx = uint64(idx) + 1
                s = s + (block.timestamp - uint64(_674) / _671 * mem[_723] / _707)
                continue 
            mem[_476 + _474 + 32] = 0
            mem[_324 + ceil32(return_data.size) + 32] = _476
            mem[_324 + ceil32(return_data.size) + 64] = mem[_324 + _325 + 64]
            require mem[_324 + _325 + 96] == mem[_324 + _325 + 120 len 8]
            mem[_324 + ceil32(return_data.size) + 96] = mem[_324 + _325 + 96]
            require mem[_324 + _325 + 128] == mem[_324 + _325 + 152 len 8]
            mem[_324 + ceil32(return_data.size) + 128] = mem[_324 + _325 + 128]
            _631 = mem[_324 + ceil32(return_data.size) + 64]
            mem[mem[64] + 4] = mem[_324 + ceil32(return_data.size) + 64]
            staticcall sub_aef9fa69Address.0x1ee20504 with:
                    gas gas_remaining wei
                   args _631
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _640 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _644 = mem[_640]
            staticcall sub_aef9fa69Address.claimTime() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if mem[_640]:
                _666 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _675 = mem[_666]
                if block.timestamp < _644:
                    revert with 0, 17
                if not mem[_666]:
                    revert with 0, 18
                if not block.timestamp - _644 / mem[_666]:
                    if uint64(idx) == test266151307():
                        revert with 0, 17
                    idx = uint64(idx) + 1
                    s = s
                    continue 
                staticcall sub_aef9fa69Address.precision() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _702 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _714 = mem[_702]
                mem[mem[64] + 4] = address(arg1)
                staticcall sub_aef9fa69Address.getReward(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _734 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if block.timestamp - _644 / _675 and mem[_734] > -1 / block.timestamp - _644 / _675:
                    revert with 0, 17
                if not _714:
                    revert with 0, 18
                if s > !(block.timestamp - _644 / _675 * mem[_734] / _714):
                    revert with 0, 17
                if uint64(idx) == test266151307():
                    revert with 0, 17
                idx = uint64(idx) + 1
                s = s + (block.timestamp - _644 / _675 * mem[_734] / _714)
                continue 
            _667 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _676 = mem[_667]
            _680 = mem[_324 + ceil32(return_data.size) + 96]
            if block.timestamp < mem[_324 + ceil32(return_data.size) + 120 len 8]:
                revert with 0, 17
            if not mem[_667]:
                revert with 0, 18
            if not block.timestamp - mem[_324 + ceil32(return_data.size) + 120 len 8] / mem[_667]:
                if uint64(idx) == test266151307():
                    revert with 0, 17
                idx = uint64(idx) + 1
                s = s
                continue 
            staticcall sub_aef9fa69Address.precision() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _703 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _715 = mem[_703]
            mem[mem[64] + 4] = address(arg1)
            staticcall sub_aef9fa69Address.getReward(address arg1) with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _735 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if block.timestamp - uint64(_680) / _676 and mem[_735] > -1 / block.timestamp - uint64(_680) / _676:
                revert with 0, 17
            if not _715:
                revert with 0, 18
            if s > !(block.timestamp - uint64(_680) / _676 * mem[_735] / _715):
                revert with 0, 17
            if uint64(idx) == test266151307():
                revert with 0, 17
            idx = uint64(idx) + 1
            s = s + (block.timestamp - uint64(_680) / _676 * mem[_735] / _715)
            continue 
        mem[_324 + ceil32(return_data.size) + _328 + 192] = 0
        mem[_324 + ceil32(return_data.size)] = _324 + ceil32(return_data.size) + 160
        _473 = mem[_324 + _325 + 32]
        require mem[_324 + _325 + 32] <= test266151307()
        require _324 + _325 + mem[_324 + _325 + 32] + 31 < _324 + return_data.size
        _475 = mem[_324 + _325 + mem[_324 + _325 + 32]]
        if mem[_324 + _325 + mem[_324 + _325 + 32]] > test266151307():
            revert with 0, 65
        _477 = mem[64]
        if mem[64] + ceil32(ceil32(mem[_324 + _325 + mem[_324 + _325 + 32]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_324 + _325 + mem[_324 + _325 + 32]])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(ceil32(mem[_324 + _325 + mem[_324 + _325 + 32]])) + 1
        mem[_477] = _475
        require _325 + _473 + _475 + 32 <= return_data.size
        t = 0
        while t < _475:
            mem[t + _477 + 32] = mem[t + _324 + _325 + _473 + 32]
            t = t + 32
            continue 
        if ceil32(_475) <= _475:
            mem[_324 + ceil32(return_data.size) + 32] = _477
            mem[_324 + ceil32(return_data.size) + 64] = mem[_324 + _325 + 64]
            require mem[_324 + _325 + 96] == mem[_324 + _325 + 120 len 8]
            mem[_324 + ceil32(return_data.size) + 96] = mem[_324 + _325 + 96]
            require mem[_324 + _325 + 128] == mem[_324 + _325 + 152 len 8]
            mem[_324 + ceil32(return_data.size) + 128] = mem[_324 + _325 + 128]
            _628 = mem[_324 + ceil32(return_data.size) + 64]
            mem[mem[64] + 4] = mem[_324 + ceil32(return_data.size) + 64]
            staticcall sub_aef9fa69Address.0x1ee20504 with:
                    gas gas_remaining wei
                   args _628
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _638 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _643 = mem[_638]
            staticcall sub_aef9fa69Address.claimTime() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if mem[_638]:
                _660 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _672 = mem[_660]
                if block.timestamp < _643:
                    revert with 0, 17
                if not mem[_660]:
                    revert with 0, 18
                if not block.timestamp - _643 / mem[_660]:
                    if uint64(idx) == test266151307():
                        revert with 0, 17
                    idx = uint64(idx) + 1
                    s = s
                    continue 
                staticcall sub_aef9fa69Address.precision() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _696 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _708 = mem[_696]
                mem[mem[64] + 4] = address(arg1)
                staticcall sub_aef9fa69Address.getReward(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _728 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if block.timestamp - _643 / _672 and mem[_728] > -1 / block.timestamp - _643 / _672:
                    revert with 0, 17
                if not _708:
                    revert with 0, 18
                if s > !(block.timestamp - _643 / _672 * mem[_728] / _708):
                    revert with 0, 17
                if uint64(idx) == test266151307():
                    revert with 0, 17
                idx = uint64(idx) + 1
                s = s + (block.timestamp - _643 / _672 * mem[_728] / _708)
                continue 
            _661 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _673 = mem[_661]
            _677 = mem[_324 + ceil32(return_data.size) + 96]
            if block.timestamp < mem[_324 + ceil32(return_data.size) + 120 len 8]:
                revert with 0, 17
            if not mem[_661]:
                revert with 0, 18
            if not block.timestamp - mem[_324 + ceil32(return_data.size) + 120 len 8] / mem[_661]:
                if uint64(idx) == test266151307():
                    revert with 0, 17
                idx = uint64(idx) + 1
                s = s
                continue 
            staticcall sub_aef9fa69Address.precision() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _697 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _709 = mem[_697]
            mem[mem[64] + 4] = address(arg1)
            staticcall sub_aef9fa69Address.getReward(address arg1) with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _729 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if block.timestamp - uint64(_677) / _673 and mem[_729] > -1 / block.timestamp - uint64(_677) / _673:
                revert with 0, 17
            if not _709:
                revert with 0, 18
            if s > !(block.timestamp - uint64(_677) / _673 * mem[_729] / _709):
                revert with 0, 17
            if uint64(idx) == test266151307():
                revert with 0, 17
            idx = uint64(idx) + 1
            s = s + (block.timestamp - uint64(_677) / _673 * mem[_729] / _709)
            continue 
        mem[_477 + _475 + 32] = 0
        mem[_324 + ceil32(return_data.size) + 32] = _477
        mem[_324 + ceil32(return_data.size) + 64] = mem[_324 + _325 + 64]
        require mem[_324 + _325 + 96] == mem[_324 + _325 + 120 len 8]
        mem[_324 + ceil32(return_data.size) + 96] = mem[_324 + _325 + 96]
        require mem[_324 + _325 + 128] == mem[_324 + _325 + 152 len 8]
        mem[_324 + ceil32(return_data.size) + 128] = mem[_324 + _325 + 128]
        _634 = mem[_324 + ceil32(return_data.size) + 64]
        mem[mem[64] + 4] = mem[_324 + ceil32(return_data.size) + 64]
        staticcall sub_aef9fa69Address.0x1ee20504 with:
                gas gas_remaining wei
               args _634
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _641 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _645 = mem[_641]
        staticcall sub_aef9fa69Address.claimTime() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if mem[_641]:
            _668 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _678 = mem[_668]
            if block.timestamp < _645:
                revert with 0, 17
            if not mem[_668]:
                revert with 0, 18
            if not block.timestamp - _645 / mem[_668]:
                if uint64(idx) == test266151307():
                    revert with 0, 17
                idx = uint64(idx) + 1
                s = s
                continue 
            staticcall sub_aef9fa69Address.precision() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _704 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _720 = mem[_704]
            mem[mem[64] + 4] = address(arg1)
            staticcall sub_aef9fa69Address.getReward(address arg1) with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _736 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if block.timestamp - _645 / _678 and mem[_736] > -1 / block.timestamp - _645 / _678:
                revert with 0, 17
            if not _720:
                revert with 0, 18
            if s > !(block.timestamp - _645 / _678 * mem[_736] / _720):
                revert with 0, 17
            if uint64(idx) == test266151307():
                revert with 0, 17
            idx = uint64(idx) + 1
            s = s + (block.timestamp - _645 / _678 * mem[_736] / _720)
            continue 
        _669 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _679 = mem[_669]
        _681 = mem[_324 + ceil32(return_data.size) + 96]
        if block.timestamp < mem[_324 + ceil32(return_data.size) + 120 len 8]:
            revert with 0, 17
        if not mem[_669]:
            revert with 0, 18
        if not block.timestamp - mem[_324 + ceil32(return_data.size) + 120 len 8] / mem[_669]:
            if uint64(idx) == test266151307():
                revert with 0, 17
            idx = uint64(idx) + 1
            s = s
            continue 
        staticcall sub_aef9fa69Address.precision() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _705 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _721 = mem[_705]
        mem[mem[64] + 4] = address(arg1)
        staticcall sub_aef9fa69Address.getReward(address arg1) with:
                gas gas_remaining wei
               args address(arg1)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _737 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if block.timestamp - uint64(_681) / _679 and mem[_737] > -1 / block.timestamp - uint64(_681) / _679:
            revert with 0, 17
        if not _721:
            revert with 0, 18
        if s > !(block.timestamp - uint64(_681) / _679 * mem[_737] / _721):
            revert with 0, 17
        if uint64(idx) == test266151307():
            revert with 0, 17
        idx = uint64(idx) + 1
        s = s + (block.timestamp - uint64(_681) / _679 * mem[_737] / _721)
        continue 
    return s
}



}
